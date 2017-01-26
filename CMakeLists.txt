cmake_minimum_required(VERSION 3.0)

project(PlateRecognition)

######################
## PROJECT SETTINGS ##
######################

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x ") # -fpermissive
#ADD_DEFINITIONS(-Wno-variadic-macros -Wno-long-long -Wall -Wextra -Winit-self -Woverloaded-virtual -Wsign-promo -Wno-unused-parameter -pedantic -Woverloaded-virtual -Wno-unknown-pragmas -Waddress-of-temporary)

## DEFINE MAIN PATHS
set(bin_path ${PROJECT_BINARY_DIR}/bin)
set(source_path ${PROJECT_SOURCE_DIR}/src)
set(test_path ${PROJECT_SOURCE_DIR}/test)
set(evaluation_path ${PROJECT_SOURCE_DIR}/evaluation)

## DEFINE BINARY DESTINE
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${bin_path})

##########################
## SOURCE MAIN PATH ##
##########################.txt
include_directories(${source_path})
add_subdirectory(${source_path})

####################
## TEST MAIN PATH ##
####################
# enable_testing()
# add_subdirectory(${test_path})
