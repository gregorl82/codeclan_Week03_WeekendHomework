require('pry')
require_relative('models/customer.rb')
require_relative('models/film.rb')
require_relative('models/ticket.rb')

Customer.delete_all()
Film.delete_all()

customer1 = Customer.new(
  {
    'name' => 'Jennifer Williamson',
    'funds' => 22.50
  }
)

customer1.save()

customer2 = Customer.new(
  {
    'name' => 'Lisa Cameron',
    'funds' => 17.00
  }
)

customer2.save()

customer3 = Customer.new(
  {
    'name' => 'Michael Pringle',
    'funds' => 15.50
  }
)

customer3.save()

film1 = Film.new(
  {
    'title' => 'The Imitation Game',
    'price' => 5.25
  }
)

film1.save()

film2 = Film.new(
  {
    'title' => 'Solo: A Star Wars Story 3D',
    'price' => 7.50
  }
)

film2.save()

film3 = Film.new(
  {
    'title' => 'Toy Story 4',
    'price' => 3.95
  }
)

film3.save()

ticket1 = Ticket.new(
  {
    'film_id' => customer1.id,
    'customer_id' => film1.id
  }
)

ticket1.save()

binding.pry

nil
