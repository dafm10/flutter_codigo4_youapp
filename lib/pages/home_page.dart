import 'package:flutter/material.dart';
import 'package:flutter_codigo4_youapp/models/video_model.dart';
import 'package:flutter_codigo4_youapp/services/api_services.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_filter_widget.dart';
import 'package:flutter_codigo4_youapp/ui/widgets/item_list_video_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  APIService _apiService = APIService();
  int indexFilter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _apiService.getVideoList();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff1B1B1B),
      body: FutureBuilder(
        future: _apiService.getVideoList(),
        builder: (BuildContext context, AsyncSnapshot snap){
          if(snap.hasData){
            List<VideoModel> videoList = snap.data;
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              primary: Color(0xff2E2E2E),
                              elevation: 0,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 12.0),
                            ),
                            onPressed: () {},
                            icon: Icon(
                              Icons.explore_outlined,
                              size: 26.0,
                            ),
                            label: Text(
                              "Explorar",
                            ),
                          ),
                          const SizedBox(
                            height: 35.0,
                            child: VerticalDivider(
                              color: Colors.white24,
                              thickness: 0.9,
                              width: 28.0,
                            ),
                          ),
                          ItemFilterWidget(
                            nameFilter: "Todos",
                            selected: indexFilter == 0 ? true : false,
                            onPressed: (){
                              indexFilter = 0;
                              setState(() {

                              });
                            },
                          ),
                          ItemFilterWidget(
                            nameFilter: "Podcast",
                            selected: indexFilter == 1 ? true : false,
                            onPressed: (){
                              indexFilter = 1;
                              setState(() {

                              });
                            },
                          ),
                          ItemFilterWidget(
                            nameFilter: "Comedia",
                            selected: indexFilter == 2 ? true : false,
                            onPressed: (){
                              indexFilter = 2;
                              setState(() {

                              });
                            },
                          ),
                          ItemFilterWidget(
                            nameFilter: "Flutter",
                            selected: indexFilter == 3 ? true : false,
                            onPressed: (){
                              indexFilter = 3;
                              setState(() {

                              });
                            },
                          ),
                          ItemFilterWidget(
                            nameFilter: "Programación",
                            selected: indexFilter == 4 ? true : false,
                            onPressed: (){
                              indexFilter = 4;
                              setState(() {

                              });
                            },
                          ),
                          ItemFilterWidget(
                            nameFilter: "Apple",
                            selected: indexFilter == 5 ? true : false,
                            onPressed: (){
                              indexFilter = 5;
                              setState(() {

                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: videoList.length,
                    itemBuilder: (context, index){
                      return ItemListVideoWidget(
                        imgage: videoList[index].snippet.thumbnails.high.url,
                        title: videoList[index].snippet.title,
                        channelTitle: videoList[index].snippet.channelTitle,
                      );
                    },
                  ),
                ],
              ),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
