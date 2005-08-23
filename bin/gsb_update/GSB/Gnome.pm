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

#    'pkgconfig'           => '0.18.0',

our %platform =
  (
   'at-spi'              => '1.6.4',
   'atk'                 => '1.10.1',
   'audiofile'           => '0.2.6',
   'esound'              => '0.2.36',
   'gail'                => '1.8.4',
   'gnome-icon-theme'    => '2.11.92',
   'gnome-keyring'       => '0.4.3',
   'gnome-mime-data'     => '2.4.2',
   'gnome-vfs'           => '2.11.90',
   'intltool'            => '0.34.1',
   'libart_lgpl'         => '2.3.17',
   'libbonobo'           => '2.10.1',
   'libbonoboui'         => '2.10.1',
   'libglade'            => '2.5.1',
   'libgnome'            => '2.11.3',
   'libgnomecanvas'      => '2.11.2',
   'libgnomecups'        => '0.2.0',
   'libgnomeprint'       => '2.11.0',
   'libgnomeprintui'     => '2.11.0',
   'libgnomeui'          => '2.11.3',
   'libxml2'             => '2.6.20',
   'libxslt'             => '1.1.14',
   'pango'               => '1.10.0',

  );

our %platform_diff_naming =
  (
   'orbit2' => {
		'ver'  => '2.12.3',
		'name' => 'ORBit2',
	       },
   'gconf'  => {
		'ver'  => '2.11.92',
		'name' => 'GConf',
	       },
   'glib2'  => {
		'ver'  => '2.8.1',
		'name' => 'glib',
	       },
   'gtk+2'  => {
		'ver'  => '2.8.0',
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
			     'ver' => '0.9.2',
			     'url' => 'http://cairographics.org/snapshots/',
			     'src' => 'tar.gz',
			    },
   'dbus'                => {
			     'url' => 'http://dbus.freedesktop.org/releases/',
			     'ver' => '0.34',
			     'src' => 'tar.gz',
			    },
   'desktop-file-utils'  => {
			     'ver' => '0.10',
			     'url' => 'http://freedesktop.org/software/desktop-file-utils/releases/',
			     'src' => 'tar.gz',
			    },
   'gamin'               => {
			     'url' => 'http://www.gnome.org/~veillard/gamin/sources/',
			     'ver' => '0.1.1',
			     'src' => 'tar.gz',
			    },
   'glitz'               => {
			     'ver' => '0.4.3',
			     'url' => 'http://cairographics.org/snapshots/',
			     'src' => 'tar.gz',
			    },
   'hal'                 => {
			     'url' => 'http://freedesktop.org/~david/dist/',
			     'ver' => '0.5.2',
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
   'libpixman'           => {
			     'ver' => '0.1.5',
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
			     'ver' => '0.18.1',
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
   'bug-buddy'              => '2.11.1',
   'control-center'         => '2.11.92',
   'dasher'                 => '3.2.16',
   'eel'                    => '2.11.92',
   'eog'                    => '2.11.92',
   'epiphany'               => '1.7.5',
   'epiphany-extensions'    => '1.7.4',
   'evolution'              => '2.3.8',
   'evolution-data-server'  => '1.3.8',
   'evolution-exchange'     => '2.3.8',
   'evolution-webcal'       => '2.4.0',
   'file-roller'            => '2.11.92',
   'gcalctool'              => '5.6.28',
   'gconf-editor'           => '2.10.0',
   'gdm'                    => '2.8.0.3',
   'gedit'                  => '2.11.92',
   'ggv'                    => '2.11.1',
   'gnome-applets'          => '2.11.92',
   'gnome-backgrounds'      => '2.10.1',
   'gnome-desktop'          => '2.11.92',
   'gnome-doc-utils'        => '0.3.2',
   'gnome-games'            => '2.11.5',
   'gnome-keyring-manager'  => '2.11.1',
   'gnome-mag'              => '0.12.1',
   'gnome-media'            => '2.11.91',
   'gnome-menus'            => '2.11.92',
   'gnome-netstatus'        => '2.11.92',
   'gnome-nettool'          => '1.3.91',
   'gnome-panel'            => '2.11.92',
   'gnome-pilot'            => '2.0.13',
   'gnome-pilot-conduits'   => '2.0.13',
   'gnome-screensaver'      => '0.0.8',
   'gnome-session'          => '2.11.91',
   'gnome-speech'           => '0.3.7',
   'gnome-spell'            => '1.0.6',
   'gnome-system-monitor'   => '2.11.92',
   'gnome-system-tools'     => '1.3.1',
   'gnome-terminal'         => '2.11.3',
   'gnome-themes'           => '2.11.91',
   'gnome-user-share'       => '0.5',
   'gnome-utils'            => '2.11.92',
   'gnome-volume-manager'   => '1.3.2',
   'gnome2-user-docs'       => '2.8.1',
   'gnomemeeting'           => '1.2.1',
   'gnopernicus'            => '0.11.4',
   'gok'                    => '1.0.5',
   'goobox'                 => '0.9.92',
   'gpdf'                   => '2.10.0',
   'gtk-engines'            => '2.6.4',
   'gtkhtml'                => '3.7.7',
   'gtksourceview'          => '1.3.91',
   'gucharmap'              => '1.4.3',
   'libcroco'               => '0.6.0',
   'libgail-gnome'          => '1.1.1',
   'libgsf'                 => '1.12.2',
   'libgtkhtml'             => '2.6.3',
   'libgtop'                => '2.11.92',
   'librsvg'                => '2.9.5',
   'libsoup'                => '2.2.6.1',
   'libwnck'                => '2.11.92',
   'libxklavier'            => '2.0',
   'metacity'               => '2.11.3',
   'nautilus'               => '2.11.92',
   'nautilus-cd-burner'     => '2.11.7',
   'nautilus-media'         => '0.8.1',
   'nautilus-sendto'        => '0.4',
   'scrollkeeper'           => '0.3.14',
   'sound-juicer'           => '2.11.92',
   'startup-notification'   => '0.8',
   'system-tools-backends'  => '1.3.1',
   'totem'                  => '1.1.4',
   'vino'                   => '2.11.92',
   'vte'                    => '0.11.15',
   'yelp'                   => '2.10.0',
   'zenity'                 => '2.11.91',
  );

our %desktop_diff_naming =
  (
   'gal2'  => {
	       'ver'  => '2.5.3',
	       'name' => 'gal',
	      },
  );

our %desktop_other =
  (
   'gnome-games-extra-data' => {
				'ver' => '2.10.0',
				'dir' => 'gnome-games',
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
   'gconfmm'           => '2.10.0',
   'glibmm'            => '2.7.3',
   'gnome-vfsmm'       => '2.10.0',
   'gtkmm'             => '2.7.4',
   'libglademm'        => '2.6.0',
   'libgnomecanvasmm'  => '2.11.1',
   'libgnomemm'        => '2.10.0',
   'libgnomeuimm'      => '2.10.0',
   'libsigc++'         => '2.0.16',
   'libxml++'          => '2.10.0',
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
   'gnome-python'         => '2.10.0',
   'gnome-python-extras'  => '2.11.4',
   'nautilus-python'      => '0.4.0',
   'pygtk'                => '2.7.3',
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
                      'ver' => '0.14',
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
			     'ver' => '1.082',
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
			     'ver' => '1.000',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Gnome2-VFS'          => {
			     'ver' => '1.022',
			     'url' => 'http://heanet.dl.sourceforge.net/sourceforge/gtk2-perl/',
			     'src' => 'tar.gz',
			    },
   'Gtk2'                => {
			     'ver' => '1.082',
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
