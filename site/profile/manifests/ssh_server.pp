class profile::ssh_server {
  package {'openssh-server':
          ensure => present,
  }
  
  service {'sshd':
          ensure => 'running',
          enable => 'true',
  }
  
  ssh_authorized_key {'root@master.puppet.vm':
          ensure => present,
          user   => 'root',
          type   => 'ssh-rsa',
          key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzzNpiHwlDRiLz6EZGkhuUMfzL7D3akgRXpW4LIiHbTwZqLavGqatSXRQxGHEer0xJrWDS7eYunv58RyLMcZCrLM9MvAcyN4vMup1KoKf75VazK6Wa6an2DMGsuGzlrndodGagNsqgISfIJpKwMt1gZK63dey6iLL/W/KJ0Wa9cvkAPQ32PYkq+IqlUfZ50Ap+IKKuQ/SuUNda7LBMAu1yZ/Mu7OdjvYY/z2MNMGaQhFoXzpVUW+7xqMaQ4ZMvi575N/yHYku5f6RiyU6mkN5a1VqZ8o7fehDc05FgcRuFsZYHn+3U+nWTh29y+ofVko07Rd7V+x49vIXPuKUg1jCF',
  }
}
          
