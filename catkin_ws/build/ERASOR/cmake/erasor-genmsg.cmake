# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "erasor: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ierasor:/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(erasor_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg" NAME_WE)
add_custom_target(_erasor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "erasor" "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg" "geometry_msgs/Quaternion:std_msgs/Header:sensor_msgs/NavSatFix:sensor_msgs/PointCloud2:sensor_msgs/PointField:geometry_msgs/Pose:sensor_msgs/CompressedImage:geometry_msgs/Point:sensor_msgs/NavSatStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(erasor
  "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erasor
)

### Generating Services

### Generating Module File
_generate_module_cpp(erasor
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erasor
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(erasor_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(erasor_generate_messages erasor_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg" NAME_WE)
add_dependencies(erasor_generate_messages_cpp _erasor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erasor_gencpp)
add_dependencies(erasor_gencpp erasor_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erasor_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(erasor
  "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erasor
)

### Generating Services

### Generating Module File
_generate_module_eus(erasor
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erasor
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(erasor_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(erasor_generate_messages erasor_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg" NAME_WE)
add_dependencies(erasor_generate_messages_eus _erasor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erasor_geneus)
add_dependencies(erasor_geneus erasor_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erasor_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(erasor
  "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erasor
)

### Generating Services

### Generating Module File
_generate_module_lisp(erasor
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erasor
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(erasor_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(erasor_generate_messages erasor_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg" NAME_WE)
add_dependencies(erasor_generate_messages_lisp _erasor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erasor_genlisp)
add_dependencies(erasor_genlisp erasor_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erasor_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(erasor
  "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erasor
)

### Generating Services

### Generating Module File
_generate_module_nodejs(erasor
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erasor
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(erasor_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(erasor_generate_messages erasor_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg" NAME_WE)
add_dependencies(erasor_generate_messages_nodejs _erasor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erasor_gennodejs)
add_dependencies(erasor_gennodejs erasor_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erasor_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(erasor
  "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erasor
)

### Generating Services

### Generating Module File
_generate_module_py(erasor
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erasor
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(erasor_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(erasor_generate_messages erasor_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/g/workspace/ERASOR_noted/catkin_ws/src/ERASOR/msg/node.msg" NAME_WE)
add_dependencies(erasor_generate_messages_py _erasor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(erasor_genpy)
add_dependencies(erasor_genpy erasor_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS erasor_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erasor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/erasor
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(erasor_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(erasor_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(erasor_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(erasor_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erasor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/erasor
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(erasor_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(erasor_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(erasor_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(erasor_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erasor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/erasor
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(erasor_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(erasor_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(erasor_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(erasor_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erasor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/erasor
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(erasor_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(erasor_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(erasor_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(erasor_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erasor)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erasor\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/erasor
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(erasor_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(erasor_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(erasor_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(erasor_generate_messages_py nav_msgs_generate_messages_py)
endif()
