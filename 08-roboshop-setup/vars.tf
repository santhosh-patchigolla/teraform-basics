# below is the map variable where we pass the version you can get the version from the nexus

 variable "COMPONENTS" {
    default = {
        mongodb = {
            APP_VERSION = "null"
        },
        catalogue = {
            APP_VERSION = "0.0.8"
        },
        redis = {
            APP_VERSION = "null"
        },
        user = {
            APP_VERSION = "0.0.2"
        },
        cart = {
            APP_VERSION = "0.0.2"
        },
        mysql = {
            APP_VERSION = "null"
        },
        shipping = {
            APP_VERSION = "0.0.3"
        },
        rabbitmq = {
            APP_VERSION = "null"
        },
        payment = {
            APP_VERSION = "0.0.1"
        },
        frontend = {
            APP_VERSION = "0.0.2"
        }
    }
 }