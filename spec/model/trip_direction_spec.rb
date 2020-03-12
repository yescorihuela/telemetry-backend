require 'rails_helper'

RSpec.describe TripDirection, type: :model do
  subject { TripDirection.new(
    departure: 'Terminal Estacion Central - Santiago',
    arrival: 'Terminal Peor Es Nada - Peor Es Nada',
    direction: 'GOING')
  }

  before { subject.save }

  it 'Departure should be present' do
    subject.departure = nil
    expect(subject).to_not be_valid
  end

  it 'Arrival should be present' do
    subject.arrival = nil
    expect(subject).to_not be_valid
  end

  it 'Direction should be present' do
    subject.direction = nil
    expect(subject).to_not be_valid
  end

  it 'Departure should not be long' do
    subject.departure = 'x' * 150
    expect(subject).to_not be_valid
  end

  it 'Arrival should not be long' do
    subject.arrival = 'x' * 150
    expect(subject).to_not be_valid
  end

  it 'Direction should not be long' do
    subject.direction = 'x' * 30
    expect(subject).to_not be_valid
  end

end