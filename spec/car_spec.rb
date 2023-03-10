require './lib/car'
require 'rspec'

RSpec.describe Car do
  it 'exists' do
    car = Car.new("Ford Mustang", 1500, 36)
    expect(car).to be_an(Car)
  end

  it 'has attributes' do
    car = Car.new("Ford Mustang", 1500, 36)
    expect(car.make).to eq("Ford")
    expect(car.model).to eq("Mustang")
    expect(car.monthly_payment).to eq(1500)
    expect(car.loan_length).to eq(36)
    
  end

  it 'has a total cost' do
    car = Car.new("Ford Mustang", 1500, 36)
    expect(car.total_cost).to eq(54000)
  end

  it 'has color' do
    car = Car.new("Ford Mustang", 1500, 36)
    expect(car.color).to eq(nil)
  end

  it 'has been painted' do
    car = Car.new("Ford Mustang", 1500, 36)
    car.paint!(:blue)
    expect(car.color).to eq(:blue)
  end
end