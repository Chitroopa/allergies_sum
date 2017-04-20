require('rspec')
require('allergies')

describe('Fixnum#allergies') do
  it("return the name of allergy for inputted number") do
    expect(2.allergies()).to(eq(["peanuts"]))
  end
  it("return the array of allergy numbers for inputted number") do
    expect(255.get_allergies_number()).to(eq([128,64,32,16,8,4,2,1]))
  end
  it("return the array of allergies for inputted number") do
    expect(3.allergies()).to(eq(["peanuts", "eggs"]))
  end
end
