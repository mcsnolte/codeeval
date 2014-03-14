for line in io.lines(arg[1]) do
	t = {}
	for d in string.gmatch(line, "%S+") do
		table.insert(t, d)
	end
	a = {}
	for i=1, t[3], 1 do
		if i % t[1] == 0 and i % t[2] == 0 then
			table.insert(a, "FB")
		elseif i % t[1] == 0 then
			table.insert(a, "F")
		elseif i % t[2] == 0 then
			table.insert(a, "B")
		else
			table.insert(a, i)
		end
	end
	print( table.concat(a, " " ) )
end
