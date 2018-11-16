Booking.destroy_all
Service.destroy_all
User.destroy_all

puts "Creating users..."
user_attributes = [
  {
    first_name: 'Alexandre',
    last_name: 'Roubo',
    email: 'alex@email.com',
    password: '123456',
    hairstylist: false
  },
  {
    first_name: 'Nancy',
    last_name: 'Nan',
    email: 'nancy@email.com',
    password: '123456',
    hairstylist: true
  },
  {
    first_name: 'Luc',
    last_name: 'Antho',
    email: 'luc@email.com',
    password: '123456',
    hairstylist: false
  },
  {
    first_name: 'Vlad',
    last_name: 'Rango',
    email: 'vlad@email.com',
    password: '123456',
    hairstylist: true
  }
]
puts "Users created!"

puts "Creating services..."
service_attributes = [
  {
    name: 'Haircut',
    description: 'Beautiful haircut for men, women or children. I can cut any type of hair and style to your desire!',
    price: 20
  },
  {
    name: 'Shampoo and haircut',
    description: 'Shampoo and conditioner wash for any type of hair followed by an awesome haircut',
    price: 50
  },
  {
    name: 'Coloring',
    description: 'I have a wide variety of colors. You will be able to pick and I will color your hair right at home!',
    price: 120
  }
]
puts "Services created!"

puts "Creating bookings..."
booking_attributes = [
  {
    date: DateTime.new(2018,12,1,17),
    status: 'Pending'
  },
  {
    date: DateTime.new(2018,12,22,18),
    status: 'Pending'
  },
  {
    date: DateTime.new(2019,1,5,14),
    status: 'Pending'
  }
]
puts "Bookings created!"

user_attributes.each do |attrs|
  user = User.create!(attrs)

  if user.hairstylist == true
    service_attributes.each do |serv_attrs|
      service = Service.new(serv_attrs)
      service.user = user
      service.save!
    end
  end
end

booking_attributes.each do |book_attrs|
  user = User.where(hairstylist: false).sample
  service = Service.all.sample
  booking = Booking.new(book_attrs)
  booking.user = user
  booking.service = service
  booking.save!
end


