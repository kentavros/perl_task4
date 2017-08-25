package Utils::Db;

use DBI;
use strict;
use warnings;
use Data::Dumper;

sub new
{
    my $class = ref($_[0])||$_[0];
    return bless {}, $class;
}

sub connectDb
{
  my $dsn ="DBI:mysql:user6";
  my $user = "user6";
  my $pass = "tuser6";
  my $dbh = DBI->connect($dsn, $user, $pass)
    or die "Error connecting to DB!";
  return $dbh;
}

sub exec()
{
    my ($self, $connDb, $statement)=@_; 
    my $sth = $connDb->prepare($statement);
    my $hash ={};
    my $rv = $sth->execute;
    while (my $row = $sth->fetchrow_hashref()){
        $hash->{$row->{'key'}}=$row->{'value'};
    }
    $sth->finish;
    $connDb->disconnect;
    return $hash;
   

}




1;
