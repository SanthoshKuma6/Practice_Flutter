import 'package:myfirstapp/model/response_in_map_model.dart';
import 'package:myfirstapp/network_manager/dio_helper.dart';

class Repository{
   static final DioHelper _dioHelper=DioHelper();

   Future<ResponseInMapModel> responseInMap() async {
     final response = await _dioHelper.get(url: 'https://reqres.in/api/users?page=2');
     if (response != null) {
       print("API Response: $response"); // Debugging purpose
       return ResponseInMapModel.fromJson(response);
     } else {
       throw Exception("Failed to fetch data from the API");
     }
   }
}


