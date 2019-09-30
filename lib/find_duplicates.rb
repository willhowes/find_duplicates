class Array
  def find_duplicates
    return [] if self.length == 1

    if self.length > 2
      new_array = []
      self.each do |word|
        if self.count(word) > 1
          new_array << word
        end
      end
      return new_array.uniq
    end
    [self[0]]
  end
end
