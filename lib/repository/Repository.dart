import 'package:myfirstapp/model/response_in_map_model.dart';
import 'package:myfirstapp/network_manager/dio_helper.dart';

class Repository{
   static final DioHelper _dioHelper=DioHelper();

   Future<ResponseInMapModel> responseInMap () async{
     Map<String,dynamic> response = await _dioHelper.get(url: "https://reqres.in/api/register");
     return ResponseInMapModel.fromJson(response);
   }

}