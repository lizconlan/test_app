# -*- encoding : utf-8 -*-
class TranslateAssemblies < ActiveRecord::Migration
  def self.up
    Assembly.create_translation_table!({
      :name => :string
    }, {
      :migrate_data => true
    })
  end

  def self.down
    Assembly.drop_translation_table! :migrate_data => true
  end
end
