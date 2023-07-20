module "frontend" {
    for_each   = var.COMPONENTS

    source      = "./ec2"
    COMPONENT   = each.key
    APP_VERSION = each.value.APP_VERSION
}


// pushed