# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

['Outerwear', 'Jackets', 'Bombers', 'Blazers', 'Suits', 'Shirts', 'Jeans', 'Shoes'].each do |c|
  Category.create name: c
end

%w(Gucci Zara Puma Nike Armani Brioni).each do |b|
  Brand.create name: b
end

Product.create(
  name: 'MARBLE JACKET',
  price: 99.99,
  size_set: ['L', 'XL'],
  color_set: ['Light grey', 'Black'],
  img_set: ['jacket_11.jpg', 'jacket_12.jpg', 'jacket_13.jpg'],
  brand_id: 2,
  category_id: 2
)

Unit.create(
  product: Product.first,
  size: 'L',
  color: 'Light grey',
  quantity: 5,
  available: true,
  price: 149.99
)


Product.create(
  name: 'MILITARY STYLE COAT',
  price: 129.99,
  size_set: ['L', 'XL'],
  color_set: ['Light grey', 'Black'],
  img_set: ['outer_1.jpg', 'outer_2.jpg', 'outer_13.jpg'],
  brand: Brand.find(1),
  category: Category.find(1)
)

Product.create(
  name: 'PARKA WITH FAUX FUR HOOD',
  price: 199.99,
  size_set: ['L', 'XL', 'XXL'],
  color_set: ['Black'],
  img_set: ['outer_21.jpg', 'outer_22.jpg', 'outer_23.jpg'],
  brand: Brand.find(1),
  category: Category.find(1)
)

Product.create(
  name: 'QUILTED FEATHER DOWN COAT',
  price: 199.99,
  size_set: ['L', 'XL', 'XXL'],
  color_set: ['Black'],
  img_set: ['outer_31.jpg', 'outer_32.jpg', 'outer_33.jpg'],
  brand: Brand.find(1),
  category: Category.find(1)
)

Product.create(
  name: 'Bomber jacket',
  price: 199.99,
  size_set: ['L', 'XL', 'XXL'],
  color_set: ['Black'],
  img_set: ['bomber_1.jpg', 'bomber_2.jpg', 'bomber_3.jpg'],
  brand: Brand.find(3),
  category: Category.find(3)
)

Product.create(
  name: 'BROWN LEATHER BOOT',
  price: 199.99,
  size_set: ['30', '31', '32'],
  color_set: ['Brown'],
  img_set: ['shoes_11.jpg', 'shoes_12.jpg', 'shoes_13.jpg'],
  brand: Brand.find(1),
  category: Category.find(8)
)

Collection.create(
  name: 'New in',
  description: 'Newest items',
  product_set: ['1', '2', '3'],
)

Collection.create(
  name: 'Must have',
  description: 'Best items',
  product_set: ['3', '4', '6'],
)

Collection.create(
  name: 'Sales',
  description: 'Best items',
  product_set: ['1', '4', '5'],
)

Unit.create product: Product.first, color: 'Black', size: 'L', quantity: 10, price: 129.99

Unit.create product: Product.last, color: 'Brown', size: '30', quantity: 10, price: 129.99

User.create email: 'admin@example.com', password: '123456', role: 1

# ['In Progress', 'Pending', 'Processing', 'Shipping', 'Received', 'Fullfilled', 'Canceled', 'Failed'].each do |s|
#   Status.create(
#     name: s,
#     bootstrap_class: 'primary'
#   )
# end
# Status.declare_constants
# Status.first.update(bootstrap_class: 'warning')
