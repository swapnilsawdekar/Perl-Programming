sub typesOfHashes {
    print ("Simple hash\n");
    my %basicHash = ("mon", "Monday", "tue", "Tuesday", "wed", "Wednesday");   #Create simple hash
    foreach my $key (sort keys %{basicHash}) {        #Get each key in sorted order
        print ("\t${key} => ${basicHash{$key}}\n");     #Print key and value of hash
    }
##################################################################################################
    print ("Alternate Way of storing data into hash using => operator\n");
    my %basicHash1;
    %basicHash1 = (                               #Store key and value pair using => operator
        "mon" => "Monday",
        "tue" => "Tuesday",
        "wed" => "Wednesday",
    );
    foreach my $key (sort keys %{basicHash1}) {        #Get each key in sorted order
        print ("\t${key} => ${basicHash1{$key}}\n");     #Print key and value of hash
    }

##################################################################################################
    print ("One more way to store data into hash using scalar method\n");
    my %basicHash2;
    $basicHash2{"mon"} = "Monday";
    $basicHash2{"tue"} = "Tuesday";
    $basicHash2{"wed"} = "Wednesday";
    foreach my $key (sort keys %{basicHash2}) {        #Get each key in sorted order
        print ("\t${key} => ${basicHash2{$key}}\n");     #Print key and value of hash
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
    print $AoH[0]{"husband"}."\n";                                           #Print specific element from array of hash
    print ("Display contents of array of hash by using De-Referencing on each pointer element of array\n");
    my $index = 0;
    foreach my $currentHash (@AoH) {
        print ("Array[${index}]....\n");
        foreach my $key (sort keys %${currentHash}) {                   #De-Referencing the pointer of hash
            my %h = %${currentHash};                                    #De_Referencing hash from pointer
            print("\t${key} => $h{$key}\n");
            print("\t${key} => ${$currentHash}{$key}\n");                 #De-Referencing hash from pointer
        }
        $index++;
    }
##################################################################################################
    print ("Display contents of array of hash using array indexing\n");
    foreach my $i (0 .. (scalar @AoH)-1) {                             #Traverse array (scalar function returns number of elements in the array
        print ("Array[${i}]....\n");
        foreach my $key (sort keys %{$AoH[$i]}) {                      #$AoH[$i] is each hash
            print ("\t$key => $AoH[$i]->{$key}\n");                    #Print each value of hash
        }
    }
}

typesOfHashes();    #Basics of hash
print ("##################################################################################################\n");
arrayOfHash();      #Array of hashes
