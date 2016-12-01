#!/usr/bin/perl -w
$word = 'MNIDDKL';
# if-elsif-else conditionals
if ( $word eq 'QSTVSGE' ) {
  print "QSTVSGE\n";
}
elsif ( $word eq 'MRQQDMISHDEL') {
  print "MRQQDMISHDEL\n";
}
else {
print "Is \"$word\" a peptide? This program is not sure.\n";
}
exit;
