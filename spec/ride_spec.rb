require './lib/visitor'
require './lib/ride'
require 'pry'

RSpec.describe Ride do
    before(:each) do
        @ride1 = Ride.new({ name: 'Carousel', min_height: 24, admission_fee: 1, excitement: :gentle })
    end

    describe '#initialize' do

        it '#exists' do
            expect(@ride1).to be_an_instance_of(Ride)
        end

        it 'name' do
            expect(@ride1.name).to eq('Carousel')
        end

        it '#min_height' do
            expect(@ride1.min_height).to eq(24)
        end

        it '#admission_fee' do
            expect(@ride1.admission_fee).to eq(1)
        end

        it '#excitement' do
            expect(@ride1.excitement).to eq(:gentle)
        end

        it '#total_revenue' do
            expect(@ride1.total_revenue).to eq(0)
        end
    end
end