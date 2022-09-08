# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Category.create!(id: 1, name: 'Poleras', description: 'Prenda de vestir')
Category.create!(id: 2, name: 'Gorros', description: 'Prenda de vestir')
Category.create!(id: 3, name: 'Bolsas', description: 'Prenda de vestir')
Category.create!(id: 4, name: 'Tapabocas', description: 'Prenda de vestir')
Category.create!(id: 5, name: 'Stickers', description: 'Prenda de vestir')
Product.create!(title: 'Gorro Pain Akatsuki', price: 5.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/1/prod1.png')), category_id: 2) # 1
Product.create!(title: 'Polera Sukuna', price: 7.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/2/prod2.png')), category_id: 1) # 2
Product.create!(title: 'Polera rosada Misa', price: 8.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/3/prod3.png')), category_id: 1) # 3
Product.create!(title: 'Polera Misa Amane', price: 7.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/4/prod4.png')), category_id: 1) # 4
Product.create!(title: 'Gorro Tanjiro Kamado', price: 5.500, image: File.open(File.join(Rails.root,'public//uploads/product/image/5/prod5.png')), category_id: 2) # 5
Product.create!(title: 'Polera Jojo’s Bizarre Adventure', price: 7.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/6/prod6.png')), category_id: 1) # 6
Product.create!(title: 'Gorro Rengoku Kyojuro', price: 5.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/7/prod7.png')), category_id: 2) # 7
Product.create!(title: 'Polera Nezuko Kamado', price: 7.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/8/prod8.png')), category_id: 1) # 8
Product.create!(title: 'Gorro Muzan Kibutsuji', price: 5.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/9/prod9.png')), category_id: 2) # 9
Product.create!(title: 'Polera Tomioka Giyuu', price: 7.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/10/prod10.png')), category_id: 1) # 10
Product.create!(title: 'Polera Nezuko Kamado', price: 7.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/11/prod11.png')), category_id: 1) # 11
Product.create!(title: 'Polera Tokyo Revengers', price: 7.500, image: File.open(File.join(Rails.root,'public/uploads/product/image/12/prod12.png')), category_id: 1) # 12