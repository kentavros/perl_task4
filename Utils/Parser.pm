package Utils::Parser;

use strict;
use warnings;
use Data::Dumper;

sub new
{
    my $class = ref($_[0])||$_[0];
    return bless {}, $class;
}

sub parse
{
  
   my ($self, $html, $langs) =@_;
   $html =~s/(\%LANG_\w+)/$langs->{$1}/gse;
   return $html;

}

1;
