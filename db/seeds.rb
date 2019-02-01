

require_relative('../models/student')
require_relative('../models/house')

house1 = House.new({'name' => 'gryffindor'})


house1.save


student1 = Student.new({
  'first_name' => 'hermione',
  'last_name' => 'granger',
  'house_id' => house1.id,
  'age' => 12 })


student1.save
