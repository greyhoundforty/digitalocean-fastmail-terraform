
variable domain {
  default = ""
}

variable mx_records {
  description = "Map of project names to configuration."
  type        = map
  default = {
    1 = {
      record   = "in1-smtp.messagingengine.com.",
      priority = 10
    },
    2 = {
      record   = "in2-smtp.messagingengine.com.",
      priority = 20
    }
  }
}

variable cname_records {
  description = "Map of project names to configuration."
  type        = map
  default = {
    1 = {
      record = "fm1._domainkey"
      host   = "fm1.cde-lab.cloud.dkim.fmhosted.com.",
    },
    2 = {
      record = "fm2._domainkey",
      host   = "fm2.cde-lab.cloud.dkim.fmhosted.com."
    },
    3 = {
      record = "fm3._domainkey",
      host   = "fm3.cde-lab.cloud.dkim.fmhosted.com."
    }
  }
}

variable txt_record {
  default = "v=spf1 include:spf.messagingengine.com ?all"
}

variable do_token {}