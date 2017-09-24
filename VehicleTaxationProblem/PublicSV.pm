package PublicSV;
    use strict;
    use warnings;
    use Vehicle;

    our @ISA = qw(Vehicle);
    sub new {
        my $class = shift;
        my $self  = $class->SUPER::new (shift, shift, shift);

        $self->{typeOfVehicle} = shift;
        $self->{govDept}       = shift;
        bless $self, $class;
        return $self;
    }
#     sub new {
#         my ($class) = @_;
#         my $self  = $class->SUPER::new ($_[1], $_[2], $_[3]);
#
#         $self->{typeOfVehicle} = $_[4],
#         $self->{govDept}       = $_[5],
#         bless $self, $class;
#         return $self;
#     }

    sub displayDetails {
        my ($self) = @_;
        $self->SUPER::displayDetails();
        print "$self->{typeOfVehicle}\n";
    }

    sub calculateTax {
        my ($self, $tax) = @_;
        if ($self->{typeOfVehicle} eq 'emergency') {
            $self->SUPER::calculateTax (0);
        } else {
            $self->SUPER::calculateTax ($tax);
        }
    }

1;
