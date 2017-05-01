#!/usr/bin/perl

use strict;
use warnings;

my $date = `date`;

my $day = substr($date,0,3);
if($day ne 'Sun' and $day ne 'Sat')
{
        my $subjectDate = substr($date,0,10);
        my $emailSubject = "Working From Home ( $subjectDate )";
        my $reason = ['Not Well','Suffering From Fever','Going to doctor','Worked late last night','Missed  CAB'];
        my $rand = int(rand(5));
        `echo -e "Dear Sir,\n\nI am working from home today \n Reason : $reason->[$rand]\n \n --\nRegards,\nNitin Chaudhary" | mail -s "$emailSubject" nitinc`;
}
