$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helper'
require 'clin_var_parser'
require 'clin_var_set'

describe 'ClinVarSet' do
  before(:all) do
    @id = '123'
    @cvs = ClinVarSet.new(@id)
  end
  it "has an id" do
    expect(@cvs.id).to eql(@id)
  end
  it "has a title" do
    title = "foo"
    @cvs.title = title
    expect(@cvs.title).to eql(title)
  end
  it "can output a hash of its values" do
    expect(@cvs.to_solr).to be_kind_of(Hash)
  end
end
