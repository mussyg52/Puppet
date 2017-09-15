class media::docker {

    docker::image { 'plexinc/pms-docker':
    ensure => 'present'
    }

    docker::run { 'plex':
    image   => 'linuxserver/plex',
    net     => 'host',
    env     => ['TZ=Europe\London', 'PUID=1001', 'PGID=1001'],
    volumes => ['/root/docker/plex/config', '/root/md0/TV:/data/tv/shows', '/root/md0/Movies:/data/movies', '/root/docker/plex/transcode:/transcode'],

    }

}
