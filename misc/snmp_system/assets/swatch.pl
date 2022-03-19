#!/usr/bin/perl

$line = "@ARGV";

$hostname=qx(hostname);
chomp($hostname);

$value='';
if ($line =~ /SPTRAP (KB-C6-[A-F0-9]+-[A-F0-9]+)/) {
    $value = $1;
    @output = qx(grep ";${value};" /var/www/mrtg/avahi.html);
    $string = "@output";
    chomp($string);
    $string =~ s/;/ /g;
    $string =~ s/"//g;


    qx(echo "$line \n $string" | /usr/bin/mail -s "SwatchAlert $hostname" user\@domain.com);

}

