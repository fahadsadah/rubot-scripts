command(:eval) do
	|e|
	if "#{e[:nick]}!#{e[:user]}@#{e[:host]}" == $config['admin']
		eval e[:message].split(' ',2)[1]
	end
end