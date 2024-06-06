import 'package:flutter/material.dart';
import 'package:project6/backend/API/HotelDetails.dart';
import 'package:project6/features/widget/hotel_card.dart';


class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  HotelDetails hotelDetails = HotelDetails();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
    title: Row(
    mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('Favorites',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),),
      ],
    ),
    ),

    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount:hotelDetails.name.length,
        itemBuilder: (context,index){
          return HotelCard(
            index: index,
            imageUrl: 'https://via.placeholder.com/150',
            name: hotelDetails.name[index],
            location: hotelDetails.address[index],
            distance: '2 km to city',
            price: hotelDetails.price[index].toString(),
            reviews: '80 Reviews',
            rating: hotelDetails.hotelRatings[index],
          );

        },
      ),
    ),
    );
  }
}








