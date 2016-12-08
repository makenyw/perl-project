#!/usr/bin/perl -w
print " Please type the filename of the DNA sequence data: ";
$dnafile = <STDIN>;
chomp $dnafile;
unless ( -e $dnafile) {

     print "File \"$dnafile\" doesn\'t seem to exist!!\n";
     exit;
}
open $DNAFILE,'<',$dnafile or die "$0:failed to open input file '$dnafile':$!\n";
@DNA = <$DNAFILE>;
close $DNAFILE or warn "$0:failed to close input file '$dnafile':$!\n";                                           
$DNA  = join ('',@DNA);
$DNA =~s/\s//g;
$a = 0;
$c = 0;
$g = 0;
$t = 0;
$e = 0;
while ( $DNA =~ /a/ig ) { $a++ }
while ( $DNA =~ /c/ig ) { $c++ }
while ( $DNA =~ /g/ig ) { $g++ }
while ( $DNA =~ /t/ig ) { $t++ }
while ( $DNA =~ /[^acgt]/ig ) { $e++ }
print "A=$a C=$c G=$g T=$t errors=$e\n";
$outputfile = "countbase";
unless  ( open( COUNTBASE,">outputfile")) {
   print "cannot open file \"$outputfile\" to write to !!\n\n";
   exit;
}
print COUNTBASE "A=$a C=$c G=$g T=$t errors=$e\n";
close (COUNTBASE);
exit;
