class asennus {
        $paketit = [ "gedit",
                     "tree",
                     "ssh",
                     "apache2",
                     "curl", ]
        package {$paketit: ensure => "installed", allowcdrom => "true" }

file {"/home/xubuntu/public_html/index.html":
       content => "Hei! Terveisin moduuli.\n",
       }

     file { '/etc/apache2/mods-enabled/userdir.conf':
       ensure => 'link',
       target => '../mods-available/userdir.conf',
       notify => Service["apache2"],
       }

     file { '/etc/apache2/mods-enabled/userdir.load':
       ensure => 'link',
       target => '../mods-available/userdir.load',
       notify => Service["apache2"],
       }

     service {"apache2":
       ensure => "true",
       enable => "true",
       }
}
