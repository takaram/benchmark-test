sub tarai {
    my ($x, $y, $z) = @_;

    if ($x <= $y){
        return $y;
    } else {
        return tarai(tarai($x - 1, $y, $z),
                     tarai($y - 1, $z, $x),
                     tarai($z - 1, $x, $y));
    }
}

print tarai(13, 5, 0), "\n";
