import os
import subprocess
import time
from subprocess import check_output as run_cmd

import pytest
from api4jenkins import Jenkins
from pathlib import Path


@pytest.fixture(scope='session')
def host():
    container = run_cmd(['docker', 'run', '--rm', '-d',
                        '-p', '8080:8080', os.environ['DOCKER_IMAGE']])
    container = container.decode().strip()
    while b'Jenkins is fully up and running' not in run_cmd(['docker', 'logs', container], stderr=subprocess.STDOUT):
        time.sleep(1)
    passwd = run_cmd(['docker', 'exec', container,
                      'cat', '/var/jenkins_home/secrets/initialAdminPassword'])
    yield Jenkins('http://127.0.0.1:8080',
                  auth=('admin', passwd.strip().decode()))
    run_cmd(['docker', 'stop', container])


def plugins():
    here = Path(__file__).parent
    with open(here.joinpath('plugins.txt')) as fd:
        for line in fd:
            if line := line.strip():
                yield line


@pytest.mark.parametrize('plugin', plugins())
def test_plugin_installed(host, plugin):
    if ':' in plugin:
        name, version = plugin.split(':')
        p = host.plugins.get(name)
        assert p is not None, f"can't find plugin {plugin}"
        assert p.short_name == name
        assert p.version == version
    else:
        p = host.plugins.get(plugin)
        assert p is not None, f"can't find plugin {plugin}"
        assert p.short_name == plugin
