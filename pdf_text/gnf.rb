#!/usr/bin/env ruby
require 'find'

files = []
Find.find('.') do |path|
  files << path if path =~ /\.txt$/
end

files.each do |path|
  puts path
  # dirs = path.split('/')
  # puts dirs[1]
  # txt = "#{dirs[1]}.txt"
  res_path = path[0..-4] + "json"
  puts res_path


  `cat "#{path}" | gnfinder find -l eng -c  > #{res_path}`
end
