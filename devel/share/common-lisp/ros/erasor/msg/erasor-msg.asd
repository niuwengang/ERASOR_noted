
(cl:in-package :asdf)

(defsystem "erasor-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "node" :depends-on ("_package_node"))
    (:file "_package_node" :depends-on ("_package"))
    (:file "nodes" :depends-on ("_package_nodes"))
    (:file "_package_nodes" :depends-on ("_package"))
  ))