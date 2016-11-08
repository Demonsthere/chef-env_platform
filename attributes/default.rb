# Apache
force_override[:platform_apache][:port] = 4280

# Jenkins_master
force_override[:platform_jenkins][:apache][:url] = 'apache.pitux.ovh'
force_override[:platform_jenkins][:apache][:port] = '80'
force_override[:platform_jenkins][:apache][:full_url] = 'http://apache.pitux.ovh:80'
force_override[:platform_jenkins][:master][:plugin_baseurl] = ['https://updates.jenkins-ci.org/download/plugins', 'http://apache.pitux.ovh/data/jenkins/plugins']

force_override[:platform_jenkins][:master][:plugin_list] = [
  ['analysis-core', '1.71'],
  ['ansicolor', '0.4.1'],
  ['build-flow-plugin', '0.17'],
  ['build-monitor-plugin', '1.6+build.138'],
  ['build-pipeline-plugin', '1.4.5'],
  ['claim', '2.5'],
  ['clone-workspace-scm', '0.6'],
  ['conditional-buildstep', '1.3.3'],
  ['config-file-provider', '2.7.5'],
  ['copyartifact', '1.34'],
  ['credentials', '1.22'],
  ['cvs', '2.12'],
  ['dashboard-view', '2.9.4'],
  ['database', '1.3'],
  ['description-setter', '1.9'],
  ['disk-usage', '0.25'],
  ['doclinks', '0.6'],
  ['envinject', '1.92.1'],
  ['external-monitor-job', '1.4'],
  ['extra-columns', '1.14'],
  ['git', '2.3.4'],
  ['git-client', '1.15.0'],
  ['gradle', '1.24'],
  ['greenballs', '1.14'],
  ['groovy', '1.24'],
  ['javadoc', '1.3'],
  ['jquery', '1.7.2-1'],
  ['job-dsl', '1.35'],
  ['locale', '1.2'],
  ['nodelabelparameter', '1.5.1'],
  ['monitoring', '1.59.0'],
  ['multiple-scms', '0.6'],
  ['pam-auth', '1.2'],
  ['Parameterized-Remote-Trigger', '2.1.3'],
  ['parameterized-trigger', '2.25'],
  ['plot', '1.9'],
  ['postbuild-task', '1.8'],
  ['purge-build-queue-plugin', '1.0'],
  ['rebuild', '1.25'],
  ['run-condition', '1.0'],
  ['scm-api', '0.2'],
  ['scm-sync-configuration', '0.0.8.2hybris'],
  ['shelve-project-plugin', '1.5'],
  ['ssh', '2.4'],
  ['ssh-credentials', '1.10'],
  ['ssh-slaves', '1.9'],
  ['subversion', '2.5'],
  ['swarm', '1.22'],
  ['token-macro', '1.10'],
  ['translation', '1.12'],
  ['violations', '0.7.11'],
  ['windows-slaves', '1.0'],
  ['ws-cleanup', '0.25'],
  ['xunit', '1.93']
]

# Jenkins slave
force_override[:platform_jenkins][:slave][:master_url] = 'http://jenkins.pitux.ovh:9080'
force_override[:platform_jenkins][:slave][:swarm_base_url] = 'http://apache.pitux.ovh/data/jenkins/bin'
force_override[:platform_jenkins][:slave][:name] = 'vm_slave'
force_override[:platform_jenkins][:slave][:labels] = 'swarm qemu vm'

# Qemu
force_override[:platform_qemu][:user] = 'jenkins'
force_override[:platform_qemu][:home] = '/var/lib/jenkins'
force_override[:platform_qemu][:group_users] = %w(vagrant jenkins)

# Base
force_override[:platform_base][:sources_set] = true
