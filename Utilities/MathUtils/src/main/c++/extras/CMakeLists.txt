file (GLOB EXTRAS *.cpp)
add_library( LibExtras SHARED ${EXTRAS} )
target_link_libraries( LibExtras LibSquare LibCubic )
