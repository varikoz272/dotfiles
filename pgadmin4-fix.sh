sudo rm /usr/pgadmin4/venv/bin/python3 
sudo ln -s "$(which python)" /usr/pgadmin4/venv/bin/python3
sudo pacman -S python-flask
