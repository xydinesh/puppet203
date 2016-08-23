class base::if {
  if $::hostname =~ /^peagent(\d+)/ {
    notify { 'You have arrived at server $0': }
  }
}
