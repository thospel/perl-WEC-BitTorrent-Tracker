package WEC::BitTorrent::Tracker::Connection::Server;
use 5.006;
use strict;
use warnings;
use Carp;
use Email::Simple;

our $VERSION = '1.000';

use base qw(WEC::BitTorrent::Tracker::Connection);

our @CARP_NOT = qw(WEC::FieldConnection);

sub init_server {
    my __PACKAGE__ $connection = shift;

    # No multiplexing in BitTorrent::Tracker (not even with keep-alive)
    $connection->{host_mpx}	= 0;
    $connection->{peer_mpx}	= 0;

    $connection->{requests}	= [];
    $connection->{signature}	= "WEC::BitTorrent::Tracker/$VERSION";
    $connection->{in_want}	= 1;
    $connection->{in_process}	= $connection->can("want_line") ||
        die "$connection has no want_line";
    $connection->{in_state}	= \&request_line;
}

1;
