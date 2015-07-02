owd=$(pwd)

(git clone https://github.com/IceDragon200/SIL -o SIL &&
cd SIL &&
mkdir -p build &&
cd build &&
cmake .. &&
make) || (cd "${owd}"; exit 1)
