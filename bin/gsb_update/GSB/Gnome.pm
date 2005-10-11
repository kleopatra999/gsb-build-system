package GSB::Gnome;
require Exporter;

use warnings;
use strict;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%platform
                    %platform_diff_naming
                    %platform_reqs
                    %desktop
                    %desktop_diff_naming
                    %desktop_other
                    %desktop_nongnome
                    %bindings_cxx
                    %bindings_java
                    %bindings_python
                    %bindings_python_other
                    %bindings_perl);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;

################################################################################
# Config Options for GNOME
#

our %platform =
  (
   'at-spi'              => '1.6.6',
   'atk'                 => '1.10.3',
   'audiofile'           => '0.2.6',
   'esound'              => '0.2.36',
   'gail'                => '1.8.5',
   'gnome-keyring'       => '0.4.5',
   'gnome-mime-data'     => '2.4.2',
   'gnome-vfs'           => '2.12.1.1',
   'intltool'            => '0.34.1',
   'libart_lgpl'         => '2.3.17',
   'libbonobo'           => '2.10.1',
   'libbonoboui'         => '2.10.1',
   'libglade'            => '2.5.1',
   'libgnome'            => '2.12.0.1',
   'libgnomecanvas'      => '2.12.0',
   'libgnomecups'        => '0.2.2',
   'libgnomeprint'       => '2.12.1',
   'libgnomeui'          => '2.12.0',
   'libxml2'             => '2.6.22',
   'libxslt'             => '1.1.15',
   'pango'               => '1.10.1',

  );

our %platform_diff_naming =
  (
   'orbit2' => {
		'ver'  => '2.12.4',
		'name' => 'ORBit2',
	       },
   'gconf'  => {
		'ver'  => '2.12.0',
		'name' => 'GConf',
	       },
   'glib2'  => {
		'ver'  => '2.8.3',
		'name' => 'glib',
	       },
   'gtk+2'  => {
		'ver'  => '2.8.6',
		'name' => 'gtk+',
	       },
   'libidl' => {
		'ver'  => '0.8.6',
		'name' => 'libIDL',
	       },
  );

# these are packages from freedesktop.org
our %platform_reqs =
  (
   'cairo'               => {
			     'ver' => '1.0.2',
			     'url' => 'http://cairographics.org/releases/',
			     'src' => 'tar.gz',
			    },
   'dbus'                => {
			     'url' => 'http://dbus.freedesktop.org/releases/',
			     'ver' => '0.50',
			     'src' => 'tar.gz',
			    },
   'desktop-file-utils'  => {
			     'ver' => '0.10',
			     'url' => 'http://freedesktop.org/software/desktop-file-utils/releases/',
			     'src' => 'tar.gz',
			    },
   'gamin'               => {
			     'url' => 'http://www.gnome.org/~veillard/gamin/sources/',
			     'ver' => '0.1.5',
			     'src' => 'tar.gz',
			    },
   'glitz'               => {
			     'ver' => '0.4.4',
			     'url' => 'http://cairographics.org/snapshots/',
			     'src' => 'tar.gz',
			    },
   'hal'                 => {
			     'url' => 'http://freedesktop.org/~david/dist/',
			     'ver' => '0.5.4',
			     'src' => 'tar.gz',
			    },
   'howl'                => {
			     'url' => 'http://www.porchdogsoft.com/download/',
			     'ver' => '1.0.0',
			     'src' => 'tar.gz',
			    },
   'libcap'              => {
			     'url' => 'http://www.kernel.org/pub/linux/libs/security/linux-privs/kernel-2.4/',
			     'ver' => '1.10',
			     'src' => 'tar.gz',
			    },
   'libgcrypt'           => {
                             'ver' => '1.2.1',
                             'url' => 'ftp://ftp.gnupg.org/gcrypt/libgcrypt/',
                             'src' => 'tar.gz',
                            },
   'libgpg-error'        => {
                             'ver' => '1.0',
                             'url' => 'ftp://ftp.gnupg.org/gcrypt/libgpg-error/',
                             'src' => 'tar.gz',
                            },
   'libpixman'           => {
			     'ver' => '0.1.6',
			     'url' => 'http://cairographics.org/snapshots/',
			     'src' => 'tar.gz',
			    },
   'shared-mime-info'    => {
			     'url' => 'http://freedesktop.org/~jrb/',
			     'ver' => '0.16',
			     'src' => 'tar.gz',
			    },
   'hicolor-icon-theme'  => {
			     'url' => 'http://icon-theme.freedesktop.org/releases/',
			     'ver' => '0.8',
			     'src' => 'tar.gz',
			    },
   'pkg-config'          => {
			     'url' => 'http://pkgconfig.freedesktop.org/releases/',
			     'ver' => '0.19',
			     'src' => 'tar.gz',
			    },
   'Pyrex'               => {
			     'url' => 'http://www.cosc.canterbury.ac.nz/~greg/python/Pyrex/',
			     'ver' => '0.9.3',
			     'src' => 'tar.gz',
			    },
  );

our %desktop =
  (
   'bug-buddy'              => '2.12.1',
   'control-center'         => '2.12.1',
   'dasher'                 => '3.2.18',
   'eel'                    => '2.12.1',
   'eog'                    => '2.12.1',
   'epiphany'               => '1.8.2',
   'epiphany-extensions'    => '1.8.1',
   'evolution'              => '2.4.1',
   'evolution-caldav'       => '2.3.99.2',
   'evolution-data-server'  => '1.4.1.1',
   'evolution-exchange'     => '2.4.1',
   'evolution-webcal'       => '2.4.1',
   'file-roller'            => '2.12.1',
   'gcalctool'              => '5.6.31',
   'gconf-editor'           => '2.12.0',
   'gdm'                    => '2.8.0.5',
   'gedit'                  => '2.12.1',
   'ggv'                    => '2.12.0',
   'gnome-applets'          => '2.12.1',
   'gnome-backgrounds'      => '2.12.1',
   'gnome-desktop'          => '2.12.1',
   'gnome-doc-utils'        => '0.4.2',
   'gnome-games'            => '2.12.1',
   'gnome-icon-theme'       => '2.12.1',
   'gnome-keyring-manager'  => '2.12.0',
   'gnome-mag'              => '0.12.2',
   'gnome-media'            => '2.12.0',
   'gnome-menus'            => '2.12.0',
   'gnome-netstatus'        => '2.12.0',
   'gnome-nettool'          => '1.4.1',
   'gnome-panel'            => '2.12.1',
   'gnome-pilot'            => '2.0.13',
   'gnome-pilot-conduits'   => '2.0.13',
   'gnome-screensaver'      => '0.0.15',
   'gnome-session'          => '2.12.0',
   'gnome-speech'           => '0.3.8',
   'gnome-spell'            => '1.0.6',
   'gnome-system-monitor'   => '2.12.1',
   'gnome-system-tools'     => '1.4.0',
   'gnome-terminal'         => '2.12.0',
   'gnome-themes'           => '2.12.1',
   'gnome-user-share'       => '0.5',
   'gnome-utils'            => '2.12.1',
   'gnome-volume-manager'   => '1.4.0',
   'gnome2-user-docs'       => '2.8.1',
   'gnomemeeting'           => '1.2.2',
   'gnopernicus'            => '0.11.7',
   'gok'                    => '1.0.5',
   'goobox'                 => '0.9.92',
   'gpdf'                   => '2.10.0',
   'gtk-engines'            => '2.6.5',
   'gtkhtml'                => '3.8.1',
   'gtksourceview'          => '1.4.2',
   'gucharmap'              => '1.4.4',
   'libcroco'               => '0.6.0',
   'libgail-gnome'          => '1.1.1',
   'libgnomeprintui'        => '2.12.1',
   'libgsf'                 => '1.13.2',
   'libgtkhtml'             => '2.6.3',
   'libgtop'                => '2.12.0',
   'librsvg'                => '2.12.7',
   'libsoup'                => '2.2.6.1',
   'libwnck'                => '2.12.1',
   'libxklavier'            => '2.0',
   'metacity'               => '2.12.1',
   'nautilus'               => '2.12.1',
   'nautilus-cd-burner'     => '2.12.1',
   'nautilus-media'         => '0.8.1',
   'nautilus-sendto'        => '0.4',
   'scrollkeeper'           => '0.3.14',
   'sound-juicer'           => '2.12.2',
   'startup-notification'   => '0.8',
   'system-tools-backends'  => '1.4.0',
   'totem'                  => '1.2.0',
   'vino'                   => '2.12.0',
   'vte'                    => '0.11.15',
   'yelp'                   => '2.12.1',
   'zenity'                 => '2.12.1',
   );

our %desktop_diff_naming =
  (
   'gal2'  => {
              'ver'  => '2.5.3',
	             'name' => 'gal',
	  },
   );

our %desktop_nongnome =
  (
      'libgnomesu'   => {
			 'ver' => '1.0.0',
			 'url' => 'http://members.chello.nl/~h.lai/libgnomesu/',
			 'src' => 'tar.gz',
		        },
      'xscreensaver' => {
	                 'ver' => '4.22',
			 'url' => 'http://www.jwz.org/xscreensaver/',
			 'src' => 'tar.gz',
			},
  );

our %bindings_cxx =
  (
   'bakery'            => '2.3.15',
   'gconfmm'           => '2.12.0',
   'glibmm'            => '2.8.0',
   'gnome-vfsmm'       => '2.12.0',
   'gtkmm'             => '2.8.0',
   'libglademm'        => '2.6.1',
   'libgnomecanvasmm'  => '2.12.0',
   'libgnomemm'        => '2.12.0',
   'libgnomeuimm'      => '2.12.0',
   'libsigc++'         => '2.0.16',
   'libxml++'          => '2.12.0',
  );

#    'libgtkhtml-java'  => '2.6.0',
#    'libgtkmozembed-java' => '1.7.0',
#    'libvte-java' => '0.11.11',
our %bindings_java =
  (
   'libgconf-java'    => '2.11.4',
   'libglade-java'    => '2.11.4',
   'libgnome-java'    => '2.11.4',
   'libgtk-java'      => '2.7.0',

  );

our %bindings_python =
  (
   'gnome-python'         => '2.12.1',
   'gnome-python-extras'  => '2.12.0',
   'nautilus-python'      => '0.4.0',
   'pygtk'                => '2.8.2',
   'pyorbit'              => '2.0.1',
   'pyphany'              => '0.1.4',
  );

our %bindings_python_other =
    (
     'gst-python' => {
	              'ver' => '0.8.2',
		      'url' => 'http://gstreamer.freedesktop.org/src/gst-python/',
		      'src' => 'tar.bz2',
		     },
     'pyxdg'      => {
                      'ver' => '0.15',
		      'url' => 'http://www.freedesktop.org/~lanius/',
		      'src' => 'tar.gz',
		     },
     );


our %bindings_perl =
  (
   'ExtUtils-Depends'    => {
			     'ver' => '0.205',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'ExtUtils-PkgConfig'  => {
			     'ver' => '1.07',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Glib'                => {
			     'ver' => '1.093',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Gnome2'              => {
			     'ver' => '1.023',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Gnome2-Canvas'       => {
			     'ver' => '1.002',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Gnome2-GConf'        => {
			     'ver' => '1.013',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Gnome2-VFS'          => {
			     'ver' => '1.031',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Gtk2'                => {
			     'ver' => '1.093',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Gtk2-GladeXML'       => {
			     'ver' => '1.005',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
  );


#
# End Config Options
################################################################################
