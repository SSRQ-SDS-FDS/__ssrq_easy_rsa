os=$(cat "${__global:?}/explorer/os")

case ${os}
in
	(alpine)
		easyrsa_bin='/usr/share/easy-rsa/easyrsa'
		vars_example='/usr/share/easy-rsa/vars.example'
		;;
	(archlinux)
		easyrsa_bin='/usr/bin/easyrsa'
		vars_example='/etc/easy-rsa/vars'
		;;
	(centos|fedora|redhat)
		easyrsa_bin='/usr/share/easy-rsa/3/easyrsa'
		vars_example='/usr/share/doc/easy-rsa/vars.example'
		;;
	(debian|devuan|ubuntu)
		easyrsa_bin='/usr/share/easy-rsa/easyrsa'
		vars_example='/usr/share/easy-rsa/vars.example'
		;;
	(freebsd)
		easyrsa_bin='/usr/local/bin/easyrsa'
		vars_example='/usr/local/share/easy-rsa/vars.example'
		;;
	(gentoo)
		easyrsa_bin='/usr/share/easy-rsa/easyrsa'
		vars_example='/usr/share/easy-rsa/vars.example'
		;;
	(netbsd)
		easyrsa_bin='/usr/pkg/bin/easyrsa'
		vars_example='/usr/pkg/share/examples/easyrsa/vars'
		;;
	(openbsd)
		easyrsa_bin='/usr/local/share/easy-rsa/easyrsa'
		vars_example='/usr/local/share/easy-rsa/vars.example'
		;;
	(openwrt)
		easyrsa_bin='/usr/bin/easyrsa'
		vars_example='/etc/easy-rsa/vars'
		;;
	(suse)
		easyrsa_bin='/usr/bin/easyrsa'
		vars_example='/etc/easy-rsa/vars.example'
		;;
	(void)
		easyrsa_bin='/etc/easyrsa/easyrsa'
		vars_example='/etc/easyrsa/vars'
		;;
	(*)
		exit 1  # fail, OS whitelist should be in manifest
		;;
esac

