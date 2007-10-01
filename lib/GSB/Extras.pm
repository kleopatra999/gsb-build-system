package GSB::Extras;
require Exporter;

use strict;
use warnings;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(
                    %extras_apps
                    %extras_apps_gnome
                    %extras_applets
                    %extras_applets_gnome
                    %extras_gnome_apps
                    %extras_gnome_other_apps
                    %extras_libs
                    %extras_libs_gnome
                    %extras_libs_other
                   );
our @EXPORT_OK = qw();
our $VERSION   = 0.03;


################################################################################
#
# Functions specific to this module

sub gsb_extras_libs_other_url_make {

  my $name = shift;
  my $url  = shift;
  my $ver  = shift;
  my $src  = shift;

  my $thisurl = "$url/$name$ver.$src";
  return $thisurl;

}


################################################################################
# Config Options for OTHER
#


# src/extras/libs
our %extras_libs =
  (
   'autogen'             => {
                             'ver' => '5.8.4',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/autogen/',
                             'src' => 'tar.bz2',
			    },
   'gmime'               => {
			     'ver' => '2.2.8',
			     'url' => 'http://spruce.sourceforge.net/gmime/sources/v2.2/',
			     'src' => 'tar.gz',
			    },
   'gnokii'              => {
                             'ver' => '0.6.14',
                             'url' => 'http://www.gnokii.org/download/gnokii/',
                             'src' => 'tar.bz2',
                            },
   'gnonlin'             => {
                             'ver' => '0.10.5',
                             'url' => 'http://gstreamer.freedesktop.org/src/gnonlin/',
                             'src' => 'tar.bz2',
                            },
   'gpgme'               => {
			     'ver' => '1.1.2',
			     'url' => 'http://mirrors.rootmode.com/ftp.gnupg.org/gpgme/',
			     'src' => 'tar.gz',
			    },
   'gphoto2'             => {
			     'ver' => '2.2.0',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gphoto/',
			     'src' => 'tar.gz',
			    },
   'graphviz'            => {
                             'ver' => '2.6',
                             'url' => 'http://www.graphviz.org/pub/graphviz/ARCHIVE/',
                             'src' => 'tar.gz',
                            },
   'gst-pulse'          => {
                             'ver' => '0.9.3',
                             'url' => 'http://0pointer.de/lennart/projects/gst-pulse/',
                             'src' => 'tar.gz',
                            },
   'gtkspell'            => {
			     'ver' => '2.0.11',
			     'url' => 'http://gtkspell.sourceforge.net/download/',
			     'src' => 'tar.gz',
			    },
   'Imaging'             => {
			     'ver' => '1.1.5',
			     'url' => 'http://effbot.org/downloads/',
			     'src' => 'tar.gz',
			    },
   'libao-pulse'          => {
                             'ver' => '0.9.3',
                             'url' => 'http://0pointer.de/lennart/projects/libao-pulse/',
                             'src' => 'tar.gz',
                            },
   'libburn'             => {
			     'ver' => '0.2',
			     'url' => 'http://icculus.org/burn/releases/',
			     'src' => 'tar.gz',
			    },
   'libesmtp'            => {
			     'ver' => '1.0.4',
			     'url' => 'http://www.stafford.uklinux.net/libesmtp/',
			     'src' => 'tar.bz2',
			    },
   'libetpan'            => {
                             'ver' => '0.45',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/libetpan',
                             'src' => 'tar.gz',
                            },
   'libexif-gtk'         => {
			     'ver' => '0.3.5',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/libexif/',
			     'src' => 'tar.bz2',
			    },
   'libgphoto2'          => {
			     'ver' => '2.2.1',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gphoto/',
			     'src' => 'tar.gz',
			    },
   'libgpod'              => {
                             'ver' => '0.3.2',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtkpod/',
                             'src' => 'tar.gz',
                            },
   'libmikmod'           => {
			     'ver' => '3.1.11',
			     'url' => 'http://mikmod.raphnet.net/files/',
			     'src' => 'tar.gz',
			    },
   'libexif-gtk'         => {
                             'ver' => '0.3.5',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/libexif/',
                             'src' => 'tar.bz2',
                            },
   'libnjb'              => {
                             'ver' => '2.2.5',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/libnjb/',
                             'src' => 'tar.gz',
                            },
   'libnotify'           => {
                             'ver' => '0.4.4',
                             'url' => 'http://galago-project.org/files/releases/source/libnotify/',
                             'src' => 'tar.gz',
                            },
   'libsexy'             => {
                             'ver' => '0.1.10',
                             'url' => 'http://releases.chipx86.com/libsexy/libsexy/',
                             'src' => 'tar.gz',
                            },
   'notification-daemon' => {
                             'ver' => '0.3.7',
                             'url' => 'http://galago-project.org/files/releases/source/notification-daemon/',
                             'src' => 'tar.gz',
                            },
   'python-ldap'         => {
                             'ver' => '2.0.11',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/python-ldap/',
                             'src' => 'tar.gz',
                            },
   'xmms-pulse'          => {
                             'ver' => '0.9.3',
                             'url' => 'http://0pointer.de/lennart/projects/xmms-pulse/',
                             'src' => 'tar.gz',
                            },
   'zvbi'                => {
                             'ver' => '0.2.25',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/zapping/',
                             'src' => 'tar.bz2',
                            },
  );

# src/extras/libs
our %extras_libs_other =
  (
   'gc'                  => {
			     'ver' => '6.6',
			     'url' => 'http://www.hpl.hp.com/personal/Hans_Boehm/gc/gc_source/',
			     'src' => 'tar.gz',
			    },
   'slib'                => {
                             'ver' => '2d6',
                             'url' => 'http://swissnet.ai.mit.edu/ftpdir/scm/OLD/',
                             'src' => 'tar.gz',
                            },
  );

# src/extras/libs
our %extras_libs_gnome =
  (
   'devhelp'             => '0.13',
   'gdl'                 => '0.6.1',
   'glade'               => '3.1.5',
   'gnome-build'         => '0.1.3',
   'gnome-common'        => '2.12.0',
   'loudmouth'           => '1.0.5',
  );


# src/extras/gnome-apps
our %extras_gnome_apps =
  (
   'NetworkManager'      => '0.6.5',
   'gnome-audio'         => '2.0.0',
   'gnome-commander'     => '1.2.1',
   'gnome-cups-manager'  => '0.30',
   'gnome-phone-manager' => '0.7',
   'gnome-power-manager' => '2.18.2',
   'gthumb'              => '2.10.2',
   'meld'                => '1.1.4',
   'pessulus'            => '2.16.1',
   'rhythmbox'           => '0.10.0',
   'sabayon'             => '2.12.4',
  );


# src/extras/apps
our %extras_apps =
  (
   'anjuta'              => {
			     'ver' => '2.1.1',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/anjuta/',
			     'src' => 'tar.gz',
			    },
   'avidemux'            => {
			     'ver' => '2.1.2',
			     'url' => 'http://download.berlios.de/avidemux/',
			     'src' => 'tar.gz',
			    },
   'balsa'               => {
			     'ver' => '2.3.13',
			     'url' => 'http://balsa.gnome.org/',
			     'src' => 'tar.bz2',
			    },
   'bluefish'            => {
			     'ver' => '1.0.5',
			     'url' => 'http://pkedu.fbt.eitn.wau.nl/~olivier/downloads/',
			     'src' => 'tar.bz2',
			    },
   'bmpx'                 => {
			     'ver' => '0.20.3',
			     'url' => 'http://files.beep-media-player.org/releases/0.20/',
			     'src' => 'tar.gz',
			    },
   'brasero'              => {
                             'ver' => '0.4.4',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/bonfire/',
                             'src' => 'tar.bz2',
                            },
   'drivel'              => {
			     'ver' => '2.0.3',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/drivel/',
			     'src' => 'tar.bz2',
			    },
   'dvgrab'              => {
			     'ver' => '2.0',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/kino/',
			     'src' => 'tar.gz',
			    },
   'easytag'             => {
			     'ver' => '1.99.12',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/easytag/',
			     'src' => 'tar.bz2',
			    },
   'gDesklets'           => {
			     'ver' => '0.35.3',
			     'url' => 'http://www.gdesklets.org/downloads/',
			     'src' => 'tar.bz2',
			    },
   'gaim'                => {
			     'ver' => '1.5.0',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gaim',
			     'src' => 'tar.bz2',
			    },
   'galeon'              => {
			     'ver' => '2.0.1',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/galeon',
			     'src' => 'tar.bz2',
			    },
   'gftp'                => {
			     'ver' => '2.0.18',
			     'url' => 'http://gftp.seul.org/',
			     'src' => 'tar.bz2',
			    },
   'gimp'                => {
			     'ver' => '2.2.13',
			     'url' => 'ftp://ftp.gimp.org/pub/gimp/v2.2/',
			     'src' => 'tar.bz2',
			    },
   'gnomebaker'          => {
			     'ver' => '0.6.0',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gnomebaker/',
			     'src' => 'tar.gz',
			    },
   'gparted'             => {
                             'ver' => '0.3.3',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gparted',
                             'src' => 'tar.bz2',
                            },
   'gqview'              => {
			     'ver' => '2.1.1',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gqview/',
			     'src' => 'tar.gz',
			    },
   'graveman'            => {
			     'ver' => '0.3.12-5',
			     'url' => 'http://graveman.tuxfamily.org/sources/',
			     'src' => 'tar.bz2',
			    },
   'grip'                => {
                             'ver' => '3.3.1',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/grip/',
                             'src' => 'tar.gz',
                            },
   'gslapt'             => {
			     'ver' => '0.3.17',
			     'url' => 'http://software.jaos.org/source/gslapt/',
			     'src' => 'tar.gz',
			    },
   'gtkam'               => {
			     'ver' => '0.1.14',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gphoto/',
			     'src' => 'tar.gz',
			    },
   'gtkpod'              => {
			     'ver' => '0.99.8',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtkpod/',
			     'src' => 'tar.gz',
			    },
   'kino'                => {
			     'ver' => '1.0.0',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/kino/',
			     'src' => 'tar.gz',
			    },
   'inkscape'            => {
			     'ver' => '0.44',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/inkscape/',
			     'src' => 'tar.bz2',
			    },
   'liferea'             => {
			     'ver' => '1.2.8',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/liferea/',
			     'src' => 'tar.gz',
			    },
   'pitivi'              => {
                             'ver' => '0.10.1',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/pitivi/',
                             'src' => 'tar.bz2',
                            },
   'pstoedit'            => {
			     'ver' => '3.42',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/pstoedit/',
			     'src' => 'tar.gz',
			    },
   'skencil'             => {
			     'ver' => '0.6.16',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/sketch/',
			     'src' => 'tar.gz',
			    },
   'slapt-get'           => {
			     'ver' => '0.9.11h',
			     'url' => 'http://software.jaos.org/source/slapt-get/',
			     'src' => 'tar.gz',
			    },
   'streamtuner'         => {
			     'ver' => '0.99.99',
			     'url' => 'http://savannah.nongnu.org/download/streamtuner/',
			     'src' => 'tar.gz',
			    },
   'streamripper'        => {
			     'ver' => '1.61.18',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/streamripper/',
			     'src' => 'tar.gz',
			    },
   'sylpheed'            => {
			     'ver' => '2.2.7',
			     'url' => 'http://sylpheed.good-day.net/sylpheed/v2.2/',
			     'src' => 'tar.bz2',
			    },
   'sylpheed-claws'      => {
			     'ver' => '2.4.0',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/sylpheed-claws/',
			     'src' => 'tar.bz2',
			    },
   'thoggen'             => {
			     'ver' => '0.4.2',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/thoggen/',
			     'src' => 'tar.gz',
			    },
   'xchat'               => {
			     'ver' => '2.8.0',
			     'url' => 'http://xchat.org/files/source/2.6/',
			     'src' => 'tar.bz2',
			    },
   'zapping'             => {
                             'ver' => '0.10cvs6',
                             'url' => 'http://heanet.dl.sourceforge.net/sourceforge/zapping/',
                             'src' => 'tar.bz2',
                            },
  );


# src/extras/apps
our %extras_apps_gnome =
  (
   'ghex'                => '2.8.2',
   'gossip'              => '0.24',
  );


# src/extras/applets_extensions
our %extras_applets =
  (
   'contact-lookup-applet' => {
			       'ver' => '0.14',
			       'url' => 'http://www.burtonini.com/computing/',
			       'src' => 'tar.gz',
			      },
   'istanbul'            => {
			     'ver' => '0.2.1',
			     'url' => 'http://zaheer.merali.org/',
			     'src' => 'tar.bz2',
			    },
   'lock-keys-applet'    => {
			     'ver' => '1.0',
			     'url' => 'http://www.wh-hms.uni-ulm.de/~mfcn/lock-keys-applet/packages/',
			     'src' => 'tar.gz',
			    },
   'mail-notification'   => {
			     'ver' => '3.0',
			     'url' => 'http://savannah.nongnu.org/download/mailnotify/',
			     'src' => 'tar.gz',
			    },
   'nautilus-open-terminal'  => {
			     'ver' => '0.8',
			     'url' => 'http://manny.cluecoder.org/packages/nautilus-open-terminal/',
			     'src' => 'tar.gz',
                            },
  );

# src/extras/applets_extensions
our %extras_applets_gnome =
  (
   'quick-lounge-applet'      => '2.12.1',
   'fast-user-switch-applet'  => '2.16.0',
   'deskbar-applet'           => '2.18.1',
  );


#
# End Config Options
################################################################################
