import 'package:flutter/material.dart';
import 'package:flutter_application_3/data.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class bookpage extends StatelessWidget {
  const bookpage({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 580,
      child: ListView.separated(
          itemBuilder: ((context, index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 106,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    image: DecorationImage(
                      image: NetworkImage(
                        data[index]?.elementAt(3),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 26.0,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data[index]?.elementAt(0),
                      style: const TextStyle(
                        color: Color(0xFF06070D),
                        fontSize: 16.0,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      data[index]?.elementAt(1),
                      style: TextStyle(
                        color: const Color(0xFF06070D).withOpacity(0.5),
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      data[index]?.elementAt(2),
                      style: const TextStyle(
                        color: Color(0xFF06070D),
                        fontSize: 14.0,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Poppins",
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    RatingBar.builder(
                      itemSize: 14.0,
                      onRatingUpdate: (rating) {},
                      initialRating: 4,
                      ignoreGestures: true,
                      minRating: 1,
                      direction: Axis.horizontal,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            );
          }),
          separatorBuilder: ((context, index) => const SizedBox(
                height: 25.0,
              )),
          itemCount: 5),
    );
  }
}
