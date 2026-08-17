//create local share dir
mkdir -p ~/.local/share
//download blesh
curl -LO https://github.com/akinomyoga/ble.sh/releases/download/v0.4.0-devel3/ble-0.4.0-devel3.tar.xz
//extract
tar xJf ble-0.4.0-devel3.tar.xz
//move to target path
mv ble-0.4.0-devel3 ~/.local/share/blesh
//append ble.sh to the end of bashrc, then relaunch git bash
echo 'source ~/.local/share/blesh/ble.sh' >> ~/.bashrc