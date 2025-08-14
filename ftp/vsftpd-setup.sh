sudo pacman -S filezilla
echo 'guide:'
echo 'https://www.youtube.com/watch?v=XNjOSY-wcb0'
echo 'RUN: sudo nvim /etc/vsftpd.conf'
sudo ufw allow from any to any port 20,21,10000:10100 proto tcp

echo 'd /tmp/ftp-prepare 0777 root root -' | sudo tee /etc/tmpfiles.d/ftp-prepare.conf
echo '
prepare() {
	cp "$1" /tmp/ftp-prepare/ -r
}' >> ~/.bashrc
