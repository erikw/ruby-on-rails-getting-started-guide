# frozen_string_literal: true

class Item < ApplicationRecord
  include Visible
  has_many :comments

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 5 }
end
