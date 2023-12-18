import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../model/User_Model.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(12.0, 8.0, 12.0, 0.0),
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(currentUser.imgUrl),
              ),
              SizedBox(width: 8.0),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                    hintText: "What's on your mind?",
                  ),
                ),
              ),
            ],
          ),
          Divider(height: 10.0, thickness: 0.5),
          Container(
            height: 40.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {
                    print('Button Pressed!');
                  },
                  icon: Icon(Icons.videocam,color: Colors.red,), // Icon for the button
                  label: Text('Add',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),     // Label for the button
                ),
                SizedBox(width: 8.0,),
                TextButton.icon(
                  onPressed: () {
                    print('Button Pressed!');
                  },
                  icon: Icon(Icons.photo_library,color: Colors.green,), // Icon for the button
                  label: Text('Post',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),     // Label for the button
                ),
                SizedBox(width: 8.0,),
                TextButton.icon(
                  onPressed: () {
                    print('Button Pressed!');
                  },
                  icon: Icon(Icons.video_call,color: Colors.purpleAccent,), // Icon for the button
                  label: Text('Room',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),     // Label for the button
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
