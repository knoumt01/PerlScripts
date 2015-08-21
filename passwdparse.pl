#!/usr/bin/perl -w

use strict;

sub printuser;

die "Usage: $0" unless @ARGV == 0;

my $file = "/etc/passwd";

open FILE, $file;

while ( <FILE> ) {
	my @userarray = split /:/;
	if ( $userarray[2] && ($userarray[2] >= 1000) ) {
		printuser(@userarray);
	}
}
close FILE;

sub printuser {
	my @userarray = @_;
	my $userline = join "\t", @userarray;
	print "$userline\n";
}
