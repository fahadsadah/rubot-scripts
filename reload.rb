on(:privmsg) do
	|e|
	if $config['admin'] == "#{e['nick']}!#{e['user']}@#{['host']}"
		if e['message'].split[0] == reload
			Dir[File.dirname(__FILE__) + '/scripts/*'].each { |file| require file }
		end
	end
end