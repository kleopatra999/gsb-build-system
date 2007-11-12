package GSB::Desktop;
require Exporter;

use warnings;
use strict;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%desktop
                    %desktop_diff_naming
                    %desktop_nongnome);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;

################################################################################
# Config Options for GNOME
#

our %desktop =
  (
   'at-spi'                 => '1.20.1',
   'bug-buddy'              => '2.20.1',
   'eel'                    => '2.20.0',
   'evolution-data-server'  => '1.12.1',
   'gconf-editor'           => '2.20.0',
   'gnome-applets'          => '2.20.0',
   'gnome-control-center'   => '2.20.1',
   'gnome-desktop'          => '2.20.1',
   'gnome-doc-utils'        => '0.12.0',
   'gnome-keyring-manager'  => '2.20.0',
   'gnome-menus'            => '2.20.1',
   'gnome-panel'            => '2.20.1',
   'gnome-python'           => '2.20.0',
   'gnome-session'          => '2.20.1',
   'gnome-terminal'         => '2.18.2',
   'gnome-themes'           => '2.20.1',
   'gtkhtml'                => '3.16.1',
   'libgnomecups'           => '0.2.2',
   'libgnomekbd'            => '2.20.0',
   'libgnomeprint'          => '2.18.2',
   'libgnomeprintui'        => '2.18.1',
   'libgtop'                => '2.20.0',
   'libwnck'                => '2.20.1',
   'libxklavier'            => '3.3',
   'metacity'               => '2.20.0',
   'nautilus'               => '2.20.0',
   'nautilus-cd-burner'     => '2.20.0',
   );

our %desktop_nongnome =
  (
   'gnome-mount'  => { 
                      'ver' => '0.6',
                      'url' => 'http://people.freedesktop.org/~david/dist/',
                      'src' => 'tar.gz',
                     },
   'gstreamer'   => {
                           'ver' => '0.10.14',
                           'url' => 'http://gstreamer.freedesktop.org/src/gstreamer/',
                           'src' => 'tar.bz2',
                          },
   'gst-fluendo-mp3'  => {
			   'ver' => '0.10.6',
			   'url' => 'http://core.fluendo.com/gstreamer/src/gst-fluendo-mp3/',
			   'src' => 'tar.bz2',
			  },
   'gst-plugins-base'  => {
                           'ver' => '0.10.14',
                           'url' => 'http://gstreamer.freedesktop.org/src/gst-plugins-base/',
                           'src' => 'tar.bz2',
                          },
   'gst-plugins-good'  => {
                           'ver' => '0.10.6',
                           'url' => 'http://gstreamer.freedesktop.org/src/gst-plugins-good/',
                           'src' => 'tar.bz2',
                          },
   'gst-plugins-ugly'  => {
                           'ver' => '0.10.6',
                           'url' => 'http://gstreamer.freedesktop.org/src/gst-plugins-ugly/',
                           'src' => 'tar.bz2',
                          },
   'tango-icon-theme'  => {
                           'ver' => '0.8.1',
                           'url' => 'http://tango-project.org/releases/',
                           'src' => 'tar.gz',
                          },
  );

our %desktop_diff_naming =
  (
   'gtksourceview2'  => {
                         'ver'  => '2.0.1',
                         'name' => 'gtksourceview',
                        },
   );


#
# End Config Options
################################################################################