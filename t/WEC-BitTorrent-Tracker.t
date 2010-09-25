#!/usr/bin/perl -w
# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl WEC-BitTorrent-Tracker.t'
## no critic (ProhibitUselessNoCritic ProhibitMagicNumbers)
use strict;
use warnings;
use Test::More tests => 2;

BEGIN { use_ok('WEC::BitTorrent::Tracker::Client') };
BEGIN { use_ok('WEC::BitTorrent::Tracker::Server') };
