import 'package:dartz/dartz.dart';
import '../../enums/request_type.dart';
import '../../utils/network_util.dart';
import '../models/club_model.dart';
import '../models/common_response.dart';

class ClubRepository {
  Future<Either<String, List<clubModel>>> getAllClubs() async {
    try {
      return NetworkUtil.sendRequest(
        type: RequestType.GET,
        route: 'club',
      ).then((value) {
        CommonResponse<List<dynamic>> commonResponse =
            CommonResponse.fromJson(value);

        if (commonResponse.getStatus) {
          List<clubModel> result = [];

          commonResponse.data!.forEach(
            (element) {
              result.add(clubModel.fromJson(element));
            },
          );
          return Right(result);
        } else {
          return Left(commonResponse.message);
        }
      });
    } catch (e) {
      return Left(e.toString());
    }
  }

  // Future<Either<String, List<String>>> getAllClub() async {
  //   try {
  //     return NetworkUtil.sendRequest(
  //       type: RequestType.GET,
  //       route: 'Products/categories',
  //     ).then((value) {
  //       CommonResponse<List<dynamic>> commonResponse =
  //           CommonResponse.fromJson(value);

  //       if (commonResponse.getStatus) {
  //         List<String> result = [];

  //         commonResponse.data!.forEach(
  //           (element) {
  //             result.add(element.toString());
  //           },
  //         );
  //         return Right(result);
  //       } else {
  //         return Left(commonResponse.message);
  //       }
  //     });
  //   } catch (e) {
  //     return Left(e.toString());
  //   }
  // }
}
