$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helper'
require 'clin_var_parser'
require 'clin_var_set'

describe 'ClinVarSet' do
  before(:all) do
    @id = '123'
  end
  it "has an id" do
    cvs = ClinVarSet.new(@id)
    expect(cvs.id).to eql(@id)
  end
  it "has a title" do
    title = "foo"
    cvs = ClinVarSet.new(@id)
    cvs.title = title
    expect(cvs.title).to eql(title)
  end
end
