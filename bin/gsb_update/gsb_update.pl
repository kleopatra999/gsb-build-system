#!/usr/bin/perl

# Script that will download the latest gnome release and then
# update the various SlackBuilds in GSB.
#
# TODO:
#
#   - check if version is older or just different, then substitute new
#     version variable. If VERSION is changed change BUILD back to 1
#   - auto download themes. Get ximian-artwork rpm and extract
#   - cli args: --conf={all,gnome,requirements,gstreamer,office,other}
#               --getrelease
#               --getlocal
#   - need to account for packages (ie. avifile,openh323,pwlib,ffmpeg)
#     with both a VERSION Var and a PVERSION var so that both are updated
#   - for packages on sourceforge, change url to sf and have a function randomly download each
#     package from a different mirror
#   - new args: --dl --edit
#
# $Id$

use strict;
use warnings;

# GSB Modules
#use GSB::Edit;
use GSB::GSB;
use GSB::Gnome;
use GSB::GStreamer;
use GSB::Office;
use GSB::Other;
use GSB::Requirements;
use GSB::Desktop_Requirements;

use Cwd;

################################################################################
#
# config variables

my $gsb_root_sources = "../../src";

#
#
################################################################################

################################################################################
#
# main()

if (@ARGV != 1) {
  GSB::GSB::show_help();
  exit (0);
}

# Change directory to GSB's sources

chdir $gsb_root_sources or
  warn "Can't change dir to GSB Sources";

my $pwd = getcwd();

# download platform
foreach my $ppackage (keys %platform) {

  chdir "$pwd/gnome/platform/$ppackage";

  my $url = GSB::GSB::gsb_gnome_platform_url_make($ppackage, $platform{$ppackage});

  GSB::GSB::gsb_tarball_get($ppackage, $url);
}

#foreach local $package (keys %platform_diff_naming) {

#  chdir "$pwd/gnome/platform/$package";
#  local $url = GSB::GSB::gsb_gnome_desktop_url_make($package{name}, $package{ver});

#  GSB::GSB::gsb_tarball_get($url);

#}

#foreach local $package (keys %desktop) {

#  chdir "$pwd/gnome/desktop/$package";
#  local $url = GSB::GSB::gsb_gnome_desktop_url_make($package, $platform{$package});

#  GSB::GSB::gsb_tarball_get{$url);
#}

print "The following packages could not be downloaded:\n";
#print "$GSB::GSB::@bad_downloads\n";

# end main()
#
################################################################################
