import 'package:flutter/material.dart';
import 'package:application1/core/app_export.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: AppDecoration.fillGray100,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/img_bg1.png'),
                  alignment: Alignment.topCenter,
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 80),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage('https://googleflutter.com/sample_image.jpg'),
                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text("Agent Smith"),
                              Text("Looking for work"),
                              Text("Online"),
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                          )
                        ],
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: TextButton(
                          onPressed: () {

                          },
                          child: Text(
                              "Edit Profile",
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                    color: Colors.grey
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {

                      },
                      child: Text("New post"),
                    ),
                    TextButton(
                      onPressed: () {

                      },
                      child: Text("Image"),
                    ),
                    TextButton(
                      onPressed: () {

                      },
                      child: Text("Receive"),
                    ),
                    TextButton(
                      onPressed: () {

                      },
                      child: Text("Send"),
                    ),
                  ],
                ),
                Divider(
                    color: Colors.grey
                ),
                TextButton(
                  child: Text("About"),
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                Text("About text"),
                TextButton(
                  child: Text("Education: School of secret agent"),
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                TextButton(
                  child: Text("Career: AWL3"),
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                TextButton(
                  child: Text("More information"),
                  onPressed: () {

                  },
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}