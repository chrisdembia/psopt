sudo apt-get -y install g++ gfortran f2c libf2c2-dev libf2c2 libblas-dev libblas3gf libatlas-base-dev liblapack-dev liblapack3gf
cd $HOME
wget --continue http://www.coin-or.org/download/source/Ipopt/Ipopt-3.12.3.tgz
tar xzvf Ipopt-3.12.3.tgz
cd $HOME/Ipopt-3.12.3/ThirdParty/Metis
./get.Metis
cd $HOME/Ipopt-3.12.3/ThirdParty/Mumps
./get.Mumps
cd $HOME/Ipopt-3.12.3
./configure --enable-static
make
make install
cd $HOME
wget --continue www.coin-or.org/download/source/ADOL-C/ADOL-C-2.5.2.tgz
tar -tgz ADOL-C-2.5.2.tgz
cd $HOME/ADOL-C-2.5.2
mkdir ./ThirdParty
cd ./ThirdParty
wget --continue http://cscapes.cs.purdue.edu/download/ColPack/ColPack-1.0.9.tar.gz
tar -tgz ColPack-1.0.9.tar.gz
mv ColPack-1.0.9 ColPack
cd ColPack
./configure
make
sudo make install
sudo cp /usr/local/lib/libCol* /usr/lib
cd $HOME/ADOL-C-2.5.2
./configure --enable-sparse --with-colpack=$HOME/ADOL-C-2.5.2/ThirdParty/ColPack
make
make install
sudo cp ~/adolc base/lib64/* /usr/lib
sudo cp -r ~/adolc base/include/* /usr/include/
cd $HOME/downloads
wget --continue http://www.pdflib.com/binaries/PDFlib/705/PDFlib-Lite-7.0.5p3.tar.gz
tar zxvf PDFlib-Lite-7.0.5p3.tgz
cd PDFlib-Lite-7.0.5p3 $ ./configure
make; sudo make install
sudo ldconfig
cd $HOME/downloads
wget --continue http://sourceforge.net/projects/gnuplot/files/gnuplot/4.2.2/gnuplot-4.2.2.tar.gz/download
tar zxvf gnuplot-4.2.2.tar.gz
cd gnuplot-4.2.2
./configure with-readline=gnu -without-tutorial
make;sudo make install
cd $HOME
wget --continue https://github.com/PSOPT/psopt/archive/master.zip
unzip psopt-master.zip
cd $HOME/psopt-master
wget --continue http://faculty.cse.tamu.edu/davis/SuiteSparse/SuiteSparse-4.4.3.tar.gz
tar xzvf SuiteSparse-4.4.3.tar.gz
cd $HOME/psopt-master
wget --continue http://www.stanford.edu/group/SOL/software/lusol/lusol.zip
unzip lusol.zip

