# -*- encoding : utf-8 -*-
class Part < ActiveRecord::Base
  has_and_belongs_to_many :assemblies, -> {
    order(name: :asc)
  }
end
