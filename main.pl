#!/usr/bin/perl

use strict;
use warnings;

use lib('Utils');
use Data::Dumper;
use Utils::Db;
use Utils::File;
use Utils::Parser;
use Utils::Substitutor;


my $db = Utils::Db->new();

if ($db->connectDb()){
   
}

my $statement = "SELECT * FROM perl_table";
my $langs= $db->exec($db->connectDb(), $statement);
my $fileObj = Utils::File->new();
my $file2 = 'layout.html';
my $html = $fileObj->readFile($file2);
my $parseObj = Utils::Parser->new();
my $parse = $parseObj->parse($html, $langs);
#print Dumper($parse);


#XML


