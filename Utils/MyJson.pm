package Utils::MyJson;

use strict;
use warnings;
use Data::Dumper;
use JSON;

sub new
{
    my $class = ref($_[0])||$_[0];
    return bless {}, $class;
}

sub decode
{  
     my ($self,$jsonFile) = @_;
     my $json = decode_json($jsonFile);
     my %lengs = ();
     foreach my $key (keys $json)
     {
          $lengs{$key} = $json->{$key};
     }
     return \%lengs;
}
1;
    