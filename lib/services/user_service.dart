import 'package:http/http.dart' as http;
import 'package:learning_provider/models/user_model.dart';

class UserService {
  // call the api and use the data

  Future<List<User>> getallUsers() async {
    const uri = "http://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(uri));
    if(response.statusCode == 200){
      var json = response.body;
      return userFromJson(json);
    } else {
      return [];
    }
  }
  
}
