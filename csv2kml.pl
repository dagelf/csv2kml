#!/usr/bin/perl
# https://gis.stackexchange.com/questions/26881/csv-to-kml-converter/251953#251953
# for instructions
# use: perl csv2kml.pl < input.csv > output.kml

# use HTML::Entities; # uncomment this and line below if you can't open the file

print '<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://earth.google.com/kml/2.0">
<Document>';

while (<>) {
# encode_entities($_);
 @a=split /,/;

 print "<Placemark>
 <description>$a[0]</description>
 <Point><coordinates>$a[3],$a[2],0</coordinates></Point>
 </Placemark>"
};

print '</Document>
</kml>';
