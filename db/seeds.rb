
Branch.destroy_all
b1 =  Branch.create :branch_name => "GoGrocery Blacktown", :location => "Blacktown", :email => "blacktown@gogrocery.com", :contact => "0405060708"
b2 =  Branch.create :branch_name => "GoGrocery Complex", :location => "Lalor Park", :email => "lalorpark@gogrocery.com", :contact => "0405011234"
b3 =  Branch.create :branch_name => "GoGrocery CentroMall", :location => "Seven Hills", :email => "sevenhills@gogrocery.com", :contact => "0402340708"
b4 =  Branch.create :branch_name => "GoGrocery Westfield", :location => "Paramatta", :email => "paramatta@gogrocery.com", :contact => "0405060111"
b5 =  Branch.create :branch_name => "GoGrocery ", :location => "Quakers Hills", :email => "quakerhills@gogrocery.com", :contact => "0405345678"

puts "#{ Branch.count } Branches created"


User.destroy_all
u1 = User.create :name => "Leo", :email => "leo@ga.com", :password => "chicken", :admin => true
u2 = User.create :name => "Kuljit", :email => "kuljit@ga.com", :password => "chicken", :admin => true
puts "#{ User.count } users created"


Product.destroy_all
p1 = Product.create :item => "Milk" , :price => 3.59 , :image => "https://shop.coles.com.au/wcsstore/GoGrocery-CAS/images/8/1/5/8150288-th.jpg"
p2 = Product.create :item => "Apples" , :price => 1.00 , :image => "https://shop.coles.com.au/wcsstore/GoGrocery-CAS/images/5/8/9/5899409-th.jpg"
p3 = Product.create :item => "Bananas" , :price => 2.00 , :image => "https://shop.coles.com.au/wcsstore/GoGrocery-CAS/images/2/5/1/2511791-th.jpg"
p4 = Product.create :item => "Carrot" , :price => 3.00 , :image => "https://shop.coles.com.au/wcsstore/GoGrocery-CAS/images/3/6/0/3609392-th.jpg"
p5 = Product.create :item => "Potatoes" , :price => 4.00 , :image => "https://shop.coles.com.au/wcsstore/GoGrocery-CAS/images/4/2/1/4213819-th.jpg"
p6 = Product.create :item => "Apple Juice" , :price => 5.00 , :image => "https://shop.coles.com.au/wcsstore/GoGrocery-CAS/images/8/7/5/8756135-th.jpg"
p7 = Product.create :item => "Orange Juice" , :price => 6.00 , :image => "https://shop.coles.com.au/wcsstore/Coles-CAS/images/7/0/0/7009375-th.jpg"
p8 = Product.create :item => "Biscuits" , :price => 7.00 , :image => "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcReysbkX5po1cX08lu_ylCDrIthVpoa3ZMX69IHwL8PazJhfeAO&usqp=CAU"
p9 = Product.create :item => "Bread" , :price => 8.00 , :image => "https://www.browneyedbaker.com/wp-content/uploads/2016/05/white-bread-53-600.jpg"
p10 = Product.create :item => "Eggs" , :price => 9.00 , :image => "https://shop.coles.com.au/wcsstore/Coles-CAS/images/2/9/1/2915961.jpg"
puts "#{ Product.count } Products created"


Request.destroy_all
r1 = Request.create :branch_id => 1,:branch_name =>"GoGrocery Blacktown", :product_id => 1,:item => "Milk" ,:quantity => 10,:price => 3.59 ,:created_at => 'April 1th 2020'
r2 = Request.create :branch_id => 1, :branch_name =>"GoGrocery Blacktown", :product_id => 2,:item => "Apples" ,:quantity => 10,:price => 1.00 , :created_at => 'April 1th 2020'
r3 = Request.create :branch_id => 1,:branch_name =>"GoGrocery Blacktown", :product_id => 3,:item => "Bananas" ,:quantity => 10,:price => 2.00 , :created_at  => 'April 1th 2020'
r4 = Request.create :branch_id => 1,:branch_name =>"GoGrocery Blacktown", :product_id => 1,:item => "Milk" ,:quantity => 10,:price => 3.00 , :created_at  => 'April 3th 2020'
r5 = Request.create :branch_id => 2,:branch_name => "GoGrocery Complex", :product_id => 2,:item => "Apples" ,:quantity => 10,:price => 4.00 , :created_at => 'April 1th 2020'
r6 = Request.create :branch_id => 2,:branch_name => "GoGrocery Complex", :product_id => 2,:item => "Apples" ,:quantity => 10,:price => 5.00 , :created_at => 'April 1th 2020'
r7 = Request.create :branch_id => 2,:branch_name => "GoGrocery Complex", :product_id => 3,:item => "Bananas" ,:quantity => 10,:price => 6.00 , :created_at  => 'April 1th 2020'
r8 = Request.create :branch_id => 2,:branch_name => "GoGrocery Complex", :product_id => 1,:item => "Milk" ,:quantity => 10,:price => 7.00 , :created_at  => 'April 3th 2020'
puts "#{ Request.count } requests created"

# Associations ###############

puts "User and Branch"
u1.branches << b1 << b2 << b3
u2.branches << b4 << b5
b1.user_id = u1.id
b4.user_id = u2.id

puts "Branch and Request"
b1.requests << r1 << r2 << r3 << r4
b2.requests << r5 << r6 << r7 << r8

puts "Product and Request"
p1.requests << r1 << r4 << r5 << r8
p2.requests << r2 << r6
p3.requests << r3 << r7
