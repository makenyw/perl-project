#mutate 
#
#A subroutine to perform a mutation in a string of DNA
sub mutate {
 my($dna) = @_;
 my(@nucleotides) = ('A','C','G','T');
#pick a random position in the DNA
my($position)=randomposition($dna);
#pick a random nucleotide 
my ($newbase) = randomnucleotide(@nucleotides);
substr($dna,$position,1,$newbase);
return $dna;
}

