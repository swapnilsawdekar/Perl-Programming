use v5.14;
sub typesOfHashes {
    say ("Simple hash");
    my %basicHash = ("mon", "Monday", "tue", "Tuesday", "wed", "Wednesday");   #Create simple hash
    foreach my $key (sort keys %{basicHash}) {        #Get each key in sorted order
        say ("\t${key} => ${basicHash{$key}}");     #Print key and value of hash
    }
##################################################################################################
    say ("Alternate Way of storing data into hash using => operator");
    my %basicHash1;
    %basicHash1 = (                               #Store key and value pair using => operator
        "mon" => "Monday",
        "tue" => "Tuesday",
        "wed" => "Wednesday",
    );
    foreach my $key (sort keys %{basicHash1}) {        #Get each key in sorted order
        say ("\t${key} => ${basicHash1{$key}}");     #Print key and value of hash
    }

##################################################################################################
    say ("One more way to store data into hash using scalar method");
    my %basicHash2;
    $basicHash2{"mon"} = "Monday";
    $basicHash2{"tue"} = "Tuesday";
    $basicHash2{"wed"} = "Wednesday";
    foreach my $key (sort keys %{basicHash2}) {        #Get each key in sorted order
        say ("\t${key} => ${basicHash2{$key}}");     #Print key and value of hash
    }

##################################################################################################
}

sub arrayOfHash {
    my @AoH = (                                       #Each element of array is hash
        {
           husband  => "barney",
           wife     => "betty",
           son      => "bamm bamm",
        },
        {
           husband => "george",
           wife    => "jane",
           son     => "elroy",
        },

        {
           husband => "homer",
           wife    => "marge",
           son     => "bart",
        },
    );
    push @AoH, {husband => "fred", wife => "Wilma", son => "Jenny"};    #Push one more hash into array
    say $AoH[0]{"husband"}."";                                           #Print specific element from array of hash
    say ("Display contents of array of hash by using De-Referencing on each pointer element of array");
    my $index = 0;
    foreach my $currentHash (@AoH) {
        say ("Array[${index}]....");
        foreach my $key (sort keys %${currentHash}) {                   #De-Referencing the pointer of hash
            my %h = %${currentHash};                                    #De_Referencing hash from pointer
            say("\t${key} => $h{$key}");
            say("\t${key} => ${$currentHash}{$key}");                 #De-Referencing hash from pointer
        }
        $index++;
    }
##################################################################################################
    say ("Display contents of array of hash using array indexing");
    foreach my $i (0 .. (scalar @AoH)-1) {                             #Traverse array (scalar function returns number of elements in the array
        say ("Array[${i}]....");
        foreach my $key (sort keys %{$AoH[$i]}) {                      #$AoH[$i] is each hash
            say ("\t$key => $AoH[$i]->{$key}");                    #Print each value of hash
        }
    }
}

typesOfHashes();    #Basics of hash
say ("##################################################################################################");
arrayOfHash();      #Array of hashes
