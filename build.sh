#/usr/bin/env bash
cd ..
# Remove build folder to rebuild
# Check if it exists
if [ -d build ]; then
  rm -rf build
fi

# Make a build directory, cd build
# compile it.
# build it.
# prof--it.
mkdir build && cd build \
	&& cmake .. -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release \
	&& cmake --build .

#Woops, prof-it-ing was time consuming with continuous builds.
cd exe
if [ ! -e ../../Calc ];
then
  ln -s ${PWD}/Calc ../../Calc
fi
