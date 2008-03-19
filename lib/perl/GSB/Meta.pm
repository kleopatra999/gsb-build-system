package GSB::Meta;
require Exporter;

use strict;
use warnings;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%meta_packages);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;

our %meta_packages =
  (
   'gsb-accessibility'     => '2.22.0',
   'gsb-administration'    => '2.22.0',
   'gsb-compiz'            => '2.22.0',
   'gsb-complete'          => '2.22.0',
   'gsb-desktop'           => '2.22.0',
   'gsb-development'       => '2.22.0',
   'gsb-mono'              => '2.22.0',
   'gsb-multimedia'        => '2.22.0',
   'gsb-office'            => '2.22.0',
   'gsb-themes'            => '2.22.0',
  );
