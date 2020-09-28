/*
 * @Description: 
 * @Version: 0.0.1
 * @Autor: hao wang
 * @Date: 2020-09-28 11:26:32
 * @LastEditors: hao wang
 * @LastEditTime: 2020-09-28 14:16:15
 */
import 'package:flutter/material.dart';
import 'static_data.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('查询条'),
        actions: [
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: (){
              showSearch(context: context,delegate: SearchBarDelegate());
            }
          )
        ],
      ),
    );
  }
}

class SearchBarDelegate extends SearchDelegate<String>{

  @override
  List<Widget> buildActions(BuildContext context){
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: ()=> query = '',
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
        ), 
      onPressed: ()=>close(context,null),
    );
  }

  @override
  Widget buildResults(BuildContext context){
    return Container(
      width: 200.0,
      height: 200.0,
      child: Card(
        color: Colors.red,
        child: Center(
          child: Text(query),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
     ? defaultDataList 
     : searchList.where((input) => input.startsWith(query)).toList();
     return ListView.builder(
       itemCount: suggestionList.length,
       itemBuilder: (context,index)=>ListTile(
         title: RichText(
           text: TextSpan(
             text: suggestionList[index].substring(0,query.length),
             style: TextStyle(
               color: Colors.red[300], fontWeight: FontWeight.w300
             ),
             children: [
               TextSpan(
                 text: suggestionList[index].substring(query.length),
                 style: TextStyle(
                   color: Colors.green[300]
                 )
               )
             ]
           ),
         ),
       ),
     );
  }
  
}
