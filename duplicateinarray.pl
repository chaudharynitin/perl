#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my @numbers = (1,2,3,1,2,3,4,5,11,6,7,8,93,3,3,3);
my @duplicate = ();
my %temp = ();
foreach my $i (@numbers)
{
        $temp{$i}++;
}

foreach my $key (keys %temp)
{
        if($temp{$key} > 1)
        {
                push (@duplicate,$key);
        }
}
print "@duplicate";
