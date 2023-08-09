import 'package:kiwi_app/Modules/Event.dart';
import 'package:kiwi_app/Screens/EventScreen.dart';
import 'package:flutter/material.dart';

class HomeEventContainer extends StatelessWidget {
  final Event event;

  const HomeEventContainer({Key? key, required this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EventScreen(
              event: event,
            ),
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(right: 15),
            width: 200,
            height: 200,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(event.image),
              ),
            ),
            child: Text(
              event.cost,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            event.name,
            style: TextStyle(
              fontSize: 23,
              wordSpacing: 1,
            ),
          ),
          SizedBox(height: 2),
          Row(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 15,
              ),
              Text(
                event.location,
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 11,
                ),
              ),
              SizedBox(width: 20),
              Text(
                '112 available',
                style: TextStyle(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
