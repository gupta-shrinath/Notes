import 'package:flutter/material.dart';
import 'package:notes/components/folderCard.dart';
import 'package:notes/components/header.dart';
import 'package:notes/constants/text_style_constants.dart';
import 'package:notes/model/folderData.dart';
class Documents extends StatefulWidget {
  @override
  _DocumentsState createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  List _list=[];
  bool isList=true;// to check list view or grid view
  @override
  void initState() {
    // TODO: implement initState
    super.initState();


    List data=[
     FolderData(title:'Open source',date: '8 sep 2019'),
      FolderData(title:'Open source',date: '15 sep 2019'),
      FolderData(title:'Open source',date: '7 sep 2019'),
      FolderData(title:'Open source',date: '9 sep 2019'),
      FolderData(title:'Open source',date: '10 sep 2019'),

    ];// sample data
    data.forEach((element) { _list.add(element);});// updating _list


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(
            Text('DOCUMENT', style: TextStyleConstants.kAppbarTextStyle),
            SizedBox(width: 2,)
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 17,right: 17,top: 10),
          child: Column(
            children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
              Text(
                'SUBJECT (${_list.length})',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Manrope'

                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap:(){ if(!isList){setState(() {
                      isList=true;
                    });}},
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: isList?Color(0xFFb56eff):Colors.white



                      ),
                      child: Icon(
                        Icons.view_agenda,
                        size: 25,
                        color: isList?Colors.white: Color(0xff67349C),
                      ),
                    ),
                  ),
                  SizedBox(
                      width: 5.0
                  ),
                  GestureDetector(
                    onTap: (){ if(isList){setState(() {
                      isList=false;
                    });}},
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: !isList?Color(0xFFb56eff):Colors.white



                      ),
                      child: Icon(
                        Icons.view_module,
                        size: 25,
                        color: !isList?Colors.white: Color(0xff67349C),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
              SizedBox(height: 10,),
              Flexible(
                    child: new GridView.count(
                      crossAxisCount: isList?1:2,
                      childAspectRatio: isList?3.5:1.0,
                      padding: const EdgeInsets.all(4.0),
                      mainAxisSpacing: 6.0,
                      crossAxisSpacing: 6.0,
                      children: _list.map((e) => FolderCard(isList: isList,data: e,)).toList(),
                    ),
          ),
       ]),
    )


    );
  }
}

