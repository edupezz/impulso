FactoryBot.define do
    factory :product do
        name { }
        value { rand(100) }
        restaurant
    end
end