filename = ARGV[0]
text = File.open(filename).read
text.gsub!(/\[(.+)\]\((.+)\)/) { '<a href="' + $2 + '" target="_blank">' + $1 +
'</a>' }
File.new("#{ARGV[0]}.html", 'w').write(text)
puts ARGV[0] + " successfully converted to " + ARGV[0] + ".html"