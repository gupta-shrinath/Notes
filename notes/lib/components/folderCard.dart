import 'package:flutter/material.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/model/folderData.dart';
class FolderCard extends StatelessWidget {
  FolderCard({ this.data,this.isList}) ;
  final bool isList;
  final FolderData data;
  final String str='Updated on : ';



  @override
  Widget build(BuildContext context) {

    return Card(
      elevation:8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(isList?12:6))),

      child: Flex(
        direction: isList?Axis.horizontal: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,



        children: [
          if(!isList)SizedBox(height: 5,width: 4,),
          if(!isList)Image.asset(ImageConstants.kFolder,height: isList? 40: 80,),

          Container(
            color: isList? Colors.white:Color(0xffE6E6E6),
            width: MediaQuery.of(context).size.width-50,


            height: 54,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,

              children: [
                SizedBox(width: 4,),
                if(isList)Image.asset(ImageConstants.kFolder,height: 32,),




                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(
                      data.title,

                      style: TextStyle(
                        fontSize: isList?22:18,
                        fontWeight: FontWeight.bold,

                      ),
                    ),
                    Text(
                      isList?str+data.date:data.date,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700]

                      ),
                    )
                  ],
                ),
                SizedBox(width: 2,),
                SizedBox(width: 2,),

                Icon(
                    Icons.more_vert,
                  color: Color(0xffDE6FA1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
