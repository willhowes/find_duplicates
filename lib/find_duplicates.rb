# require_relative '../../code_timer/lib/code_timer.rb'
# include CodeTimer

class Array

  def find_duplicates
    self.to_enum.with_index.reverse_each do |word, index|
      if self.count(word) < 2
        self[index] = self.last
        self.pop
      end
    end
    self.uniq
  end
end


# array_find_duplicates = Proc.new { |array| array.find_duplicates }
# p CodeTimer.code_timer_for_arrays_given_size(array_find_duplicates, 40000)
