sub typesOfHashes {
    my %basicHash = ("mon", "Monday", "tue", "Tuesday", "wed", "Wednesday");   #Create simple hash
    foreach my $key (sort keys %{basicHash}) {        #Get each key in sorted order
        print ("${key} => ${basicHash{$key}}\n");     #Print key and value of hash
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
        print ("${key} => ${basicHash1{$key}}\n");     #Print key and value of hash
    }

##################################################################################################
    print ("One more way to store data into hash using scalar method\n");
    my %basicHash2;
    $basicHash2{"mon"} = "Monday";
    $basicHash2{"tue"} = "Tuesday";
    $basicHash2{"wed"} = "Wednesday";
    foreach my $key (sort keys %{basicHash2}) {        #Get each key in sorted order
        print ("${key} => ${basicHash2{$key}}\n");     #Print key and value of hash
    }

##################################################################################################
}
