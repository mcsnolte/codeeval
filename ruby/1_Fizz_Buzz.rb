File.open(ARGV[0]).each_line do |line|
	(f,b,x) = line.split(" ").map(&:to_i)
	for i in 1..x
		if i % f == 0 && i % b == 0
			print "FB"
		elsif i % f == 0
			print "F"
		elsif i % b == 0
			print "B"
		else
			print i
		end
		if i < x
			print " "
		end
	end
	print "\n"
end
