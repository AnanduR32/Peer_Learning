import '../homepageButtons/buttonClass.dart';

class Buttons extends ButtonClass {
  static final List<String> item= new List<String>();
  static final List<ButtonClass> items = [
    ButtonClass(
      name: 'Fish',
      sub: '250g',
      price: '\u20B9 60',
      image: 'assets/fishing.png'
    ),
    ButtonClass(
      name: 'Broccoli',
      sub: '150g',
      price: '\u20B9 20',
      image: 'assets/broccoli.png'
    ),
    ButtonClass(
      name: 'Dog food',
      sub: '750g',
      price: '\u20B9 150',
      image: 'assets/pet.png'
    ),
    ButtonClass(
      name: 'Carrot',
      sub: '100g',
      price: '\u20B9 35',
      image: 'assets/carrot.png'
    ),
    ButtonClass(
      name: 'Soy',
      sub: '75g',
      price: '\u20B9 100',
      image: 'assets/soy.png'
    ),
    ButtonClass(
      name: 'Strawberry',
      sub: '175g',
      price: '\u20B9 125',
      image: 'assets/strawberry.png'
    ),
    ButtonClass(
      name: 'Burrito',
      sub: '155g',
      price: '\u20B9 349',
      image: 'assets/burrito.png'
    ),
    ButtonClass(
      name: 'Dessert',
      sub: '115g',
      price: '\u20B9 120',
      image: 'assets/dessert.png'
    ),
    ButtonClass(
      name: 'Pizza',
      sub: '250g',
      price: '\u20B9 399',
      image: 'assets/pizza.png'
    ),
    ButtonClass(
      name: 'Onigiri',
      sub: '125g',
      price: '\u20B9 140',
      image: 'assets/onigiri.png'
    ),
    ButtonClass(
      name: 'Sandwich',
      sub: '75g',
      price: '\u20B9 75',
      image: 'assets/sandwich.png'
    ),
    ButtonClass(
      name: 'Milk',
      sub: '150g',
      price: '\u20B9 90',
      image: 'assets/milk.png'
    ),
    ButtonClass(
      name: 'Salad',
      sub: '125g',
      price: '\u20B9 75',
      image: 'assets/salad.png'
    ),
    ButtonClass(
      name: 'Melon',
      sub: '1250g',
      price: '\u20B9 40',
      image: 'assets/watermelon.png'
    ),ButtonClass(
      name: 'Bacon',
      sub: '125g',
      price: '\u20B9 160',
      image: 'assets/bacon.png'
    ),
    ButtonClass(
      name: 'Tomato',
      sub: '500g',
      price: '\u20B9 60',
      image: 'assets/tomato.png'
    ),
    ButtonClass(
      name: 'Pineapple',
      sub: '1000g',
      price: '\u20B9 55',
      image: 'assets/pineapple.png'
    ),
    ButtonClass(
      name: 'Apple',
      sub: '750g',
      price: '\u20B9 60',
      image: 'assets/apple.png'
    ),
    ButtonClass(
      name: 'Grape',
      sub: '400g',
      price: '\u20B9 70',
      image: 'assets/grape.png'
    ),
    ButtonClass(
      name: 'Hummus',
      sub: '500g',
      price: '\u20B9 100',
      image: 'assets/hummus.png'
    ),

  ];
  static ButtonClass fetchAny() {
    return Buttons.items[0];
  }

  static List<ButtonClass> fetchAll() {
    return Buttons.items;
  }
  static List<String> fetchNames() {
    int index;
    for(index=0; index<items.length; index++){
      item.add(items[index].name);
    }
    return Buttons.item;
  }
}
