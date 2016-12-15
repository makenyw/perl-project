#randomnucleotide 
#A subroutine to randomly select a nucleotide
#warning:make sure you call srand to seed the random number generator before you call this function.
sub randomnucleotide {
 my (@nucs) = ('A','C','G','T');
return $nucs [rand @nucs];
}

