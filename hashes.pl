sub typesOfHashes {
    my %basicHash = ("mon", "Monday", "tue", "Tuesday", "wed", "Wednesday");   #Create simple hash
    foreach my $key (sort keys %{basicHash}) {        #Get each key in sorted order
        print ("${key} => ${basicHash{$key}}\n");     #Print key and value of hash
    }
}
