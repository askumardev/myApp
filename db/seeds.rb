# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# # w = Workshop.create([{ name: "MIB", description: "men in black series",
# #                         start_date: Date.today, end_date: Date.today + 7.days,
# #                         start_time: "10 AM", end_time: "10 PM", total_sits: 100,
# #                         remaining_sits:0, registration_fee: 1500 }])

Article.create([{name: "sample1", comment: "sample1 comment"},{name: "sample2", comment: "sample2 comment"}])
# workshops = Workshop.create([
#   {
#     name: 'Ruby on Rails Full Stack Development Bootcamp',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today + 15.days,
#     end_date: Date.today + 22.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 100,
#     remaining_sits: 100,
#     registration_fee: 500
#   },
#   {
#     name: 'Node Js Full Stack Development Bootcamp',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today + 25.days,
#     end_date: Date.today + 32.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 100,
#     remaining_sits: 100,
#     registration_fee: 450
#   },
#   {
#     name: 'Ruby on Rails Ninja Bootcamp',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today + 35.days,
#     end_date: Date.today + 42.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 100,
#     remaining_sits: 100,
#     registration_fee: 750
#   },
#   {
#     name: 'Ruby on Rails Full  - Learn Real World Web Development',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today + 55.days,
#     end_date: Date.today + 62.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 100,
#     remaining_sits: 100,
#     registration_fee: 500
#   },
#   {
#     name: 'Ruby on Rails Meetup conference',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today + 105.days,
#     end_date: Date.today + 108.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 250,
#     remaining_sits: 100,
#     registration_fee: 1000
#   },
#   {
#     name: 'Rails Beginners Bootcamp',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today + 150.days,
#     end_date: Date.today + 165.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 400,
#     remaining_sits: 100,
#     registration_fee: 2000
#   },
#   {
#     name: 'Machine Learning and Data Science Using Python and R - Ninja Bootcamp',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today + 92.days,
#     end_date: Date.today + 99.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 250,
#     remaining_sits: 100,
#     registration_fee: 1000
#   },
#   {
#     name: 'The Ruby Conf 2022',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today + 86.days,
#     end_date: Date.today + 90.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 250,
#     remaining_sits: 100,
#     registration_fee: 1000
#   },
#   {
#     name: 'A Tour To Ruby Programming Language',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today - 19.days,
#     end_date: Date.today - 12.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 250,
#     remaining_sits: 100,
#     registration_fee: 1000
#   },
#   {
#     name: 'A Tour To Ruby on Rails Web Development Framework',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today - 29.days,
#     end_date: Date.today - 22.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 250,
#     remaining_sits: 100,
#     registration_fee: 1000
#   },
#   {
#     name: 'Building Real World Apps with Ruby on Rails',
#     description: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).",
#     start_date: Date.today - 50.days,
#     end_date: Date.today - 37.days,
#     start_time: '10:00 AM',
#     end_time: '4:00 PM',
#     total_sits: 250,
#     remaining_sits: 100,
#     registration_fee: 1000
#   }
# ])

# TodoList.create(title: "Schedule meetings: IT, Accounts, HR", done: false)
# TodoList.create(title: "Visit children's home: perform duties", done: false)

# student = Student.create(name: "kumar", mobile:"9177382092")

# tenth = Degree.create(name: "Tenth")
# plustwo = Degree.create(name: "Plus2")
# bachelors = Degree.create(name: "BTech")
# masters = Degree.create(name: "MTech")

# StudentDegree.create(student_id: student.id, degree_id: tenth.id)
# StudentDegree.create(student_id: student.id, degree_id: plustwo.id)
# StudentDegree.create(student_id: student.id, degree_id: bachelors.id)
# StudentDegree.create(student_id: student.id, degree_id: masters.id)
