sub zundoko {
    my @zundoko = ("ズン", "ドコ");
    my @target = ("ズン", "ズン", "ズン", "ズン", "ドコ");
    my $target_str = join('', @target);
    my @history = ();

    while (join('', @history) ne $target_str) {
        my $next = $zundoko[rand(@zundoko)];
        print $next;

        shift @history if ($#history >= $#target);
        push @history, $next;
    }
    print "キヨシ！\n";
}

for (my $i = 0; $i < 10000; $i++) {
    zundoko();
}
