command(:test) do
	|e|
	rawsend("PRIVMSG #{e[:target]} :Test failed.")
end