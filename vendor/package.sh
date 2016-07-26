sudo apt-get update
sudo apt-get install -y libgeos-dev
wget https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xvf go1.5.3.linux-amd64.tar.gz
export GOROOT=/usr/local/go
export PATH=$GOROOT/bin:$PATH
export GOPATH=~/go
sudo apt-get install -y git
mkdir go
cd go
mkdir src
cd src
mkdir github.com
cd github.com
mkdir venicegeo
cd venicegeo
git clone https://github.com/venicegeo/pzsvc-image-catalog.git
cd pzsvc-image-catalog
git checkout filter
go get ./...
go build
mkdir lib
cp /usr/lib/libgeos* lib
tar -zcvf pzsvc-image-catalog.tar.gz pzsvc-image-catalog lib
mv pzsvc-image-catalog.tar.gz /vagrant

