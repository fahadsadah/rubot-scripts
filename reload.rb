on(:command, {:command => 'reload'}) do
	|e|
	if $config['admin'] == "#{e['nick']}!#{e['user']}@#{['host']}"
		Dir[File.dirname(__FILE__) + '/scripts/*'].each { |file| require file }
	end
end