import 'package:filmes/application/ui/loader/loader_mixin.dart';
import 'package:filmes/application/ui/messages/messages_mixin.dart';
import 'package:get/get.dart';

class LoginController extends GetxController with LoaderMixin, MessagesMixin {
  final loading = false.obs;
  final message = Rxn<MessageModel>();

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    loaderListener(loading);
    messageListener(message);
  }

  Future<void> login() async {
    loading(true);
    await 2.seconds.delay();
    loading(false);
    message(
        MessageModel.error(title: 'Titulo Erro', message: 'Mensagem de erro'));
  }
}
