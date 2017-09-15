class media::services {

    $running_services = [ 'docker' ]
    $stopped_services = [ 'firewalld' ]

    service { $stopped_services: ensure => 'stopped' }
    
    service { $running_services: ensure => 'running' }

}   
