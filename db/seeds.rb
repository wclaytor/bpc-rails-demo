# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

##############################
# Robert C. Martin
##############################
bio =
<<-BIO
Robert Cecil Martin (born 5 December 1952), colloquially called "Uncle Bob", is an American software engineer, instructor, and author. He is most recognized for promoting many software design principles and for being an author and signatory of the influential Agile Manifesto.Martin has authored many books and magazine articles. He was the editor-in-chief of C++ Report magazine and served as the first chairman of the Agile Alliance.

BIO

author = Author.create(name: "Robert C. Martin", bio: bio)

# Clean Code
summary = 
<<-SUMMARY
Even bad code can function. But if code isn’t clean, it can bring a development organization to its knees. Every year, countless hours and significant resources are lost because of poorly written code. But it doesn’t have to be that way.

Noted software expert Robert C. Martin presents a revolutionary paradigm with Clean Code: A Handbook of Agile Software Craftsmanship. Martin has teamed up with his colleagues from Object Mentor to distill their best agile practice of cleaning code “on the fly” into a book that will instill within you the values of a software craftsman and make you a better programmer–but only if you work at it.

What kind of work will you be doing? You’ll be reading code–lots of code. And you will be challenged to think about what’s right about that code, and what’s wrong with it. More importantly, you will be challenged to reassess your professional values and your commitment to your craft.

Clean Code is divided into three parts. The first describes the principles, patterns, and practices of writing clean code. The second part consists of several case studies of increasing complexity. Each case study is an exercise in cleaning up code–of transforming a code base that has some problems into one that is sound and efficient. The third part is the payoff: a single chapter containing a list of heuristics and “smells” gathered while creating the case studies. The result is a knowledge base that describes the way we think when we write, read, and clean code. 

SUMMARY

Book.create(title: "Clean Code: A Handbook of Agile Software Craftsmanship", author: author, publication_year: 2008, summary: summary)

# Clean Coder
summary = 
<<-SUMMARY
Programmers who endure and succeed amidst swirling uncertainty and nonstop pressure share a common attribute: They care deeply about the practice of creating software. They treat it as a craft. They are professionals.

In The Clean Coder: A Code of Conduct for Professional Programmers, legendary software expert Robert C. Martin introduces the disciplines, techniques, tools, and practices of true software craftsmanship. This book is packed with practical advice–about everything from estimating and coding to refactoring and testing. It covers much more than technique: It is about attitude. Martin shows how to approach software development with honor, self-respect, and pride; work well and work clean; communicate and estimate faithfully; face difficult decisions with clarity and honesty; and understand that deep knowledge comes with a responsibility to act.

SUMMARY

Book.create(title: "The Clean Coder: A Code of Conduct for Professional Programmers", author: author, publication_year: 2008, summary: summary)



##############################
#  Martin Fowler
##############################
bio =
<<-BIO
For all of my career I've been interested in the design and architecture of software systems, particularly those loosely classed as Enterprise Applications. I firmly believe that poor software design leads to software that is difficult to change in response to growing needs, and encourages buggy software that saps the productivity of computer users everywhere.

I'm always trying to find out what designs are effective, what approaches lead people into trouble, how we can organize our work to do better designs, and how to communicate what I've learned to more people. My books and website are all ways in which I can share what I learn and I'm glad I've found a way to make a living doing this.

BIO

author = Author.create(name: "Martin Fowler", bio: bio)

# Refactoring: Improving the Design of Existing Code
summary = 
<<-SUMMARY
Martin Fowler’s guide to reworking bad code into well-structured code

Refactoring improves the design of existing code and enhances software maintainability, as well as making existing code easier to understand. Original Agile Manifesto signer and software development thought leader, Martin Fowler, provides a catalog of refactorings that explains why you should refactor; how to recognize code that needs refactoring; and how to actually do it successfully, no matter what language you use.

    Refactoring principles: understand the process and general principles of refactoring
    Code smells: recognize “bad smells” in code that signal opportunities to refactor
    Application improvement: quickly apply useful refactorings to make a program easier to comprehend and change
    Building tests: writing good tests increases a programmer’s effectiveness
    Moving features: an important part of refactoring is moving elements between contexts
    Data structures: a collection of refactorings to organize data, an important role in programs
    Conditional Logic: use refactorings to make conditional sections easier to understand
    APIs: modules and their functions are the building blocks of our software, and APIs are the joints that we use to plug them together
    Inheritance: it is both very useful and easy to misuse, and it’s often hard to see the misuse until it’s in the rear-view mirror---refactorings can fix the misuse

Examples are written in JavaScript, but you shouldn’t find it difficult to adapt the refactorings to whatever language you are currently using as they look mostly the same in different languages.

SUMMARY

Book.create(title: "Refactoring: Improving the Design of Existing Code", author: author, publication_year: 2018, summary: summary)


##############################
#  Kent Beck
##############################
bio =
<<-BIO
Kent Beck is the founder and director of Three Rivers Institute (TRI). His career has combined the practice of software development with reflection, innovation, and communication. His contributions to software development include patterns for software, the rediscovery of test-first programming, the xUnit family of developer testing tools, and Extreme Programming. He currently divides his time between writing, programming, and coaching. Beck is the author/co-author of Implementation Patterns, Extreme Programming Explained: Embrace Change 2nd Edition, Contributing to Eclipse, Test-Driven Development: By Example, Planning Extreme Programming, Smalltalk Best Practice Patterns, and the JUnit Pocket Guide. He received his B.S. and M.S. in Computer Science from the University of Oregon.

BIO

author = Author.create(name: "Kent Beck", bio: bio)

# Test Driven Development: By Example
summary = 
<<-SUMMARY
Quite simply, test-driven development is meant to eliminate fear in application development. While some fear is healthy (often viewed as a conscience that tells programmers to "be careful!"), the author believes that byproducts of fear include tentative, grumpy, and uncommunicative programmers who are unable to absorb constructive criticism. When programming teams buy into TDD, they immediately see positive results. They eliminate the fear involved in their jobs, and are better equipped to tackle the difficult challenges that face them. TDD eliminates tentative traits, it teaches programmers to communicate, and it encourages team members to seek out criticism However, even the author admits that grumpiness must be worked out individually! In short, the premise behind TDD is that code should be continually tested and refactored. Kent Beck teaches programmers by example, so they can painlessly and dramatically increase the quality of their work.

SUMMARY

Book.create(title: "Test Driven Development: By Example", author: author, publication_year: 2021, summary: summary)


##############################
#  Gayle Laakmann McDowell
##############################
bio =
<<-BIO
Gayle Laakmann McDowell is an author, consultant, and founder focusing on improving tech hiring for both the interviewer and the candidate.

Gayle has worked as an engineer for Google, Microsoft, and Apple. Most recently, at Google, she served on the hiring committee where she interviewed hundreds of candidates and evaluated thousands more. It was here that she discovered the disconnect between candidates, their skill set, and their interview performance. 

Though her company, CareerCup, Gayle has worked with many of the top tech companies to reform their hiring practices and implement interviewer training programs.

She is the author and creator the best-selling Cracking the Interview & Career series: Cracking the Coding Interview, Cracking the PM Interview (co-authored with Jackie Bavaro), Cracking the PM Career (co-authored with Jackie Bavaro), and Cracking the Tech Career

Gayle holds a bachelor's and master's in Computer Science from the University of Pennsylvania and an MBA from the Wharton School of Business. 

She currently consults, writes, and codes from her home in Palo Alto, California. She can be found online at gayle.com, twitter (@gayle), and facebook (@gayle). 

BIO

author = Author.create(name: "Gayle Laakmann McDowell", bio: bio)

# Cracking the Coding Interview: 189 Programming Questions and Solutions
summary = 
<<-SUMMARY
Quite simply, test-driven development is meant to eliminate fear in application development. While some fear is healthy (often viewed as a conscience that tells programmers to "be careful!"), the author believes that byproducts of fear include tentative, grumpy, and uncommunicative programmers who are unable to absorb constructive criticism. When programming teams buy into TDD, they immediately see positive results. They eliminate the fear involved in their jobs, and are better equipped to tackle the difficult challenges that face them. TDD eliminates tentative traits, it teaches programmers to communicate, and it encourages team members to seek out criticism However, even the author admits that grumpiness must be worked out individually! In short, the premise behind TDD is that code should be continually tested and refactored. Kent Beck teaches programmers by example, so they can painlessly and dramatically increase the quality of their work.

SUMMARY

Book.create(title: "Cracking the Coding Interview: 189 Programming Questions and Solutions", author: author, publication_year: 2015, summary: summary)



##############################
#  David Farley
##############################
bio =
<<-BIO
Dave Farley is co-author of the award winning book 'Continuous Delivery' and a contributor to the 'Reactive Manifesto'. He has been having fun with computers for over 30 years. During that period he has worked on most types of software, from firmware, through tinkering with operating systems and device drivers, to writing games, and commercial applications of all shapes and sizes. In recent years Dave has worked in the field of low-latency systems and was a contributor to the Duke award-winning 'LMAX Disruptor', open-source project.

He started working in large scale distributed systems about 25 years ago, doing research into the development of loose-coupled, message-based systems-a forerunner of today's Micro-Service architecture. He has a wide range of experience leading the development of complex software in teams, both large and small, in the UK and USA. 

Dave was an early adopter of agile development techniques, employing iterative development, continuous integration and significant levels of automated testing on commercial projects from the early 1990s. He honed his approach to agile development in his four and a half year stint at ThoughtWorks where he was a technical principal working on some of their biggest and most challenging projects. 

Dave is currently working as an independent software developer and consultant.

BIO

author = Author.create(name: "David Farley", bio: bio)

# Modern Software Engineering: Doing What Works to Build Better Software Faster
summary = 
<<-SUMMARY
Improve Your Creativity, Effectiveness, and Ultimately, Your Code

In Modern Software Engineering, continuous delivery pioneer David Farley helps software professionals think about their work more effectively, manage it more successfully, and genuinely improve the quality of their applications, their lives, and the lives of their colleagues.

Writing for programmers, managers, and technical leads at all levels of experience, Farley illuminates durable principles at the heart of effective software development. He distills the discipline into two core exercises: learning and exploration and managing complexity. For each, he defines principles that can help you improve everything from your mindset to the quality of your code, and describes approaches proven to promote success.

Farley's ideas and techniques cohere into a unified, scientific, and foundational approach to solving practical software development problems within realistic economic constraints. This general, durable, and pervasive approach to software engineering can help you solve problems you haven't encountered yet, using today's technologies and tomorrow's. It offers you deeper insight into what you do every day, helping you create better software, faster, with more pleasure and personal fulfillment.

    Clarify what you're trying to accomplish
    Choose your tools based on sensible criteria
    Organize work and systems to facilitate continuing incremental progress
    Evaluate your progress toward thriving systems, not just more "legacy code"
    Gain more value from experimentation and empiricism
    Stay in control as systems grow more complex
    Achieve rigor without too much rigidity
    Learn from history and experience
    Distinguish "good" new software development ideas from "bad" ones

SUMMARY

Book.create(title: "Modern Software Engineering: Doing What Works to Build Better Software Faster", author: author, publication_year: 2021, summary: summary)



##############################
#  Esther Derby, Diana Larsen
##############################
bio =
<<-BIO
Esther Derby

Esther Derby draws on four decades of experience leading, observing, and living through organizational change. Esther started her career as a programmer, and quickly realized that while her job description referred to computers, her real work involved changing the way people worked, and supporting them though that process. In 1997, she founded esther derby associates, inc., and works with a broad array of clients from Fortune 500 companies to start ups. Her approach blends attention to humans and deep knowledge of complex adaptive systems. 

In addition to consulting, Esther has an extensive background in designing and leading experiential learning. She teaches workshops both on-line and in-person around the world. Her workshops support leaders to explore how they can adapt the environment to amplify empowerment, engage in joint problem-solving, and evolve their systems towards better results.

Esther is co-author of Behind Closed Doors: Secrets of Great Management (2005), a guide for people as they make the transition from technical work to management work, and Agile Retrospectives: Making Good Teams Great (2006), a process for teams to inspect, adapt, and improve the way they work. She has also published hundreds of articles, many of which are available on her website, www.estherderby.com.

Esther lives in northern Minnesota, near the shores of Lake Superior. She enjoys cooking from her northern garden, making garments with pockets, quilting, and baking bread.

Esther has an MA in Organizational Leadership and a certificate in Human System Dynamics.

Have a listen to my podcast on nurturing change in your organization. https://changebyattraction.simplecast.com/

---

Diana Larsen

Some folks call me a Visionary Pragmatist, others call me one of the Retrospective Goddesses. I like to think of myself as helping to build capability and capacity with teams, leaders, and organizations. 

I prefer to collaborate. And I'm co-author of three books. 

* Lead without Blame: Building Resilient Learning Teams

* Liftoff 2nd ed.: Start and Sustain Successful Agile Teams

*Agile Retrospectives: Making Good Teams Great

*Five Rules for Accelerated Learning

*Agile Fluency® Model co-originator

*The Art of Agile Development, second edition, contributor 

Drawing on 30+ years of experience working with technical professionals and leaders, people tell me that I find possibilities where others perceive obstacles. I take a pragmatic approach to promoting workplaces where innovation, inspiration, and imagination flourish. 

Here's some official stuff:

As a founding member and director of the Agile Fluency Project http://agilefluency.org , Diana Larsen delivers ways to chart a course for teams, create alignment with management, and secure organizational support for continuous learning and improvement. As president and owner of Eos House Consulting, Inc. dba as dianalarsen.com, she leads a practice area for Agile software development, team enablement, and coaching/consulting for Agile transitions. Diana contributes to the growth of workplaces where people say, “I love my work; this is the best job ever!” 

Diana Larsen also delivers inspiring conference keynote talks and facilitates productive Open Space Technology events. As a volunteer, she has contributed as a leader with Agile Alliance, Organization Design Forum, Agile Open Northwest, and more.


BIO

author = Author.create(name: "Esther Derby, Diana Larsen", bio: bio)

# Agile Retrospectives: Making Good Teams Great
summary = 
<<-SUMMARY


Project retrospectives help teams examine what went right and what went wrong on a project. But traditionally, retrospectives (also known as “post-mortems”) are only held at the end of the project—too late to help. You need agile retrospectives that are iterative and incremental. You need to accurately find and fix problems to help the team today.

Now Esther and Diana show you the tools, tricks and tips you need to fix the problems you face on a software development project on an on-going basis. You’ll see how to architect retrospectives in general, how to design them specifically for your team and organization, how to run them effectively, how to make the needed changes and how to scale these techniques up. You’ll learn how to deal with problems, and implement solutions effectively throughout the project—not just at the end.

This book will help you:

    Design and run effective retrospectives
    Learn how to find and fix problems
    Find and reinforce team strengths
    Address people issues as well as technological
    Use tools and recipes proven in the real world


With regular tune-ups, your team will hum like a precise, world-class orchestra.

SUMMARY

Book.create(title: "Agile Retrospectives: Making Good Teams Great", author: author, publication_year: 2021, summary: summary)

##############################
#  Gang of Four
##############################
bio =
<<-BIO
The authors Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides are often referred to as the GoF, or Gang of Four.

BIO

author = Author.create(name: "Gang of Four", bio: bio)

# Design Patterns: Elements of Reusable Object-Oriented Software
summary = 
<<-SUMMARY
The Gang of Four’s seminal catalog of 23 patterns to solve commonly occurring design problems

Patterns allow designers to create more flexible, elegant, and ultimately reusable designs without having to rediscover the design solutions themselves. Highly influential, Design Patterns is a modern classic that introduces what patterns are and how they can help you design object-oriented software and provides a catalog of simple solutions for those already programming in at last one object-oriented programming language.

 Each pattern:

    Describes the circumstances in which it is applicable, when it can be applied in view of other design constraints, and the consequences and trade-offs of using the pattern within a larger design
    Is compiled from real systems and based on real-world examples
    Includes downloadable C++ source code that demonstrates how patterns can be implemented and Python

From the preface: “Once you the design patterns and have had an ‘Aha!’ (and not just a ‘Huh?’) experience with them, you won't ever think about object-oriented design in the same way. You'll have insights that can make your own designs more flexible, modular, reusable, and understandable - which is why you're interested in object-oriented technology in the first place, right?”

SUMMARY

Book.create(title: "Design Patterns: Elements of Reusable Object-Oriented Software", author: author, publication_year: 1994, summary: summary)


##############################
#  Russ Olsen
##############################
bio =
<<-BIO
Russ Olsen's career spans a couple of decades, during which he has written graphics device drivers, geographic information systems and document management systems. Russ is currently a senior engineer with FGM, where he builds information systems with both J2EE and Rails. Russ spends a lot of his otherwise free time writing about technology, much of which you can read on his blog.

BIO

author = Author.create(name: "Russ Olsen", bio: bio)

# Eloquent Ruby
summary = 
<<-SUMMARY
It’s easy to write correct Ruby code, but to gain the fluency needed to write great Ruby code, you must go beyond syntax and absorb the “Ruby way” of thinking and problem solving. In Eloquent Ruby, Russ Olsen helps you write Ruby like true Rubyists do–so you can leverage its immense, surprising power.

Olsen draws on years of experience internalizing the Ruby culture and teaching Ruby to other programmers. He guides you to the “Ah Ha!” moments when it suddenly becomes clear why Ruby works the way it does, and how you can take advantage of this language’s elegance and expressiveness.
    
Eloquent Ruby starts small, answering tactical questions focused on a single statement, method, test, or bug. You’ll learn how to write code that actually looks like Ruby (not Java or C#); why Ruby has so many control structures; how to use strings, expressions, and symbols; and what dynamic typing is really good for.
    
Next, the book addresses bigger questions related to building methods and classes. You’ll discover why Ruby classes contain so many tiny methods, when to use operator overloading, and when to avoid it. Olsen explains how to write Ruby code that writes its own code–and why you’ll want to. He concludes with powerful project-level features and techniques ranging from gems to Domain Specific Languages.
    
A part of the renowned Addison-Wesley Professional Ruby Series, Eloquent Ruby will help you “put on your Ruby-colored glasses” and get results that make you a true believer.
    
SUMMARY

Book.create(title: "Eloquent Ruby", author: author, publication_year: 2011, summary: summary)



##############################
#  Sandi Metz
##############################
bio =
<<-BIO
Sandi Metz is an American software engineer and author. She is the author of Practical Object-Oriented Design in Ruby.  Metz teaches workshops around the country for new and experienced developers, emphasizing good programming habits and practices.
Metz is known for her books and articles on object-oriented programming and her statement regarding the Don't repeat yourself principle, that duplication is cheaper than the wrong abstraction.

BIO

author = Author.create(name: "Sandi Metz", bio: bio)

# Eloquent Ruby
summary = 
<<-SUMMARY
The Complete Guide to Writing Maintainable, Manageable, Pleasing, and Powerful Object-Oriented Applications

Object-oriented programming languages exist to help you create beautiful, straightforward applications that are easy to change and simple to extend. Unfortunately, the world is awash with object-oriented (OO) applications that are difficult to understand and expensive to change. Practical Object-Oriented Design, Second Edition, immerses you in an OO mindset and teaches you powerful, real-world, object-oriented design techniques with simple and practical examples.

Sandi Metz demonstrates how to build new applications that can “survive success” and repair existing applications that have become impossible to change. Each technique is illustrated with extended examples in the easy-to-understand Ruby programming language, all downloadable from the companion website, poodr.com. Fully updated for Ruby 2.5, this guide shows how to

    Decide what belongs in a single class
    Avoid entangling objects that should be kept separate
    Define flexible interfaces among objects
    Reduce programming overhead costs with duck typing
    Successfully apply inheritance
    Build objects via composition

Whatever your previous object-oriented experience, this concise guide will help you achieve the superior outcomes you’re looking for.

SUMMARY

Book.create(title: "Eloquent Ruby", author: author, publication_year: 2018, summary: summary)
