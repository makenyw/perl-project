#!/usr/bin/perl -w
use strict;
my $i=2;
simple_sub($i);
print"In main program, after the subroutine call, \$i equals $i\n\n";
exit;
sub simple_sub {
my($i)=@_;
$i += 100;
print"In subroutine simple_sub,\$i  equals $i\n\n";
}
