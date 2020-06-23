# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

teachers = Teacher.create([
    {
        name: "Xin Chen",
        title: "Asscoiate Professor",
        username: "chenxin",
        email: "chenxin@email.com",
        passport_no: "CN090909",
        country: "China"
    },
    {
        name: "Hui Lan",
        title: "Lecturer",
        username: "lanhui",
        email: "lanhui@email.com",
        passport_no: "CN101010",
        country: "China"
    },
    {
        name: "Jon Mikel",
        title: "Professor",
        username: "jonmikel",
        email: "jonmikel@email.com",
        passport_no: "US202010",
        country: "United States"
    }
])

portals = Portal.create([
    {
        name: "Software Engineering",
        description: "A software engineering course for bachelors degree.",
        semester: "Fall-2018",
        teacher: teachers.first
    },
    {
        name: "Advanced Database Technology",
        description: "A database technology course for all levels.",
        semester: "Fall-2018",
        teacher: teachers.first
    },
    {
        name: "Android Development",
        description: "A course on mobile design and development with Android.",
        semester: "Spring-2019",
        teacher: teachers.first
    },
    {
        name: "Object-Oriented Programming I",
        description: "A programming language course with Python level I.",
        semester: "Spring-2018",
        teacher: teachers.first
    },
    {
        name: "Information Security",
        description: "A course that discusses how to protect information.",
        semester: "Fall-2019",
        teacher: teachers.first
    },
    {
        name: "Object-Oriented Programming II",
        description: "A programming language course with Python level II.",
        semester: "Fall-2019",
        teacher: teachers.first
    }
])