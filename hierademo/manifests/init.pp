class hierademo ( $domain_name = "defualt", $api_key="default_api_key") {
  $domainname = hiera('domain_name')
  notify { "Hiera Domain name: ${domainname}": }
  notify { "Domain name: ${domain_name}": }
  notify { "API Key: ${api_key}": }
}
