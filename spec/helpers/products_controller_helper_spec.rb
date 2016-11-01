require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProductsControllerHelper. For example:
#
# describe ProductsControllerHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ProductsControllerHelper, type: :helper do
  describe 'index' do
    it 'render no product when there is no product to render'
    it 'render 1 product when there is one product to render'
  end

  describe 'show' do
    it 'should not render the product when the id param is invalid'
    it 'should not render the product when the is no id param'
    it 'render the product when a valid id is provided'
  end
end
