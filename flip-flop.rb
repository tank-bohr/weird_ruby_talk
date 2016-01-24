while DATA.gets
  if /start/ .. /end/
    print "flip flop true: #{$_}"
  else
    print "flip flop false: #{$_}"
  end
end

__END__
foo
bar
start
inside
blah
this is the end
baz
