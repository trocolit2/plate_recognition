#!/bin/bash

function func_reset {

  echo " RESET started"
  echo " - Erase build folder"
  rm -rf *
  echo " RESET finished"

}

function func_cmake {

  echo " CMAKE started"
  cmake ../
  echo " CMAKE finished"
}

function func_make {

  echo " MAKE started"
  make -j8
  echo " MAKE finished"
}

function func_test {

  echo " TEST started"
  make test ARGS="-V" # this instruction will change
  echo " TEST finished"
}

function func_evaluation {

  echo " EVALUANTION started"
  echo " EVALUANTION finished"
}

function func_help {

  echo " HELP started"
  echo " HELP finished"
}

#MAIN PROGRAM

if [ ! -d "build" ]; then
  echo " - Folder build does not exist"
  echo " - Create build folder"
  mkdir build
fi

cd build

while [[ $# -gt 0 ]]; do
  key="$1"

  case $key in
    -h| help)
    ARRAY[0]=func_help
    echo "help";;

    -r| reset)
    ARRAY[1]=func_reset
    echo "reset";;

    -cm | cmake)
    ARRAY[2]=func_cmake
    echo "cmake";;

    -m | make)
    ARRAY[3]=func_make
    echo "make";;

    -t| test)
    ARRAY[4]=func_test
    echo "test" ;;

    -e| evaluation)
    ARRAY[5]=func_evaluation
    echo "evaluation";;
    *)
    ;;
  esac

  shift # past argument or value
done

${ARRAY[0]}
if [ -z "${ARRAY[0]}" ]; then
  for i in `seq 1 5`; do
    ${ARRAY[i]}
  done
fi
