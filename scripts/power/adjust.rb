module Leds

	def read_value file
		File.open(file).map{|line| line.chomp.to_i}.first # Usualy just one line :)
	end

	def write_value file, value
		f = File.open(file, "w") 
		f << value
		f.close
	end

	def parseargs argv
		{
			brightness: argv[0],
			max_brightness: argv[1],
			action: (argv[2].eql?('-') ? :- : :+),
			levels: argv[3]
		}
	end

	def adjust opts
		brightness = read_value(opts[:brightness])
		max_brightness = read_value(opts[:max_brightness])
		levels = opts[:levels]

		brightness = brightness.send(opts[:action], max_brightness / levels)

		write_value(opts[:brightness], brightness > max_brightness ? max_brightness : (brightness < 0 ? 0 : brightness))
	end
end
