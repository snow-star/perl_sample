use v6;

=begin pod

=TITLE Fetch uri

=AUTHOR stmuk

You want to fetch a uri

=end pod

use LWP::Simple;

my $html = LWP::Simple.get('http://perl6.org/');

say $html;

# vim: expandtab shiftwidth=4 ft=perl6
