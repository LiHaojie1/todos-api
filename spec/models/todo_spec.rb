require 'rails_helper'
#Test Suit for Todo Model
RSpec.describe Todo, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  #Association Test
  #ensure Todo model has 1:m relationship to Item model
  it{ should have_many(:items).dependent(:destroy)}
  #Validation Test
  #ensure columns are present before saving
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:created_by) }
end
