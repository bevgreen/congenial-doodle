require './lib/visitor'
require './lib/ride'
require './lib/carnival'
require 'pry'

RSpec.describe Carnival do
    before(:each) do
        @visitor1 = Visitor.new('Bruce', 54, '$10')
        @visitor2 = Visitor.new('Tucker', 36, '$5')
        @visitor3 = Visitor.new('Penny', 64, '$15')
        @ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
        @ride2 = Ride.new({ name: 'Ferris Wheel', min_height: 36, admission_fee: 5, excitement: :gentle })
        @ride3 = Ride.new({ name: 'Roller Coaster', min_height: 54, admission_fee: 2, excitement: :thrilling })
        @carnival1 = Carnival.new(14)
    end

    describe '#initialize' do

        it '#duration' do
            expect(@carnival1).to be_an_instance_of(Carnival)
            expect(@carnival1.duration).to eq(14)
        end

        it '#rides' do
            expect(@carnival1.rides).to eq([])
        end
    end

    describe 'methods' do

        it '#add_ride' do
            @carnival1.add_ride(@ride1)
            @carnival1.add_ride(@ride2)
            @carnival1.add_ride(@ride3)
            expect(@carnival1.rides).to eq([@ride1, @ride2, @ride3])
        end
    end
end
