#Consider the following scenario: every person (let us suppose) has a name and an address; some people are students, and also have a university or college to which they belong;
#some people are musicians, and can play one or more instruments. If, for some reason, we wished to model this situation in Perl,
#we could define classes Person, Student, and Musician, with the latter two setting @ISA = (’Person’).
#The constructors could be written in an obvious way, so that the name and address were passed to Person->new, which stored them in a hash and returned a blessed reference to it.
#The constructor Student->new would take the student’s name, address and college, call SUPER->new with the name and address, then add the college, in the manner we have seen;
#Musician would deal with name, address and instrument in a similar way. Now consider music students.
#A music student is a student, and also a musician (to the extent of playing an instrument).
#The natural way to add music students to your model is by using multiple inheritance: define a class MusicStudent, which sets @ISA = qw(Student Musician).
#Write EX-12 Perl: The Programmer’s Companion a definition of the constructor for this new class. (Do not modify the constructors of the other classes.)
# (A) What can you say about the maintainability and re-usability of the classes in this hierarchy?
# (B) Can you re-design the hierarchy so that it only uses single inheritance, but still accurately reflects the semantics of the scenario?

use MusicStudent;

my $obj = MusicStudent->new('Swapnil', 'Pune', 'Guitar', 'PuneUnivesity');
$obj->displayDetails();
