  
#---------------------------------------------------------------# 
#  https://computers-science-lab.blogspot.com/search/label/Perl #
#                   { "DEV":"Javi Muro"}                        #
#---------------------------------------------------------------#
#!/usr/bin/perl 
  use strict;
  use warnings;

  #declare the variables with containing the shipping information that scripting need to send the email
  my $toList='receiver@gmail.com';
  my $fromLIst='transmitter@gmail.com';
  my $subject='test';
  my $message='¡hi!
  This is a test to send an email with perl5 ';

  #print the containing in the variables
  open(MAIL,"|/usr/sbin/sendmail -t");
  print MAIL "TO: $toList\n";
  print MAIL "From: $fromLIst\n";
  print MAIL "subject: $subject\n";
  print MAIL ": $message\n";

  #close MAIL function 
    close(MAIL);
  #print a successful message
    print"Email sent successfully\n";
