


import '../model/course.dart';

final coursesData = [
  Course(
    id: '1',
    imageUrl: 'assets/images/image1.jpeg',
    rating: '4.5',
    isBookmarked: false,
    courseTitle: 'Web Development Bootcamp',
    instructor: 'Dr. Angela Yu',
    price: "\$29.00",
    duration: '30hr 30mins',
    sectionsLength: '10 Lessons',
    sectionLaps: sections,
    courseTag: tags[0],
  ),
  Course(
    id: '2',
    imageUrl: 'assets/images/image2.jpeg',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'Practical Leadership Skills',
    instructor: 'Chris Croft',
    price: "\$20.00",
    duration: '4hr 10mins',
    sectionsLength: '5 Lessons',
    sectionLaps: sections,
    courseTag: tags[1],
  ),
  Course(
    id: '3',
    imageUrl: 'assets/images/image3.jpeg',
    rating: '3.9',
    isBookmarked: true,
    courseTitle: 'Communication Skills Master Class',
    instructor: 'Walker',
    price: "\$12.00",
    duration: '4hr 30mins',
    sectionsLength: '5 Lessons',
    sectionLaps: sections,
    courseTag: tags[2],
  ),
  Course(
    id: '4',
    imageUrl: 'assets/images/image4.jpeg',
    rating: '4.0',
    isBookmarked: false,
    courseTitle: 'Excel from Beginner to Advanced',
    instructor: 'Kyle Pew',
    price: "\$22.00",
    duration: '39hr 30mins',
    sectionsLength: '50 Lessons',
    sectionLaps: sections,
    courseTag: tags[3],
  ),
  Course(
    id: '5',
    imageUrl: 'assets/images/image5.jpeg',
    rating: '4.2',
    isBookmarked: true,
    courseTitle: 'Public Relations: Media Crisis',
    instructor: 'Walker',
    price: "\$20.00",
    duration: '24hr 50mins',
    sectionsLength: '50 Lessons',
    sectionLaps: sections,
    courseTag: tags[4],
  ),
];

List sections = [
  ['Introduction to course', '20 min'],
  ['Dive in', '4h 40 min'],
  ['How to apply what you learned', '2h 20 min'],
  ['Outro', '40 min'],
];

List tags = [ 'Hot', 'New', 'Best Seller', '50% discount', 'Free', ];