#PROBLEM STATEMENT
#For the purpose of taxation, the government of Freedonia classifies motor vehicles into three broad categories: public service vehicles, goods vehicles, and private cars.
#Emergency vehicles are considered a special subcategory of public service vehicles; goods vehicles are divided into light (vans) and heavy (lorries or trucks).
#Every vehicle has a unique registration number, and the government records the name of all vehicle owners; for goods vehicles, a goods operator’s licence number is also recorded, whereas for public service vehicles, the government department responsible for them is recorded.
#Tax is assessed as follows: public service vehicles play a flat rate (this is required for inter-departmental accounting purposes), except for emergency vehicles, which are exempt.
#All goods vehicles pay a rate proportional to their weight, but light goods vehicles pay a supplement if they have more than two windows.
#Private cars all pay the same amount of tax, but cars with engines smaller than 1100cc receive a rebate if they are more than three years old.
#Design a collection of classes that is suitable for modelling this scenario, and implement them in Perl. Allow for the possibility that the rates of tax might be changed at budget time. Write a driver program to simulate the recording of data about registered vehicles and the collection of taxes


use PublicSV;
use GoodsV;
use PrivateV;

#my $obj = PublicSV->new('MH14EY2837', 'Swapnil', 300000, 'emergency', 'defence');
my $obj = PublicSV->new('MH14EY2837', 'Swapnil', 300000, 'nonemergency', 'defence');
$obj->calculateTax(12);
$obj->displayDetails();


#my $obj1 = GoodsV->new('MH14EY2837', 'Swapnil', 300000, 'MH1400000AB', 1000, 'heavy', 3);
my $obj1 = GoodsV->new('MH14EY2837', 'Swapnil', 300000, 'MH1400000AB', 1000, 'light', 3);
$obj1->calculateTax();
$obj1->displayDetails();

#my $obj2 = PrivateV->new('MH14EY2837', 'Swapnil', 300000, 5, 1100);
my $obj2 = PrivateV->new('MH14EY2837', 'Swapnil', 300000, 2.1, 1000);
$obj2->calculateTax();
$obj2->displayDetails();
