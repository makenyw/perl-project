#! /usr/bin/perl -w 

$DNA = 'ATGTATC';
print "$DNA\n\n";
 
 
( $RNA = $DNA ) =~ s/T/U/g ; 
print "$RNA\n";

