# force_override attributes here
force_override[:platform_apache][:port] = 4280
force_override[:platform_qemu][:users] = 'jenkins'
force_override[:platform_qemu][:home] = '/var/lib/jenkins'
