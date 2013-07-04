class Dictionary

  def initialize
    @entries = Hash.new
  end

  def entries
    @entries
  end

  def add(hash)
    @entries.merge!(hash)

  end
  def keywords
    @entries.keys
  end


end
