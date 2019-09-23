sub fib {
    my $n = $_[0];
    return 1 if $n <= 1;

    return fib($n - 1) + fib($n - 2);
}

print fib(36), "\n"
