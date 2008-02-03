package WEC::BitTorrent::Tracker::Connection::Client;
use 5.006;
use strict;
use warnings;
use Carp;

our $VERSION = '1.000';

use base qw(WEC::BitTorrent::Tracker::Connection);

our @CARP_NOT	= qw(WEC::FieldConnection);

sub init_client {
    my __PACKAGE__ $connection = shift;

    # No multiplexing in BitTorrent::Tracker
    $connection->{host_mpx}	= 0;
    $connection->{peer_mpx}	= 0;
    $connection->{requests}	= [];
    $connection->{in_want}	= 1;
    $connection->{in_process}	= \&silence;
}
1;
