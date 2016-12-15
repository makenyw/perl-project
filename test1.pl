#!/usr/bin/perl -w
#Test the randomposition subroutine
my $dna = 'AACCGTTAATGGGCATCGATGCTATGCGAGCT';
srand(time|$$);
for (my $i=0;$i<20;++$i) {
print randomposition($dna),"  ";
}
print "\n  ";
exit;
sub randomposition {
 my ($string) = @_;
 return int rand length $string;
}
