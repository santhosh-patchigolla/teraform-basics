module "frontend" {
    for_each   = var.COMPONENTS

    source      = "./ec2"
    COMPONENT   = each.key
    APP_VERSION = each.key.APP_VERSION
}