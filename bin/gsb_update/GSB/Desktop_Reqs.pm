package GSB::Desktop_Reqs;
require Exporter;

use strict;
use warnings;

our @ISA       = qw(Exporter);
our @EXPORT    = qw(%desktop_reqs %stupid_gnomemeeting_libs);
our @EXPORT_OK = qw();
our $VERSION   = 0.03;

################################################################################
# Desktop Requirements Config Options
#

our %desktop_reqs =
  (
   'cyrus-sasl'      => {
			 'url' => 'ftp://ftp.andrew.cmu.edu/pub/cyrus-mail/',
			 'ver' => '2.1.20',
			 'src' => 'tar.gz',
                        },
   'heimdal'         => {
			 'url' => 'ftp://ftp.sunet.se/pub/unix/admin/mirror-pdc/heimdal/src/',
			 'ver' => '0.6.4',
			 'src' => 'tar.gz',
			},
   'openldap'        => {
			 'url' => 'ftp://ftp.openldap.org/pub/OpenLDAP/openldap-release/',
			 'ver' => '2.2.26',
			 'src' => 'tgz',
			},
  );


our %stupid_gnomemeeting_libs =
  (
   'openh323'  => {
		   'url'   => 'http://www.gnomemeeting.org/admin/downloads/latest/sources/sources/',
		   'ver'   => '1.15.3',
		   'src'   => 'tar.gz',
		   'var'   => 'VERSION',
		  },
   'pwlib'     => {
		   'url'   => 'http://www.gnomemeeting.org/admin/downloads/latest/sources/sources/',
		   'ver'   => '1.8.4',
		   'src'   => 'tar.gz',
		   'var'   => 'PVERSION',
		  },
  );

#
# End Config Options
################################################################################
