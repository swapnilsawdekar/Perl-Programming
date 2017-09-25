package MusicStudent;
    use strict;
    use warnings;
    use Student;
    use Musician;

    sub new {
        my ($self)  = {};

        my $obj1 = Musician->new($_[1], $_[2], $_[3]);
        my $obj2 = Student->new($_[1], $_[2], $_[4]);
        $self->{'ob1'} = $obj1;
        $self->{'ob2'} = $obj2;
        return bless $self;
    }

    sub displayDetails {
        my ($self) = @_;
        $self->{'ob1'}->displayDetails();
        $self->{'ob2'}->displayDetails();
    }

1;
