#randomposition 
#
#warning:make sure you call strand to seed the random number generator before you call this function.
sub randomposition  {
  my ($string) = @_;
  return int (rand(length($string)));
}
