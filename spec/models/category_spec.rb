require 'spec_helper'

describe Category do
  before(:each) do
    @attr = {
      :name => "Example"
    }
  end

  it "should create a new instance given a valid attribute" do
    Category.create!(@attr)
  end

  it "should require a name" do
    no_name_category = Category.new(@attr.merge(:name => ""))
    no_name_category.should_not be_valid
  end

  it "should reject duplicate name" do
    Category.create!(@attr)
    user_with_duplicate_name = Category.new(@attr)
    user_with_duplicate_name.should_not be_valid
  end

  

end
