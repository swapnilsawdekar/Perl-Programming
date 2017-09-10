use strict;
use v5.14;

my @arr = (2,3,4,5,6);
print "Original Array";
display(\@arr);

print "Display even numbers using grep()";
funGrep(\@arr);     # grep condition array

print "Insert another list into the array using splice()";
funSplice(\@arr);   # splice (originalArray, offset, length, list)

sub funGrep() {
    my $temp = $_[0];
    my @tempGrep = grep ({$_ % 2 ==0} @{$temp});
    display(\@tempGrep);
}

sub funSplice() {
    my $temp = $_[0];
    my @temp1 = qw(10 11 12 13 14 15);
    splice @{$temp}, 1, 3, @temp1;
    display($temp);
}

sub display() {
    my $temp = $_[0];
    print("\n............................\n");
    foreach my $i (@{$temp}) {
        print ("${i} ");
    }
    print("\n............................\n");
}
