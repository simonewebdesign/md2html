path = ARGV[0]
text = File.open(path).read
#text.scan(/\[(.+?)\]\((.+?)\)/) { |m| puts "#{m.inspect}, 1st capture: #{$1}" }
text.gsub!(/\[(.+?)\]\((.+?)\)/) { '<a href="' +$2+ '" target="_blank">' +$1+
'</a>' }
File.new("#{ARGV[0]}.html", 'w').write(text)
puts ARGV[0] + " successfully converted to " + ARGV[0] + ".html"