require 'spec_helper'

describe "Testing" do
  it "does a thing" do
    definition = 'BOOLEAN NOT NULL'
    match = /((\w*) NULL)/i.match(definition)
    return true unless match

    res = match[2].downcase == 'not' ? false : true
    match.inspect
    expect(res).to be false
  end
end
