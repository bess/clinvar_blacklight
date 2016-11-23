class ClinVarSet
  attr_accessor :id
  attr_accessor :record_status
  attr_accessor :replaces
  attr_accessor :title

  def initialize(id)
    @id = id
  end

end
