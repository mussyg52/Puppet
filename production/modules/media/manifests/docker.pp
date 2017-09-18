class media::docker {

    docker::image { 'linuxserver/plex':
    ensure => 'present'
    }

    docker::run { 'plex':
    image   => 'linuxserver/plex',
    net     => 'host',
    env     => ['TZ=Europe\London', 'PUID=1001', 'PGID=1001'],
    volumes => ['/root/docker/plex/config:/config', '/root/md0/TV:/data/tv/shows', '/root/md0/Movies:/data/movies', '/root/docker/plex/transcode:/transcode'],

    }


   docker::image { 'gitlab/gitlab-ce:latest':
   ensure   => 'present'
   }

   docker::run { 'gitlab-ce':
   image    => 'gitlab/gitlab-ce:latest',
   volumes  => ['/srv/gitlab/config:/etc/gitlab', '/srv/gitlab/logs:/var/log/gitlab', '/srv/gitlab/data:/var/opt/gitlab'],
   ports    => ['52443:443', '5222:22', '5280:80'],
   }

   file { "/srv/gitlab/config":
     ensure  => 'directory',
     recurse => 'true',
     source  => 'puppet:///modules/media/docker/gitlab/srv/gitlab/config',
  }

}
