import 'package:app/src/config/image_constants.dart';
import 'package:app/src/screens/templates/profile/widgets/tile.dart';
import 'package:app/src/widgets/cache_image_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(15, 60, 15, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'Hi, ',
                        style: Theme.of(context).textTheme.headline1.copyWith(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[700],
                            ),
                        children: [
                          TextSpan(
                            text: "Tynan Wenarchuk",
                            style:
                                Theme.of(context).textTheme.headline1.copyWith(
                                      fontWeight: FontWeight.normal,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: CachedImage(
                      imageUrl:
                          "https://cultivatedculture.com/wp-content/uploads/2019/12/LinkedIn-Profile-Picture-Example-Tynan-Allan.jpeg",
                      fit: BoxFit.cover,
                      errorWidget: Image.network(
                        AllImages().kDefaultImage,
                      ),
                      width: 120,
                      height: 120,
                      placeholder: CircularProgressIndicator(),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.55,
              child: Column(
                children: [
                  SizedBox(height: 30),
                  Tile(icon: Icons.public, text: "Eat, sleep, create"),
                  Tile(icon: Icons.phone, text: "9999945123"),
                  Tile(icon: Icons.event, text: "22/01/1995"),
                  Tile(icon: Icons.email, text: "abcd@hotmail.com"),
                ],
              ),
            ),
            Container(
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColorDark,
                    padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/edit-profile');
                  },
                  child: Text(
                    "Edit Profile",
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
