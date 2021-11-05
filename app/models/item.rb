# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 5 }
end
