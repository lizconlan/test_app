# -*- encoding : utf-8 -*-

FactoryGirl.define do

  factory :part do
    sequence(:part_number) { |n| "Part #{n}" }
  end

end
