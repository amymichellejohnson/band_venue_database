class Band <ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  validates(:name, :presence => true)
  before_save(:capitalize)
  # scope(:alphabetize, ->do where {order by Name ASC}) end)

private
  define_method(:capitalize) do
    self.name=(name.titleize)
  end

end
