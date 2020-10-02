import 'package:flutter/material.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/model/folderData.dart';
class FolderCard extends StatelessWidget {
  FolderCard({ this.data,this.isList}) ;
  final bool isList;
  final FolderData data;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:8,

      child: Flex(
        direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Image.asset(ImageConstants.kFolder, width: 100,height: 80,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(width: 2,height: 2,),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    data.title,

                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  Text(
                    data.date,
                    style: TextStyle(
                      fontSize: 14,

                    ),
                  )
                ],
              ),
              Icon(
                  Icons.more_vert
              )
            ],
          )
        ],
      ),
    );
  }
}
