import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:task_one/Data/Models/users_model/users_model.dart';
import '../../Repos/Home_Repo/Home_Repo_Imp.dart';
part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit({required this.homeRepo}) : super(HomeInitial());

  final HomeRepoImp homeRepo;

  Future<void> fetchUserData() async {
    emit(HomeLoading());
    var result = await homeRepo.fetchUserData();
    result.fold((faliure) {
      emit(FaliureUserData(errMessage: faliure.errmessage));
    }, (userData) {
      emit(SucsessUserData(userList: userData));
    });
  }
}
