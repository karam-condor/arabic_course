// ignore_for_file: public_member_api_docs, sort_constructors_first
// OnBoarding Models
class SliderObject {
  String title;
  String subTitle;
  String image;

  SliderObject(
    this.title,
    this.subTitle,
    this.image,
  );
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(
    this.sliderObject,
    this.numOfSlides,
    this.currentIndex,
  );
}

/***********************************************************/

// login models

class Customer {
  String id;
  String name;
  int numOfNotifications;
  Customer(
    this.id,
    this.name,
    this.numOfNotifications,
  );
}

class Contacts {
  String phone;
  String email;
  String link;

  Contacts(this.phone, this.email, this.link);
}

class Authentication {
  Customer? customer;
  Contacts? contacts;

  Authentication(this.customer, this.contacts);
}
