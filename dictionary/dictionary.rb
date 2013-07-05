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

  def add(arg)
    if arg.is_a? Hash
      @entries.merge!(arg)
    else
      @entries[arg] = nil
    end
  end



end
