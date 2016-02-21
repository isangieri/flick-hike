class List < ActiveRecord::Base

  belongs_to :user
  has_many :list_scenes, dependent: :destroy
  has_many :scenes, through: :list_scenes

  accepts_nested_attributes_for :list_scenes, :scenes

end
