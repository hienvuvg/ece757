# @Author: hien
# @Date:   2022-12-06 10:56:42
# @Last Modified by:   hien
# @Last Modified time: 2022-12-06 10:57:13

cd ~/gpgpu-sim_distribution
make clean
source setup_environment
make

rm -rf ~/test
mkdir ~/test # make directory at root
cp configs/GTX480/* ~/test/. # copy GTX480 configuration from gpgpu-sim to test

cd ~/ispass2009-benchmarks
#./setup_config.sh --cleanup
./setup_config.sh 
make -f Makefile.ispass-2009 
