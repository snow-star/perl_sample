use v6;

=begin pod

=TITLE P06 - Find out whether a list is a palindrome.

=AUTHOR Aaron Sherman

=end pod

sub palindromic(@list) {
    return True if @list < 2;

    my $start = 0;
    my $end = @list.end;
    my $mid_start = floor(@list / 2 - 1);
    my $mid_end = ceiling(@list / 2);
    @list[$start .. $mid_start] ~~ @list[$mid_end .. $end].reverse;
}

my @examples = [
    [[< a b c d E >], False],
    [[< a b c b a >], True],
    [[< a b b E >], False],
    [[< E b b a>], False],
    [[< a b b a >], True],
    [[< a >], True],
    [[< a a >], True],
    [[< E a >], False] ];

for @examples -> ($list, $result) {
    if palindromic($list) != $result {
        die "{$list.perl} was expected to be a palindrome, but isn't";
    }
    else {
        say $list ~ " is a palindrome";
    }
}

# vim: expandtab shiftwidth=4 ft=perl6
