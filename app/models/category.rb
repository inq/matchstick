class Category
  include Mongoid::Document

  field :name, type: String

  has_many :children, class_name: 'Category', inverse_of: :parent
  belongs_to :parent, class_name: 'Category', inverse_of: :children, optional: true
end
