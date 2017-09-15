class media::nfsclient {

    class { '::nfs':
        server_enabled      => false,
        client_enabled      => true,
        nfs_v4_client       => true,
        nfs_v4_idmap_domain => 'puppetclient',
      }
       nfs::client::mount { '/root/md0':
          server            => '192.168.0.121',
          share             => 'md0',
          options_nfs       => 'rw',
      }

}
