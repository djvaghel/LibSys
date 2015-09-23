class BookTransaction < ActiveRecord::Base
  validates :name, length: {maximum: 14}
end
