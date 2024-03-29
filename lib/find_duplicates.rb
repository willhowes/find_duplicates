# require_relative '../../code_timer/lib/code_timer.rb'
# include CodeTimer

class Array
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
# CodeTimer.save_to_spreadsheet(code_timer_for_arrays(array_find_duplicates), 'find_duplicates_results')
