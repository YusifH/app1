class Course{
  String author;
  String authorImg;
  String title;
  String imageurl;

  Course(this.author, this.authorImg, this.imageurl, this.title);


  static List<Course> generateCourses(){
    return [
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course1.jpg', 'eCommerce App development'),
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course2.jpg', 'eCommerce App development'),
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course3.jpg', 'eCommerce App development'),
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course4.jpg', 'eCommerce App development'),
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course5.jpg', 'eCommerce App development'),

    ];
  }
}