addtime="$(date)"
mkdir "ftp/upload/$addtime"
echo 'FTP: UPLOADING FILES:'
ls /tmp/ftp-prepare/*
sudo mv /tmp/ftp-prepare/* "ftp/upload/$addtime/"
echo 'FTP: UPLOADING COMPLETE'

