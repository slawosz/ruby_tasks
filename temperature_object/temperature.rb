class Temperature

	def initialize (tempratures_hash)
  		  @tempratures = tempratures_hash
	end

	def in_fahrenheit
  		  @tempratures.key?(:f) ? @tempratures[:f] : (@tempratures[:c] * 9.0 / 5) + 32
	end

  def in_celsius
        @tempratures.key?(:c) ? @tempratures[:c] : (@tempratures[:f] - 32) * 5.0 / 9
  end

	def self.from_celsius(int)
        self.new(:c => int)
  end	

  def self.from_fahrenheit(int)
        self.new(:f => int)
  end
     
end

class Celsius < Temperature

  def initialize(int, tempratures_hash = {})
        @tempratures = tempratures_hash
        @tempratures[:c] = int
  end

  def in_fahrenheit
        super
  end

  def in_celsius
        super
  end

end

class Fahrenheit < Temperature

  def initialize(int, tempratures_hash = {})
        @tempratures = tempratures_hash
        @tempratures[:f] = int
  end

  def in_fahrenheit
        super
  end

  def in_celsius
        super
  end
end