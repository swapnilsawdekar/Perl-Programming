package Person;
    use strict;
    use warnings;

    sub new {
        my ($class) = shift;
        my $self    = {};
        $self->{'name'}    = shift;
        $self->{'address'} = shift;
        bless $self, $class;
        return $self;
    }

    sub displayDetails {
        my ($self) = @_;
        print "Name : $self->{name}, Address : $self->{address}, ";
    }

1;
