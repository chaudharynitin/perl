#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my @numbers = (1,2,3,1,2,3,4,5,11,6,7,8,93,3,3,3,11);
my @duplicate = ();
my %temp = ();
foreach my $i (@numbers)
{
        $temp{$i}++;
}

my @dupremoved = keys(%temp);

print "@dupremoved";
