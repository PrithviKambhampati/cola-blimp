
(cl:in-package :asdf)

(defsystem "weather_pkg-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "weather" :depends-on ("_package_weather"))
    (:file "_package_weather" :depends-on ("_package"))
  ))