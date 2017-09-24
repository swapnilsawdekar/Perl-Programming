use strict;
use warnings;

package Vehicle;

    sub new {
        my ($class)  = shift;
        my $self   = {};
        $self->{'uniqRegNo'} = shift;
        $self->{'ownerName'} = shift;
        $self->{'price'}     = shift;
        bless $self, $class;
        return $self;
    }

    sub displayDetails {
       my ($self) = @_;
       print "Unique Registration Number : $self->{uniqRegNo}, Owner Name : $self->{ownerName}, Price = $self->{price}, Tax = $self->{tax} ";
    }

    sub calculateTax {
        my ($self, $tax) = @_;
        $self->{'tax'}   = ($self->{price}*$tax)/100;
    }

1;
