#mutate_better
sub muatte_better {
 my($dna)= @_;
 my(@nucleotides)=('A','C','G','T');
 my($position)=randomposition($dna);
 my($newbase);
 do {
  $newbase=randomnucleotide(@nucleotides);
 }
until ($newbase ne substr($dna,$position,1));
substr($dna,$position,1,$newbase);
return $dna;
}
