package GoodsV;
    use strict;
    use warnings;
    use Vehicle;

    our @ISA = qw(Vehicle);

    sub new {
        my $class = shift;
        my $self = $class->SUPER::new (shift, shift, shift);

        $self->{liscenseNo}    = shift;
        $self->{weight}        = shift;
        $self->{typeOfVehicle} = shift;
        $self->{windowCount}   = shift;
        bless $self, $class;
        return $self;
    }

    sub displayDetails {
        my ($self) = @_;
        $self->SUPER::displayDetails();
        print "Liscense No : $self->{liscenseNo}, Weight : $self->{weight}, Type of Vehicle : $self->{typeOfVehicle}, Window Count : $self->{windowCount}\n";
    }

    sub calculateTax {
        my ($self) = @_;
        if ($self->{typeOfVehicle} eq 'heavy') {
            $self->{tax} = ($self->{weight} * 5)/100;
        } else {
            if ($self->{windowCount} > 2) {
                $self->{tax} = 5000;
            } else {
                $self->{tax} = 0;
            }
        }
    }

1;

