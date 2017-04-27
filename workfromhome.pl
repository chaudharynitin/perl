#!/usr/bin/perl

use strict;
use warnings;

my $date = `date`;

#To find out current day
my $day = substr($date,0,3);

if($day ne 'Sat' || $day ne 'Sun') #Skip on weekends
{
        my $reason = ['Not Well','Suffering From Fever','Going to doctor','Worked late last night','Missed  CAB'];
        my $rand = int(rand(5));
        my $subjectDate = substr($date,0,10);
        my $emailSubject = "Working From Home ( $subjectDate )";
        my $emailBody = "Dear Sir,\n\nI am working from home today \n Reason : $reason->[$rand]\n \n --\nRegards,\nNitin Chaudhary";        

        `echo -e "$emailBody" | mail -s "$emailSubject" nitinc`;
}
