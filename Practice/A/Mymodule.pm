package Mymodule;
use strict;
use warnings;

use Exporter qw(import);
our @EXPORT_OK = qw(checkOddEven checkPrime checkPalindrome);

sub checkOddEven {
  my $x = $_[0];
  return ($x & 1);
}
 
sub checkPrime {
  my $x = $_[0];
  my $d=0;
  if($x==2) {
    return 1;
  } else {
     for(my $c=2;$c<=$x-1;$c++) {
        if($x%$c==0) {
            $d=1;
            last;
        }
     }
     if ($d == 1) {
        return 0;
     } else {
        return 1;
     }
  }
}

sub checkPalindrome {
	my $x = $_[0];
	return (($x eq reverse($x))?1:0);
}

1;