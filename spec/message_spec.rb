require 'spec_helper'

describe Message do 
  context 'validations' do
    it {should validate_presence_of :chat}
    it {should validate_presence_of :chatroom}
    it {should validate_presence_of :nick}
  end

  context 'mass assignment' do
    it {should allow_mass_assignment_of :chat}
    it {should allow_mass_assignment_of :chatroom}
    it {should allow_mass_assignment_of :nick}

  end
end

