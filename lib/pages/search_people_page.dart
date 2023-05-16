import 'dart:async';

import 'package:flutter/material.dart';

import '../utils/search_people_tile.dart';
import '../utils/user_list_sample.dart';

class searchPeoplePage extends StatefulWidget {
  const searchPeoplePage({super.key});

  @override
  State<searchPeoplePage> createState() => _searchPeoplePageState();
}

class _searchPeoplePageState extends State<searchPeoplePage> {
  TextEditingController SearchController = TextEditingController();
  String tst='';
  bool check=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(milliseconds: 0), (timer) {
      if(mounted){
        setState(() {
          tst=SearchController.text.trim();
          check=tst.isNotEmpty;
        });
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 28, 28, 1),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.12,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.055,
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextField(
                  cursorColor: Colors.amber,
                  controller: SearchController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width*0.05,
                        bottom:  MediaQuery.of(context).size.height*0.025,  // HERE THE IMPORTANT PART
                      ),
                      hintText: 'Search',
                      enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: const BorderRadius.all(Radius.circular(30)),
                          borderSide:
                          BorderSide(color: Colors.grey.shade400)),
                      fillColor: Colors.grey.shade200,
                      filled: true //label text of field
                  ),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width*0.045,
                      fontWeight: FontWeight.w700),
                  textInputAction: TextInputAction.search,
                  onSubmitted: (value) {},
                ),
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.filter_list_outlined,color: Colors.amber,)),
            ],
              ),
          ],
        ),
        backgroundColor: Colors.black,
        title: Transform(
          // you can forcefully translate values left side using Transform
          transform:  Matrix4.translationValues(0.0, -25, 0.0),
          child: const Text(
            "RideBudy",
            style: TextStyle(
              color: Colors.amber,
            ),
          ),
        ),
      ),
      body: Center(
        child: check
            ?
        const Center(
          child: Text('No User Found with this name',style: TextStyle(color: Colors.amber,fontSize: 20,fontWeight: FontWeight.w700),),
        )

            :
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            Divider(
              height: MediaQuery.of(context).size.height * 0.01,
              color: Colors.black,
            ),
            Expanded(child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                height: MediaQuery.of(context).size.height * 0.01,
                color: Colors.black,
              ),
              itemCount: names.length,
              itemBuilder: (context, index) {
                return searchPeopleTile(userName: names[index]);
              },
            ))],
        ),
      ),
    );
  }
}
