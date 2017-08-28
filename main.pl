#!/usr/bin/perl

use strict;
use warnings;

use lib('Utils');
use Data::Dumper;
use Utils::Db;
use Utils::File;
use Utils::Parser;
use Utils::Substitutor;
use Utils::XML;
use Utils::MyJson;


my $db = Utils::Db->new();

if ($db->connectDb()){
   
}

my $statement = "SELECT * FROM perl_table";
my $langs= $db->exec($db->connectDb(), $statement);
my $fileObj = Utils::File->new();
my $file2 = 'layout.html';
my $html = $fileObj->readFile($file2);
#my $parseObj = Utils::Parser->new();
#my $parse = $parseObj->parse($html, $langs);
#print Dumper($parse);

#XML
my $xmlFile = 'index.xml';
my $hashXML = Utils::XML->new();
my $langXML = $hashXML->makeHash($xmlFile);
#print Dumper($langXML);
#my $parseXML = Utils::Parser->new();
#my $parse = $parseXML->parse($html, $langXML);
#print Dumper($parse);

#JSON
my $jsonFile = 'fjson.json';
my $read = $fileObj->readFile($jsonFile);
#print Dumper($read);
my $json = Utils::MyJson->new();
my $dec = $json->decode($read);
#print Dumper($dec);
my $parseJson = Utils::Parser->new();
my $parse=$parseJson->parse($html, $dec);
print Dumper($parse);
