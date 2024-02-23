import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
void main()  async{
  // futures ---> like promises in JavaScript 
  // can have uncompleted or completed state
   fetchPost().then((p) {
    print(p.title);
    print(p.userId);
   });
    fetchPost();
 
   //jsonplaceholder.typicode.com
   //posts/1
  
}
fetchPost() async{
  var uri =Uri.https('jsonplaceholder.typicode.com', 'posts/1');
  var response= await http.get(uri);
  print(response.body);
  };

class Post{
  String title;
  int userId;
  Post(this.title,this.userId);
}

/// fetching data 