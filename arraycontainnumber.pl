#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my @array = ('a','b','c',3,'cc','4',55);
foreach (@array)
{
        if($_=~/^\d+$/)
        {
                print "$_ is a number.\n";
        }
}

