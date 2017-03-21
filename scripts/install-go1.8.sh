which go && exit 1

cd /tmp
curl 'https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz' -o go1.8.linux-amd64.tar.gz
if [[ $? -ne 0 ]] ; then
    "[ERROR] Failed to download the tarball of go 1.8."
    exit -1
fi
sudo tar -C /usr/share -xzf go1.8.linux-amd64.tar.gz
sudo ln /usr/share/go/bin/go /usr/bin/go

sudo su
echo "" >> /etc/environment
echo "#Add Golang HOME to environment; added at $(date)" >> /etc/environment
echo "export GOROOT=/usr/share/go" >> /etc/environment
echo "" >> /etc/environment
exit

