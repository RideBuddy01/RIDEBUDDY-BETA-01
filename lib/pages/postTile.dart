import 'package:flutter/material.dart';

class PostTile extends StatefulWidget {
  const PostTile({super.key});

  @override
  State<PostTile> createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  Color heart=Colors.white;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.015),
      width: MediaQuery.of(context).size.width * 0.95,
      height: MediaQuery.of(context).size.height * 0.465,
      decoration: BoxDecoration(
        color: Colors.black,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          border: Border.all(color: Colors.amber,width: 1.5),
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                blurStyle: BlurStyle.outer,
                color: Colors.amberAccent,
                offset: Offset(0, 0)
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.person,color: Colors.white),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.01,
                    ),
                    const Text('User abc',style: TextStyle(color: Colors.white),),
                  ],
                ),
                const Icon(Icons.person_add,color: Colors.white),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.32,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/photo-1457449940276-e8deed18bfff.jpeg'))
            ),
          ),
          Padding(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.025),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      IconButton(
                        onPressed: (){
                          setState(() {
                            if(heart==Colors.white){
                              heart=Colors.amber;
                            }
                            else{
                              heart=Colors.white;
                            }
                          });
                        },
                        icon:  Icon(Icons.favorite_outline,color: heart,),),
                      const Icon(Icons.message,color: Colors.white),
                      const Icon(Icons.save,color: Colors.white)
                    ],
                  ),
                ),
                const Icon(Icons.share_outlined,color: Colors.white),
              ],
            ),
          )
        ],
      ),
    );
  }
}
