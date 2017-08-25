package Utils::Substitutor;

use strict;
use warnings;
use Data::Dumper;

sub new
{
    my $class = ref($_[0])||$_[0];
    return bless {}, $class;
}

sub makeHash
{
    my ($self,@data) =@_;
    my %langs=();
    while(@data)
    {
        my $line = shift@data;
        my ($key, $value)=split('=>', $line);
        $langs{$key}=$value if ($key);
    }
    return \%langs;
}

1;
