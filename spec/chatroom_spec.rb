require 'spec_helper'

describe Chatroom do 

  context 'validations' do 
    it {should validate_presence_of :chatroom}
  end


  context 'mass assignment' do
    it {should allow_mass_assignment_of :chatroom}
  end

  context 'associations' do
    it {should have_many :messages}
  end



end
