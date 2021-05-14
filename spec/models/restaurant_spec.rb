require 'rails_helper'

## mostrar a sintxe do RSpec

RSpec.describe Restaurant do
    context 'Testing RSpec' do
        it do
            expect(1).to eq 1
        end
    end
end

RSpec.describe Restaurant do
    it{ should have_many(:products)}
    
    context 'testing total of products' do
        it 'Return a total of products for a specific restaurant' do
            restaurant = Restaurant.create(name: 'restaurante1', address: 'endereco1')

            product1 = Product.create(restaurant: restaurant, name: 'p1', value: 10)
            product2 = Product.create(restaurant: restaurant, name: 'p2', value: 20)
            product3 = Product.create(restaurant: restaurant, name: 'p3', value: 30)

            expect(restaurant.total_of_products).to eq 3
        end
    end
end