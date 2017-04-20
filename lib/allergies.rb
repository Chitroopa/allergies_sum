class Fixnum
  define_method(:get_allergies_number) do
    allergies_number = [128,64,32,16,8,4,2,1]
    result_allergies = []
    counter = 0
    user_input = self
    until counter == 8 do
      reminder = user_input % allergies_number[counter]
      quotient = user_input / allergies_number[counter]

      if quotient == 1
        result_allergies.push(allergies_number[counter])
      end

      counter = counter + 1
      user_input = reminder
    end
    result_allergies
  end
  define_method(:allergies) do
    allergies_list = {
       1 => "Eggs",
       2 => "Peanuts",
       4 => "Shellfish",
       8 => "Strawberries",
       16 => "Tomatoes",
       32 => "Chocolate",
       64 => "Pollen",
       128 => "Cats",
    }
    result_array = []
    if allergies_list.include?(self)
      result_array.push(allergies_list.fetch(self))
    else
      allergies_number = self.get_allergies_number()
      allergies_number.each() do |allergy_number|
        result_array.push(allergies_list.fetch(allergy_number))
      end
    end
    result_array
  end
end
