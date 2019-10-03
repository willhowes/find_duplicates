# require_relative '../../code_timer/lib/code_timer.rb'
# include CodeTimer

class Array

  # def find_duplicates
  #   hash_of_elements = Hash.new
  #   self.each do |word|
  #     if self.count(word) > 1
  #       hash_of_elements[word] = true
  #     end
  #   end
  #   hash_of_elements.keys
  # end

  def find_duplicates
    hash_of_elements = {}
    self.each do |x|

      if hash_of_elements.key?(x)
        hash_of_elements[x] = true
      else
        hash_of_elements[x] = false
      end
    end
    duplicates = hash_of_elements.select{|key,value| value == true}
    duplicates.keys
  end
end


# array_find_duplicates = Proc.new { |array| array.find_duplicates }
# p CodeTimer.code_timer_for_arrays_given_size(array_find_duplicates, 20000)
