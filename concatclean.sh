#!/usr/bin/perl

use strict;
#use warnings;

my $input_file = "/tmp/output_1.txt";
my $output_file = "/tmp/output_2.txt";

open(my $in_fh, '<', $input_file) or die "Can't open input file: $!";
open(my $out_fh, '>', $output_file) or die "Can't open output file: $!";

while (my $line = <$in_fh>) {
    chomp $line;
        my ($ip, $hostname, $hostname_domain, $pid, $ial, $myid, $wsm, $wid, $wst, $hst, $adm) = split(' ', $line, 11);
    printf "%s %s  %s  %s  %s %s %s %s %s %s  %s %s %s\n", $ip, $hostname, $hostname_domain, $pid, $ial, $myid, $wsm, $wid, $wst, $hst, $adm;
    print $out_fh sprintf "%s %20s %20s %7s %7s %14s %8s %8s %7s %20s %7s %-1s %s\n", $ip, $hostname,  $hostname_domain, $pid, $ial, $myid, $wsm, $wid, $wst, $hst, $adm
;

}

close($in_fh);
close($out_fh);
