#!/usr/bin/perl
use strict;
use warnings;

my @numbers = (1,2,3,4,5,6,7,9,10);


my $expextedsum=0;
my $sum=0;

for(my $i=1;$i<=10;$i++)
{
        $expextedsum =$expextedsum+$i;
        $sum = $sum + $numbers[$i-1];
}
print $expextedsum-$sum;
