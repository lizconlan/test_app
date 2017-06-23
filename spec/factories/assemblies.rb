# -*- encoding : utf-8 -*-

FactoryGirl.define do

  factory :assembly do
    sequence(:name) { |n| "Assembly #{n}" }
  end

end
