class media::scripts {

  # execute 'yum update'
  exec { 'yum update':                    # exec resource named 'yum update'
  command => '/usr/bin/yum update -y'  # command this resource will run
  }

}
