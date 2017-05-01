#!/grid/common/bin/perl

use strict;
use warnings;
use JSON;
use POSIX 'strftime';
use Data::Dumper;

my $datestring = strftime '%x', localtime;
my @datearray = split('/',$datestring);
my $date = "$datearray[2]-$datearray[0]-$datearray[1]";

my $url = "http://api.wordnik.com/v4/words.json/wordOfTheDay?date=$date&api_key=0a81330153bf76d5b1823ae181067af7a0f0804d0fed5903b";

my $jsonResponse = `curl -s "$url"`;
my $wordData = decode_json $jsonResponse;
my $wordDataMail .= "Word : $wordData->{word}\n";
foreach (keys %$wordData)
{
        if($_ eq 'definitions')
        {
                $wordDataMail .=  "$_ : $wordData->{$_}[0]->{text}\n";
        }
        elsif($_ eq 'examples')
        {
                $wordDataMail .=  "$_ : $wordData->{$_}[0]->{text}\n";
        }
        else
        {
                #print "$_ : $wordData->{$_}\n";
        }
}
`echo -e "$wordDataMail" | mail -s "Word of the day"   nitinc`;
