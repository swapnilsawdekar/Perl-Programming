use v5.14;
my $filename="basemark_es3.0__EGL__Duel_19x12_RC3__bmes3duel-2701.csv";
my $filename="file.csv";
my %dict;

open(my $fh, "<", $filename);

while(my $row = <$fh>) {
    chomp $row;
    my @words = split /,/, $row;

    my $module =  $words[0];
    my $level  =  $words[1];
    my $phase  =  $words[2];
    my $time   =  $words[3];
    if (not ($module =~ m/Module/)) {           #skip first line
        if (not exists ($dict{$module})) {      #check moodule exists in dict
            $dict{$module} = {};
        }
        if (not exists ($dict{$module}{$level})) {      #check level exists in dict
            $dict{$module}{$level} = {};
        }
        if (exists $dict{$module}{$level}{$phase}) {    #if phase exists then add time
            $dict{$module}{$level}{$phase} = $dict{$module}{$level}{$phase} + $time;
        } else {
            $dict{$module}{$level}{$phase} = $time;     #if phase not exists then initialize it with value time
        }
    }
}

while (keys (%dict)) {
    print $_;
}
