class Park < ApplicationRecord
  # validates_presence_of :name, :description, :picture
  validates :name, presence: { message: 'Yow' }
  validates_length_of :name, :minimum => 2, :maximum => 20, :allow_blank => true
  validates :description, presence: true
  validates :picture, presence: true
end
