# frozen_string_literal: true

class Info < ApplicationRecord
  validates :key, presence: true
  validates :value, presence: true
end
