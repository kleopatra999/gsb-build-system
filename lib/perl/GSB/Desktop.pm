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
   'at-spi'                 => '1.24.1',
   'bug-buddy'              => '2.24.2',
   'eel'                    => '2.24.1',
   'evolution-data-server'  => '2.24.2',
   'gconf-editor'           => '2.24.1',
   'gnome-applets'          => '2.24.2',
   'gnome-backgrounds'      => '2.24.0',
   'gnome-control-center'   => '2.24.0.1',
   'gnome-desktop'          => '2.24.2',
   'gnome-menus'            => '2.24.2',
   'gnome-media'            => '2.24.0.1',
   'gnome-audio'            => '2.22.2',
   'gnome-panel'            => '2.24.2',
   'gnome-python'           => '2.22.3',
   'gnome-python-desktop'   => '2.24.1',
   'gnome-session'          => '2.24.2',
   'gnome-settings-daemon'  => '2.24.1',
   'gnome-terminal'         => '2.24.2',
   'gnome-themes'           => '2.24.1',
   'gswitchit_plugins'      => '0.9',
   'gvfs'                   => '1.0.3',
   'gtkhtml'                => '3.24.2',
   'gtksourceview'          => '1.8.5',
   'libepc'                 => '0.3.8',
   'libgnomecups'           => '0.2.3',
   'libgnomekbd'            => '2.24.0',
   'libgnomeprint'          => '2.18.5',
   'libgnomeprintui'        => '2.18.3',
   'libgtop'                => '2.24.0',
   'libgweather'            => '2.24.2',
   'libwnck'                => '2.24.2',
   'libxklavier'            => '3.8',
   'metacity'               => '2.24.0',
   'nautilus'               => '2.24.2',
   'nautilus-cd-burner'     => '2.24.0',
   'nautilus-open-terminal' => '0.9',
   'nautilus-image-converter' => '0.3.0',
   'totem-pl-parser'         => '2.24.3',
   );

our %desktop_nongnome =
  (
   'gnome-mount'   => {
                           'ver' => '0.8',
                           'url' => 'http://hal.freedesktop.org/releases',
                           'src' => 'tar.gz',
                          },
   'gst-fluendo-mp3'  => {
			   'ver' => '0.10.7',
			   'url' => 'http://core.fluendo.com/gstreamer/src/gst-fluendo-mp3',
			   'src' => 'tar.bz2',
			  },
   'gst-plugins-base'  => {
                           'ver' => '0.10.21',
                           'url' => 'http://gstreamer.freedesktop.org/src/gst-plugins-base',
                           'src' => 'tar.bz2',
                          },
   'gst-plugins-good'  => {
                           'ver' => '0.10.11',
                           'url' => 'http://gstreamer.freedesktop.org/src/gst-plugins-good',
                           'src' => 'tar.bz2',
                          },
   'gst-plugins-ugly'  => {
                           'ver' => '0.10.9',
                           'url' => 'http://gstreamer.freedesktop.org/src/gst-plugins-ugly',
                           'src' => 'tar.bz2',
                          },
   'gst-plugins-bad'  => {
                           'ver' => '0.10.9',
                           'url' => 'http://gstreamer.freedesktop.org/src/gst-plugins-bad',
                           'src' => 'tar.bz2',
                          },
   'libcanberra'  => {
                           'ver' => '0.10',
                           'url' => 'http://0pointer.de/lennart/projects/libcanberra',
                           'src' => 'tar.gz',
                          },
   'gst-ffmpeg'        => {
			   'ver' => '0.10.4',
			   'url' => 'http://gstreamer.freedesktop.org/src/gst-ffmpeg',
			   'src' => 'tar.bz2',
			  },
   'gst-plugins-bad'   => {
                           'ver' => '0.10.8',
                           'url' => 'http://gstreamer.freedesktop.org/src/gst-plugins-bad',
                           'src' => 'tar.bz2',
		       },
   'gst-python' => {
	              'ver' => '0.10.12',
		      'url' => 'http://gstreamer.freedesktop.org/src/gst-python',
		      'src' => 'tar.bz2',
		     },
   'notification-daemon'           => {
                             'ver' => '0.4.0',
                             'url' => 'http://www.galago-project.org/files/releases/source/notification-daemon',
                             'src' => 'tar.bz2',
                            },
   'obex-data-server'           => {
                             'ver' => '0.3.4',
                             'url' => 'http://tadas.dailyda.com/software',
                             'src' => 'tar.gz',
                            },
  );

our %desktop_diff_naming =
  (
   'gtksourceview2'  => {
                         'ver'  => '2.4.1',
                         'name' => 'gtksourceview',
                        },
   );


#
# End Config Options
################################################################################
