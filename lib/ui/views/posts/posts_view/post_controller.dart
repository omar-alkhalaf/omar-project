import 'package:bot_toast/bot_toast.dart';
import 'package:get/get.dart';
import 'package:sp1_e_commerce/core/data/models/post_model.dart';
import 'package:sp1_e_commerce/core/data/repository/post_repository.dart';
import 'package:sp1_e_commerce/ui/shared/utils.dart';

class PostController extends GetxController {
  RxList<PostModel> postList = <PostModel>[].obs;

  @override
  void onInit() {
    getAllPost();
    super.onInit();
  }

  void getAllPost() async {
    await post.getAllPost().then((value) {
      value.fold((l) {
        BotToast.showText(text: l);
      }, (r) {
        postList.addAll(r);
      });
    });
  }
}
