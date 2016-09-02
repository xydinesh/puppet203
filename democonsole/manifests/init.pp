class democonsole ($param1 = "param 1 default") {
  notify { "This is the value of the variable console_test: ${console_test}":} 
  notify {"The value of our param 1 parameter is ${param1}": }
}
