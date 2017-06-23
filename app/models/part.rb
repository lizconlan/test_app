# -*- encoding : utf-8 -*-
class Part < ActiveRecord::Base
  has_and_belongs_to_many :assemblies, -> {
    joins(:translations).
      order('assembly_translations.name asc')
  }
end
