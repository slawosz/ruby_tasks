class Temperature

	def initialize (tempratures_hash)
  		@tempratures = tempratures_hash
	end


	def in_fahrenheit
		puts @temperatures
  		@tempratures.key?(:f) ? @tempratures[:f] : (@tempratures[:c] * 9.0 / 5) + 32
	end

   	def in_celsius
        @tempratures.key?(:c) ? @tempratures[:c] : (@tempratures[:f] - 32) * 5.0 / 9
    end


end
