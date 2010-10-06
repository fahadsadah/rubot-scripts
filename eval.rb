command(:eval) do
	|e|
	if "#{e[:nick]}!#{e[:user]}@#{e[:host]}" == $config['admin']
		eval e[:message]
	end
end