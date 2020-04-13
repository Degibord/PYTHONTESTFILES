

##—features login C/C++ embedded XS extensions
##--481b219656b40633704fa28b0d08224c6c94dca6  mamedev / mame 34420.1
language: cpp
compiler:
  - gcc
  - clang
os:
  - linux
  - osx
dist: bionic
osx_image: xcode11
matrix:
  exclude:
    - os: osx
      compiler: gcc
    - os: linux
      compiler: clang
env:
  - SUBTARGET=tiny   MAME=mametiny64
script:
  - if [ $TRAVIS_OS_NAME == 'linux' ]; then
    if [ $CC == 'clang' ]; then
    make -j2 IGNORE_GIT=1 OVERRIDE_CXX="clang++-3.6" OVERRIDE_CC="clang-3.6" TOOLS=1 && ./$MAME -validate;
    else make -j4 IGNORE_GIT=1 OPTIMIZE=0 OVERRIDE_CC="gcc-9" OVERRIDE_CXX="g++-9" TOOLS=1 && ./$MAME -validate;
    fi
    elif [ $TRAVIS_OS_NAME == 'osx' ]; then
    unset LDOPTS && make -j2 OPTIMIZE=0 USE_LIBSDL=1 TOOLS=1 && ./$MAME -validate;
    fi
sudo: required
before_install:
  - "if [ ${TRAVIS_OS_NAME:-'linux'} = 'linux' ]; then sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y; fi"
  - "if [ ${TRAVIS_OS_NAME:-'linux'} = 'linux' ]; then sudo apt-get update -qq; fi"
  - "if [ ${TRAVIS_OS_NAME:-'linux'} = 'linux' ]; then sudo apt-get install -y --force-yes gcc-9 g++-9 libsdl2-dev libsdl2-ttf-dev libasound2-dev libxinerama-dev libxi-dev qt5-default; fi"
  - "if [ ${TRAVIS_OS_NAME:-'linux'} = 'osx' ]; then brew update; fi"
  - "if [ ${TRAVIS_OS_NAME:-'linux'} = 'osx' ]; then brew install sdl2 sdl2_ttf; fi"
branches:
  only:
    - master
notifications:
  email: false

##--TIMECARD DESIGN ENGINEERS OPTIMIZATION TASK SCHEDULE PYTHONTESTFILES/PROPERTIES/GITPEEP/REPOSITORY
##—.io


##—preparing html files for in-browser VM 


##—written in Ruby
##—ASC.NET
##—overshoots
##—undershoots
##—pipes with jumps to orphan pipes

##—Adjacency matrix with call up of adjacency list in pickle.blue

##—US-ASCII character encoding/ISO-IR-006
##—ITA 2
##—FIELDATA
##—Unicode
##—ISO/IEC 8859
##—KOI-8
##—OEM
##—Windows-125x


