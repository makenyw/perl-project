#! /usr/bin/perl -w

$DNA = 'ATGTAGCTA' ;
print "DNA sequence is : \n" ;
print "$DNA\n\n" ;
$revcom = reverse $DNA ;
$revcom =~ tr/ACGTacgt/TGCAtgca/ ;
print "Reverse complement DNA is: \n" ;
print "$revcom\n" ;



