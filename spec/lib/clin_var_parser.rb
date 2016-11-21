$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helper'
require 'clin_var_parser'

describe 'ClinVarParser' do
  it 'can instantiate' do
    foo = ClinVarParser.new
    expect(foo).to be_kind_of ClinVarParser
  end
end
