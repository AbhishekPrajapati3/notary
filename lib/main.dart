
import 'package:check_intern/NotaryModel.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tutorial',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Tutorial'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<NotaryModel> leads = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchLeads();
  }

  Future<NotaryModel> _fetchLeads() async {
    final response = await http.post(
      Uri.parse('https://api.thenotary.app/lead/getLeads'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'notaryId': '6668baaed6a4670012a6e406'}),
    );
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
        return NotaryModel.fromJson(data);
    } else {
      // Handle error
      print('Failed to fetch leads');
      return NotaryModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tutorial",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () {
                    _searchController.clear();
                    setState(() {});
                  },
                ),
              ),
              onChanged: (value) {
                setState(() {});
              },
            ),
          ),
          Expanded(
            child: FutureBuilder<NotaryModel>(
              future: _fetchLeads(),
              builder: (context,snapshot) {
                return ListView.builder(
                  itemCount:snapshot.data!.leads!.length,
                  itemBuilder: (context, index) {
                    if (_searchController.text.isEmpty ||
                        (snapshot.data!.leads![index].firstName.toString())
                            .toLowerCase()
                            .contains(_searchController.text.toLowerCase()) ||
                        snapshot.data!.leads![index].email.toString()
                            .toLowerCase()
                            .contains(_searchController.text.toLowerCase())) {
                      return ListTile(
                        leading: CircleAvatar(radius: 25,child: Image.network(snapshot.data!.leads![index].imageURL.toString()),),
                        title: Text(snapshot.data!.leads![index].firstName.toString()),
                        subtitle: Text(snapshot.data!.leads![index].email.toString()),
                      );
                    } else {
                      return SizedBox.shrink();
                    }
                  },
                );
              }
            ),
          ),
        ],
      ),
    );
  }
}