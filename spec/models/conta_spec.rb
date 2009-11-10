require 'spec_helper'

describe Conta do
  before(:each) do
    @valid_attributes = {
      :nome => "value for nome"
    }
  end

  it "should create a new instance given valid attributes" do
    Conta.create!(@valid_attributes)
  end
end
