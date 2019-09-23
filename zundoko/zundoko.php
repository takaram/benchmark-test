<?php

function zundoko() {
  $zundoko = ["ズン", "ドコ"];
  $target = ["ズン", "ズン", "ズン", "ズン", "ドコ"];
  $history = [];
  $n = count($zundoko);
  $m = count($target);

  while ($history !== $target) {
    $next = $zundoko[rand(0, $n - 1)];
    echo $next;

    if (count($history) >= $m) {
      array_shift($history);
    }
    $history[] = $next;
  }
  echo "キヨシ！", PHP_EOL;
}

for ($i = 0; $i < 10000; $i++) {
  zundoko();
}
