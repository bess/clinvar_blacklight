class ClinVarSet
  attr_accessor :id
  attr_accessor :record_status
  attr_accessor :replaces
  attr_accessor :title

  def initialize(id)
    @id = id
    @values_hash = {:id => @id}
  end

  def to_solr
    @values_hash = {
      :id => @id,
      :record_status => @record_status,
      :replaces => @replaces,
      :title => @title
    }
    return @values_hash
  end

end
