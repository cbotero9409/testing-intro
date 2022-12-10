class Sandwich
  attr_accessor :meat, :cheese, :condiments

  def initialize(meat, cheese, condiments=[])
    @meat = meat
    @cheese = cheese
    @condiments = condiments
  end
end
