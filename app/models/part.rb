# -*- encoding : utf-8 -*-
class Part < ActiveRecord::Base
  has_and_belongs_to_many :assemblies, -> {
    with_translations([I18n.locale]).
      order('assembly_translations.name asc')
  }
end
