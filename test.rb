on(:command, {:command => 'test'}) do
	|e|
	rawsend("PRIVMSG #{e[:channel]} :Test failed.")
end