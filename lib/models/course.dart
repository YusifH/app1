class Course{
  String author;
  String authorImg;
  String title;
  String imageurl;
  String describtion;

  Course(this.author, this.authorImg, this.imageurl, this.title, this.describtion);


  static List<Course> generateCourses(){
    return [
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course1.jpg', 'eCommerce App development', 'Sifirda ileri seviyyeye Flutter dersleri oyrenin Sifirda ileri seviyyeye Flutter dersleri oyrenin Sifirda ileri seviyyeye Flutter dersleri oyrenin'),
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course2.jpg', 'eCommerce App development', 'Her zaman size uygun online dersler'),
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course3.jpg', 'eCommerce App development', 'Sifirda ileri seviyyeye Flutter dersleri oyrenin Sifirda ileri seviyyeye Flutter dersleri oyrenin Sifirda ileri seviyyeye Flutter dersleri oyrenin'),
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course4.jpg', 'eCommerce App development', 'Sifirda ileri seviyyeye Flutter dersleri oyrenin Sifirda ileri seviyyeye Flutter dersleri oyrenin Sifirda ileri seviyyeye Flutter dersleri oyrenin'),
        Course('Yusif Hajiyev', 'assets/img/yusif1.jpg', 'assets/img/course5.jpg', 'eCommerce App development', 'Sifirda ileri seviyyeye Flutter dersleri oyrenin Sifirda ileri seviyyeye Flutter dersleri oyrenin Sifirda ileri seviyyeye Flutter dersleri oyrenin'),

    ];
  }
}