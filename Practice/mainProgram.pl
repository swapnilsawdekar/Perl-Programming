use strict;
use warnings;

use lib "A/";
use Mymodule qw(checkPrime checkPalindrome);
my $y = 7;
my $str = "madam";

if (Mymodule::checkOddEven($y)) {
	print "$y is an odd number\n";
} else {
	print "$y is an even number\n";
}

if (checkPrime($y)) {
	print "$y is a prime number\n";
} else {
	print "$y is not a prime number\n";
}

if (checkPalindrome($str)) {
	print "$str is a palindrome number\n";
} else {
	print "$str is not a palindrome number\n";
}
