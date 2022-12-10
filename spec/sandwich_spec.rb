require_relative '../lib/sandwich'

describe Sandwich do
  context 'when the sandwich should be vegan' do
    let(:sandwich) { Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard']) }

    it 'should not have meat' do
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(sandwich.meat).to eq(false)
    end

    it 'should not have cheese' do
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(sandwich.cheese).to eq(false)
    end

    it 'should not have mayo' do
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(sandwich.condiments).to_not include('mayo')
    end
  end

  context 'when the sandwich should be vegan v2.0' do
    it 'should not have meat' do
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(vegan_sandwich.meat).to eq(false)
    end

    it 'should not have cheese' do
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(vegan_sandwich.cheese).to eq(false)
    end

    it 'should not have mayo' do
      # sandwich = Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
      expect(vegan_sandwich.condiments).to_not include('mayo')
    end
  end

  context 'when the sandwich should not be vegan' do
    before(:each) do
      @sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayo'])
    end

    it 'should have meat' do
      # sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayo'])
      expect(@sandwich.meat).to be(true)
    end

    it 'should have cheese' do
      # sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayo'])
      expect(@sandwich.cheese).to be(true)
    end

    it 'should have mayo' do
      # sandwich = Sandwich.new(true, true, ['lettuce', 'tomato', 'mayo'])
      expect(@sandwich.condiments).to include('mayo')
    end
  end
end

def vegan_sandwich
  Sandwich.new(false, false, ['lettuce', 'tomato', 'mustard'])
end
