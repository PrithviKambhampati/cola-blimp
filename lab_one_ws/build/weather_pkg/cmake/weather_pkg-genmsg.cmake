# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "weather_pkg: 1 messages, 0 services")

set(MSG_I_FLAGS "-Iweather_pkg:/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(weather_pkg_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg/weather.msg" NAME_WE)
add_custom_target(_weather_pkg_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "weather_pkg" "/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg/weather.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(weather_pkg
  "/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg/weather.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/weather_pkg
)

### Generating Services

### Generating Module File
_generate_module_cpp(weather_pkg
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/weather_pkg
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(weather_pkg_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(weather_pkg_generate_messages weather_pkg_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg/weather.msg" NAME_WE)
add_dependencies(weather_pkg_generate_messages_cpp _weather_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(weather_pkg_gencpp)
add_dependencies(weather_pkg_gencpp weather_pkg_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS weather_pkg_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(weather_pkg
  "/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg/weather.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/weather_pkg
)

### Generating Services

### Generating Module File
_generate_module_lisp(weather_pkg
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/weather_pkg
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(weather_pkg_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(weather_pkg_generate_messages weather_pkg_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg/weather.msg" NAME_WE)
add_dependencies(weather_pkg_generate_messages_lisp _weather_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(weather_pkg_genlisp)
add_dependencies(weather_pkg_genlisp weather_pkg_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS weather_pkg_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(weather_pkg
  "/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg/weather.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/weather_pkg
)

### Generating Services

### Generating Module File
_generate_module_py(weather_pkg
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/weather_pkg
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(weather_pkg_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(weather_pkg_generate_messages weather_pkg_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/robotics/git_work/cola-blimp/lab_one_ws/src/weather_pkg/msg/weather.msg" NAME_WE)
add_dependencies(weather_pkg_generate_messages_py _weather_pkg_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(weather_pkg_genpy)
add_dependencies(weather_pkg_genpy weather_pkg_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS weather_pkg_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/weather_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/weather_pkg
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(weather_pkg_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/weather_pkg)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/weather_pkg
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(weather_pkg_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/weather_pkg)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/weather_pkg\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/weather_pkg
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(weather_pkg_generate_messages_py std_msgs_generate_messages_py)
