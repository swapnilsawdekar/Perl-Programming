use strict;
use warnings;
use 5.010;
 
my $name = 'Foo';
 
say "PID $$";
my $pid = fork();
die if not defined $pid;
if (not $pid) {
   say "In child  ($name) - PID $$ ($pid)";
   $name = 'Qux';
   #sleep 2;
   say "In child  ($name) - PID $$ ($pid)";
   exit;
}
 
say "In parent ($name) - PID $$ ($pid)";
$name = 'Bar';
sleep 2;
say "In parent ($name) - PID $$ ($pid)";
 
my $finished = wait();
say "In parent ($name) - PID $$ finished $finished";