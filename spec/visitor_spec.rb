require './lib/visitor'
require 'pry'

RSpec.describe Visitor do
    before(:each) do
        @visitor1 = Visitor.new('Bruce', 54, '$10')
    end

    describe '#initialize' do

        it '#exists' do
            expect(@visitor1).to be_an_instance_of(Visitor)
        end

        it '#name' do
            expect(@visitor1.name).to eq('Bruce')
        end

        it '#height' do
            expect(@visitor1.height).to eq(54)
        end

        it '#spending_money' do
            expect(@visitor1.spending_money).to eq(10)
        end

        it '#preferences' do
            expect(@visitor1.preferences).to be_an(Array)
        end
    end
end