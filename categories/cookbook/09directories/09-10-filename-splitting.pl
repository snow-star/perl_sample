use v6;

=begin pod

=TITLE Splitting up a filename

=AUTHOR stmuk

You want to split a filename into basename, directory etc.

=end pod

sub MAIN(:$file = "/usr/lib64/libc.so") {
    my $io = IO::Path.new-from-absolute-path($file);

    say "basename: ",  $io.basename;
    say "dirname: ",   $io.dirname;
    say "extension: ", $io.extension;
}

# vim: expandtab shiftwidth=4 ft=perl6
