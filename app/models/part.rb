# -*- encoding : utf-8 -*-
class Part < ActiveRecord::Base
  has_and_belongs_to_many :assemblies, -> {
    I18n.with_locale(I18n.locale) do
      includes(:translations).
        order('assembly_translations.name asc')
    end
  }
end
