import 'package:kiwi_eventsapp/Modules/Event.dart';
import 'package:flutter/material.dart';

const Color KAppColor = Color(0xffde554d);

List<Map> categories = [
  {
    "name": 'CULTURE',
    'icon': Icons.music_note,
  },
  {
    "name": 'DINNER',
    'icon': Icons.sports_basketball,
  },
  {
    "name": 'ISLAM',
    'icon': Icons.fastfood,
  },
];

List<Event> weekendEvents = [
  Event(
    name: 'Gomesi_Busuuti',
    image: 'images/img2.jpg',
    category: categories[0],
    location: 'Zai_Plaza Kampala',
    cost: 'USD 90',
    available: 12,
    about:
        'Great wear for all kwanjula functions cutting across multiple regions in Uganda',
  ),
  Event(
      name: 'Bridal_Gomesi',
      image: 'images/img12.jpg',
      category: categories[0],
      location: 'Zai_Plaza Kampala',
      cost: 'USD 100',
      available: 08,
      about: 'The perfect attire to brighten up your special day'),
  Event(
      name: 'Executive Gomesi',
      image: 'images/img12.jpg',
      category: categories[0],
      location: 'Zai_Plaza Kampala',
      cost: 'USD 90',
      available: 23,
      about:
          'The way you dress speaks alot about you. Get this glamourous attire for the utmost respect'),
  Event(
      name: 'Ordinary_Gomesi',
      image: 'images/img13.jpg',
      category: categories[0],
      location: 'Zai_Plaza Kampala',
      cost: 'USD 50',
      available: 3,
      about: 'Embrace tradition always'),
];

List<Event> upcomingHomeEvents = [
  Event(
      name: 'Umushanana',
      image: 'images/img8.jpg',
      category: categories[0],
      location: 'Zai_Plaza Kampala',
      cost: 'USD 80',
      available: 13,
      about: 'Bringing out the western culture to light'),
  Event(
      name: 'Umushanana',
      image: 'images/img4.jpg',
      category: categories[0],
      location: 'Zai_Plaza Kampala',
      cost: 'USD 80',
      available: 10,
      about: 'Bringing out the western culture to light'),
  Event(
      name: 'Umushanana',
      image: 'images/img6.jpg',
      category: categories[0],
      location: 'Zai_Plaza Kampala',
      cost: 'USD 80',
      available: 3,
      about: 'Bringing out the western culture to light'),
  Event(
      name: 'Umushanana',
      image: 'images/img10.jpg',
      category: categories[0],
      location: 'Zai_Plaza Kampala',
      cost: 'USD 80',
      available: 3,
      about: 'Bringing out the western culture to light'),
];

List<Event> profileEvents = [
  Event(
    name: 'Vumbula Festival',
    image: 'assets/event2.jpg',
    category: categories[0],
    location: 'Jinja, Uganda',
    cost: 'UGX 60-240k',
    available: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Vumbula Festival',
    image: 'assets/event2.jpg',
    category: categories[0],
    location: 'Jinja, Uganda',
    cost: 'UGX 60-240k',
    available: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Vumbula Festival',
    image: 'assets/event2.jpg',
    category: categories[0],
    location: 'Jinja, Uganda',
    cost: 'UGX 60-240k',
    available: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Vumbula Festival',
    image: 'assets/event2.jpg',
    category: categories[0],
    location: 'Jinja, Uganda',
    cost: 'UGX 60-240k',
    available: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
  Event(
    name: 'Vumbula Festival',
    image: 'assets/event2.jpg',
    category: categories[0],
    location: 'Jinja, Uganda',
    cost: 'UGX 60-240k',
    available: 3,
    about:
        'Music festivals have come a long way since the psychedelic wig-outs of the \'60s. These days, there\'s a festival for everyone, even if you\'ve shunned most annual mud-fests in the past because you dance to disco and you don\'t like rock. Beyond the traditional London, UK and European festivals, there are fantastic international events from California\'s very Instagram-friendly Coachella to Japan\'s fabulous Fuji Rock, which prides itself on being the \'cleanest festival in the world\'Here are the 50 best music festivals to try before you die.',
  ),
];
