#!/usr/bin/env ruby
#  a Ruby script that accepts one argument and
#  pass it to a regular expression matching method
#  script output: [SENDER],[RECEIVER],[FLAGS]

puts ARGV[0].scan(/\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/).join(",")
