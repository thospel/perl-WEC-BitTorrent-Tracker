package WEC::BitTorrent::Tracker::Connection;
use 5.006;
use strict;
use warnings;
use Carp;

use base qw(WEC::Connection);
our @CARP_NOT = qw(WEC::FieldConnection);

1;
