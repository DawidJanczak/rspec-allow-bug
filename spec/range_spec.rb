require 'rails_helper'

RSpec.describe "issue 1042" do
  it 'matches a range' do
    my_obj = double
    allow(my_obj).to receive(:method).with(4..5).and_return(123)
    expect(my_obj.method(4...5)).to eq(123)
  end
end
