class Dictionary

  def initialize
    @entries = Hash.new
  end

  def entries
    @entries
  end

  def keywords
    @entries.keys.sort
  end

  def add(arg)
    if arg.is_a? Hash
      @entries.merge!(arg)
    else
      @entries[arg] = nil
    end
  end
  def include?(key)
    @entries.include?(key)
  end

  def find(expr)
    h2 = {}
    @entries.each_key do |key|
      if key.start_with?(expr)
        h2.merge!({key => @entries[key]})
      else
        {}
      end
    end
    h2
  end

  def printable
    string = ""
    keywords.each do |key|
      string << "[#{key}] "
      string << "\"#{@entries[key]}\""
      string << "\n"
    end
    string.strip
  end

end
