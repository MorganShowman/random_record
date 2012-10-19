require 'spec_helper'

describe RandomRecord do
  context '#record' do
    before(:each) { Record.create(:text => "First record!") }

    it 'should return a single record' do
      Record.random.should == Record.first
    end

    it 'should return an array of 4 records' do
      Record.random(4).count.should == 4
    end

    it 'should not return the same record everytime' do
      Record.create(:text => "Second record!")
      Record.create(:text => "Third record!")
      Record.create(:text => "Fourth record!")

      # Collect the comparison of all pairs not equal to the other.
      # At least one should be not equal.
      [Record.random, Record.random, Record.random].permutation(2).collect{ |a, b| a != b }.any?.should be_true
    end
  end
end
