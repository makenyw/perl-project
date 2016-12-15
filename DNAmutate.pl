#!/usr/bin/perl -w
use strict;
use warnings;
my  $DNA = 'AAAAAAAAAAAAAAAAAAAAAAA';
my $i;
my $mutant;
srand (time|$$);
$mutant =mutate ($DNA);
print "\n Mutate DNA\n\n";
print "\n Here is the original DNA:\n\n";
print "$DNA\n";
print "\nHere is the mutant DNA:\n\n";
print "$mutant\n";
print "\nHere are 10 more successive mutations:\n\n";
for ($i=0;$i<10;++$i) {
$mutant = mutate($mutant);
print "$mutant\n";
}
exit;

sub mutate {
my($dna) =@_;
my (@nucleotides)=('A','C','G','T');
my ($position)=randomposition($dna);
my($newbase)=randomnucleotide(@nucleotides);
substr ($dna,$position,1,$newbase);
return $dna;
}
sub randomnucleotide {
my(@nucleotides)=('A','C','G','T');
return randomelement(@nucleotides);
}
sub randomelement {
my(@array) = @_;
return $array[rand @array];
}
sub randomposition {
my ($string)=@_;
return int rand length $string;}
