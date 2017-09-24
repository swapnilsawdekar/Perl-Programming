package PrivateV;
    use strict;
    use warnings;
    use Vehicle;

    our @ISA = qw(Vehicle);

    sub new {
        my $class = shift;
        my $self  = $class->SUPER::new (shift, shift, shift);

        $self->{age} = shift;
        $self->{cc}  = shift;
        bless $self, $class;
        return $self;
   }

    sub displayDetails {
        my ($self) = @_;
        $self->SUPER::displayDetails();
        print "Age of Vehicle : $self->{age}, CC : $self->{cc}\n";
    }

    sub calculateTax {
        my ($self) = @_;
        $self->{tax} = 10000;
        if ($self->{cc} < 1100 and $self->{age} <3) {
            $self->{tax} = $self->{tax} - 2000;      #Rebate of 2000 INR
        }
    }

1;
