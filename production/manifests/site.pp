node 'puppetclient' {
    
    include media::scripts
    include media::packages
    include media::services
    include media::nfsclient
    include media::docker
    #include gcloud::auth

}
