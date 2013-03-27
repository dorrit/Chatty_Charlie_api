require 'spec_helper'

describe Message do 
  it {should validate_presence_of :chat}
  it {should validate_presence_of :chatroom}
  it {should validate_presence_of :nick}
end

