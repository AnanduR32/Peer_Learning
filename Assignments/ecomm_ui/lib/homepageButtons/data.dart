import '../homepageButtons/buttonClass.dart';

class Buttons extends ButtonClass {
  static final List<ButtonClass> items = [
    ButtonClass(
      name: 'fish',
      sub: '250g',
      price: '\u20B9 60',
      image: 'assets/fishing.png'
    ),
    ButtonClass(
      name: 'broccoli',
      sub: '150g',
      price: '\u20B9 20',
      image: 'assets/broccoli.png'
    ),
    ButtonClass(
      name: 'dog food',
      sub: '750g',
      price: '\u20B9 150',
      image: 'assets/pet.png'
    ),
    ButtonClass(
      name: 'carrot',
      sub: '100g',
      price: '\u20B9 35',
      image: 'assets/carrot.png'
    ),
    ButtonClass(
      name: 'soy',
      sub: '75g',
      price: '\u20B9 100',
      image: 'assets/soy.png'
    ),
    ButtonClass(
      name: 'strawberry',
      sub: '175g',
      price: '\u20B9 125',
      image: 'assets/strawberry.png'
    ),
  ];
  static ButtonClass fetchAny() {
    return Buttons.items[0];
  }

  static List<ButtonClass> fetchAll() {
    return Buttons.items;
  }
}
