import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';
import '../controllers/example_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DashboardController());
    // another bindings
    Get.lazyPut(() => ExampleController());
    
  }
}
