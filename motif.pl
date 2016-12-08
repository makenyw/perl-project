#!/usr/bin/perl -w
print "Please type the filename of the protein sequence data: ";
$profile = <STDIN>;
chomp $profile;

#open the file ,or exit
unless ( open( PROTEIN , $profile )) {
       print "Cannot open file \"$profile\"\n\n";
       exit ;
}
@protein = <PROTEIN>;
close PROTEIN;
$protein  = join ('',@protein);
$protein =~ s/\s//g;
do {
   print "Enter a motif  to search for: ";
   $motif = <STDIN>;
   chomp $motif ;
  if ( $protein =~ /$motif/ ) {
    print "I found it !\n\n";
  }
 else {
    print "I couldn\'t find it.\n\n";
    }
}
  until ( $motif =~ /^\s*$/ );
exit;
