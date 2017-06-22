# -*- encoding : utf-8 -*-
class Assembly < ActiveRecord::Base
  has_and_belongs_to_many :parts
end
