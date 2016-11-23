$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..'))
require 'spec_helper'
require 'clin_var_parser'

describe 'ClinVarParser' do
  before(:all) do
    @clinvar_sample_data = File.join(File.dirname(__FILE__), '..', 'fixtures', 'clinvar_single_record.xml')
    @cvp = ClinVarParser.new(@clinvar_sample_data)
    @cvp.parse
  end
  it "has a clinvar xml file" do
    expect(@cvp.clinvar_xml_file).to eql(@clinvar_sample_data)
  end
  it "can parse" do
    expect{@cvp.parse}.not_to raise_error
  end
  it "parses id" do
    expect(@cvp.clin_var_set.id).to eql("11290662")
  end
  it "parses title" do
    expect(@cvp.clin_var_set.title).to eql("NM_032018.6(SPRTN):c.717_718+2delAGGT AND not provided")
  end
  it "parses replaces" do
    expect(@cvp.clin_var_set.replaces).to eql("FAKEFAKEFAKE")
  end
end
