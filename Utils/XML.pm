package Utils::XML;

use strict;
use warnings;
use Data::Dumper;
use XML::Simple;

sub new
{
    my $class = ref($_[0])||$_[0];
    return bless {}, $class;
}

sub makeHash
{
	my ($self, $xmlFile) =@_;
	my $hash = XMLin($xmlFile);
	return $hash;
}
1;