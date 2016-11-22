$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helper'
require 'clin_var_parser'
require 'clin_var_document'
require 'clin_var_set'

describe 'ClinVarSet' do
  it "has an id" do
    id = '123'
    cvs = ClinVarSet.new(id)
    expect(cvs.id).to eql(id)
  end
end
