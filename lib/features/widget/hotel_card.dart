import 'package:flutter/material.dart';
import 'package:project6/backend/API/HotelDetails.dart';


class HotelCard extends StatefulWidget {
  final int index;
  final String imageUrl;
  final String name;
  final String location;
  final String distance;
  final String price;
  final String reviews;
  final int rating;

  const HotelCard({
    Key? key,
    required this.index,
    required this.imageUrl,
    required this.name,
    required this.location,
    required this.distance,
    required this.price,
    required this.reviews,
    required this.rating,

  }) : super(key: key);

  @override
  _HotelCardState createState() => _HotelCardState();
}

class _HotelCardState extends State<HotelCard> {
  Color mycolor = Color.fromARGB(255, 81, 212, 194);
  bool isFavourite = false;
  HotelDetails hotelDetails = HotelDetails();


  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 243, 243, 243),
      margin: EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                widget.imageUrl,
                width: 120.0,
                height: 120.0,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          widget.name,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            hotelDetails.count[index]=true;                          });
                        },
                        icon: Icon(
                          isFavourite ? Icons.favorite : Icons.favorite_border,
                          color: isFavourite ? Colors.red : null,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(widget.location),
                  Text(widget.distance),
                  SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: List.generate(
                          widget.rating,
                              (index) => Icon(Icons.star, color: mycolor),
                        ),
                      ),
                      Text(widget.reviews),
                    ],
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Rs' + widget.price,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
