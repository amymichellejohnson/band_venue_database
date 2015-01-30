class Band <ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  validates(:name, :presence => true)
  before_save(:capitalize)
  default_scope(:order => 'bands.name() ASC')

private
  define_method(:capitalize) do
    self.name=(name.titleize)
  end

end
