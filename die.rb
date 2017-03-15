class Die

attr_reader

  def initialize(numbers_array)
    
    @numbers_array = numbers_array

  end

  def roll

   return @numbers_array.sample()
   
  end

end