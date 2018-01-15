require 'rails_helper'

RSpec.describe "issue 1042" do
  it 'matches a range' do
    my_obj = double
    allow(my_obj).to receive(:method).with(4..5).and_return(123)
    # This assertion fails as it should when `spec_helper` is required,
    # but passes when `rails_helper` is required.
    expect(my_obj.method(4...5)).to eq(123)
    # This assertion will fail regardless of which helper we require
    expect(7..8).to eq(7...8)
  end
end
