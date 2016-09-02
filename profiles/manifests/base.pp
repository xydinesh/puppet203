class profiles::base {
  include localusers
  include localusers::groups::finance
  include localusers::groups::wheel
  include base
  include base::params
  include base::ssh
  include ntp
}
