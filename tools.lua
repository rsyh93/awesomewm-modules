local tools = {}

function tools.touchpad_off()
	local f_in = io.popen("synclient -l", "r")

	for line in f_in:lines() do
		local val
		_, _, val = string.find(line, "%s*TouchpadOff%s*=%s*([01])")
		if val then
			if val == "1" then
				val = 0
			else
				val = 1
			end
			os.execute("synclient TouchpadOff=" .. val)
			print(val)
			break
		end
	end
end

return tools
