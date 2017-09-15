class media::packages {

$packages = [ 'docker', 'nano', 'screen', 'gcc', 'kernel-devel', 'kernel-headers', 'sshuttle' ]

package { $packages: ensure => 'installed' }

}   
