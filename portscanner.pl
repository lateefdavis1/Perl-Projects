#!/usr/bin/perl

use strict;
use warnings;
use IO::Socket;

#VARIABLES
my $ipaddress;
my $port;
my $remote;

#INPUT
print "Enter the Target IP Address: ";
chomp($ipaddress = <STDIN>);

if ($ipaddress eq "")
{
	print STDERR "You did not provide anything. Enter the Target IP Address: ";
	chomp($ipaddress = <STDIN>);
}

#PROCESSING
for ($port = 0; $port < 65535; $port++) {
	
	$remote = IO::Socket::INET -> new(Proto => "tcp", PeerAddr => $ipaddress, PeerPort => $port);
	
	if ($remote) {
		
		#OUTPUT
		print "$port is open\n";
		
	}
}
