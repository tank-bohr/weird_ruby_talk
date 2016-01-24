while (<DATA>) {
  if (/start/ .. /end/) {
    print "flip flop true: $_";
  }
  else {
    print "flip flop false: $_";
  }
}

__DATA__
foo
bar
start
inside
blah
this is the end
baz
