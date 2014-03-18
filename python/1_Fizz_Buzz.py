import sys
test_cases = open(sys.argv[1], 'r')
for test in test_cases:
	(f, b, m) = [ int(s) for s in test.split(' ') ]
	answer = []
	for i in range(1, m+1):
		if ( i % f == 0 and i % b == 0 ):
			answer.append("FB")
		elif ( i % f == 0 ):
			answer.append("F")
		elif ( i % b == 0 ):
			answer.append("B")
		else:
			answer.append(str(i))
	print " ".join(answer)

test_cases.close()
