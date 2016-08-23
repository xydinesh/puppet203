class base::variable {
  file { '/root/var_test.txt':
    content => $topscope,
    owner   => 'root',
    mode    => '0644',
  }

  notify {"${::operatingsystem} is your operating system":
    
  }
    
}
