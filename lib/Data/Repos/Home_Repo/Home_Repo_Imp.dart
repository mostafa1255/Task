import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:task_one/Data/Models/users_model/users_model.dart';
import '../../../Core/Tools/api_Services.dart';
import '../../../Core/Tools/app_error_handler.dart';
import '../../../Core/Tools/app_links.dart';
import '../../../Core/Tools/failure_model.dart';

class HomeRepoImp {
  final ApiServeces apiServeces;
  HomeRepoImp(this.apiServeces);

  Future<Either<Faliure, List<UsersModel>>> fetchUserData() async {
    try {
      var data = await apiServeces.get(endpoint: AppLinks.get);

      List<UsersModel> apidata = [];

      for (var items in data) {
        apidata.add(UsersModel.fromJson(items));
      }

      return right(apidata);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFaliure.fromDioError(e));
      }
      return left(ServerFaliure(e.toString()));
    }
  }
}
