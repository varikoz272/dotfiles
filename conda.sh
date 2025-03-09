install(){
	cd ~
	git clone https://aur.archlinux.org/packages/anaconda
	cd anaconda
	makepkg -si
	echo "PATH=$PATH:/opt/anaconda/bin" >>> ~/.bashrc
	conda init
}

install()
