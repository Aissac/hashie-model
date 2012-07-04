require 'spec_helper'

describe HashieModel::Money do
  describe ".coerce" do
    subject { HashieModel::Money.coerce(value) }
    
    context "when value is a Money object" do
      let(:value) { "45.18".to_money(:GBP) }
      it { should == Money.new(4518, :GBP) }
    end
    
    context "when the value is not a Money object" do
      let(:value) { "45.18" }
      it { should == Money.new(4518, :USD) }
    end
  end
end
