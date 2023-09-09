class Library < ApplicationRecord
  has_many :exercises, dependent: :destroy
end
