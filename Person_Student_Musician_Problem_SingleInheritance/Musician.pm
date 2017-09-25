package Musician;
    use strict;
    use warnings;
    use Person;

    our @ISA = qw(Person);

    sub new {
        my $class = shift;
        my $self  = $class->SUPER::new (shift, shift);

        $self->{'instrument'} = shift;
        bless $self, $class;
        return $self;
    }

    sub displayDetails {
        my ($self) = @_;
        $self->SUPER::displayDetails();
        print "Instrument : $self->{instrument}\n";
    }

1;
