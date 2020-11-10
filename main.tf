resource digitalocean_record mx {
  for_each = var.mx_records
  domain   = data.digitalocean_domain.cde_lab_cloud.name
  type     = "MX"
  name     = "@"
  priority = each.value.priority
  value    = each.value.record
}

resource digitalocean_record cname {
  for_each = var.cname_records
  domain   = data.digitalocean_domain.cde_lab_cloud.name
  type     = "CNAME"
  name     = each.value.record
  value    = each.value.host
}

resource digitalocean_record txt {
  domain = data.digitalocean_domain.cde_lab_cloud.name
  type   = "TXT"
  name   = "@"
  value  = var.txt_record
}