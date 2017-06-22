# -*- encoding : utf-8 -*-
class DropAssembliesName < ActiveRecord::Migration
  def change
    remove_column :assemblies, :name, :string
  end
end
