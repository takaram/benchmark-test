def zundoko
  zundoko = %w[ズン ドコ]
  target = %w[ズン ズン ズン ズン ドコ]
  history = []
  m = target.size

  until history == target
    next_val = zundoko.sample
    print next_val

    history.shift if history.size >= m
    history << next_val
  end
  puts "キヨシ！"
end

10000.times do
  zundoko
end
