FactoryBot.define do
  factory :form do
    title { FFaker::Lorem.phrase }
    description { FFaker::Lore.phrase }
    user
    primary_color { "##{FFaker::Color.hex_code}" }
    enable { FFaker::Boolean.maybe }
  end
end
