require "spec_helper"

include FoodGem
include DLLModule

FOOD_DATA_FILENAME = "docs/input/food-data.txt"
SAMPLES_DATA_FILENAME = "docs/input/samples-data.txt"

RSpec.describe Food do
  
  before :all do
    @food_array = read_data(FOOD_DATA_FILENAME, SAMPLES_DATA_FILENAME)
    @apple = @food_array[0]
    @yogurt = @food_array[1]
    @chocolate = @food_array[2]
  end
  
  context "Calcular AIBC para cada alimento" do
    it "Calcular el aibc de la Manzana para el índividuo 1" do
      expect(@apple.get_aibc_of_person(1).round(3)).to eq(27.5)
    end
    it "Calcular el aibc de la Manzana para el índividuo 2" do
      expect(@apple.get_aibc_of_person(2).round(3)).to eq(183.25)
    end
    it "Calcular el aibc de la Yogurt para el índividuo 1" do
      expect(@yogurt.get_aibc_of_person(1).round(3)).to eq(21.75)
    end
    it "Calcular el aibc de la Yogurt para el índividuo 2" do
      expect(@yogurt.get_aibc_of_person(2).round(3)).to eq(138.5)
    end
    it "Calcular el aibc de la Chocolate para el índividuo 1" do
      expect(@chocolate.get_aibc_of_person(1).round(3)).to eq(7.5)
    end
  end

  
end