import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/network/api/payment_api.dart';
import '../../../../data/network/services/api_exceptions.dart';

class ProceedToPayController extends GetxController with StateMixin {
  final UserApi _userApi = UserApi();

  @override
  void onInit() {
    super.onInit();
  }



  Future<void> orderCreation() async {
    try {
      final response = await _userApi.orderCreation(data: {
        "initialOrder": "65ab9a9ae0073954d4d9bc78",
        // "rewardType": "cashBack",
        // "cashBack": 3,
        // "reward": "645b7a0564a1119eb8eeada9",
        "payableAmount": 29,
        "location": {
          "type": "Point",
          "coordinates": [12.78637637821683712873, 18.7283617236871236871637812637872183]
        },
        "oduPin": "7895"
      },
      );

      if (response.statusCode == 200) {

        print('response');
        print('Order creation successful');
      } else {
        // Handle non-200 status codes if needed
        change(null, status: RxStatus.error('Unexpected status code: ${response.statusCode}'));
      }
    } on DioException catch (e) {
      final ApiException apiException = ApiException.fromDioError(e);
      change(null, status: RxStatus.error(apiException.toString()));
    } catch (e) {
      // Handle other exceptions
      change(null, status: RxStatus.error('Unexpected error: $e'));
    }



  // Future<void> orderCreation() async {
  //   try {
  //     final response = await _userApi.orderCreation(data: {
  //       "initialOrder": "65555cf132927130108d8a03",
  //       // "rewardType": "cashBack",
  //       // "cashBack": 3,
  //       // "reward": "645b7a0564a1119eb8eeada9",
  //       "payableAmount": 36,
  //       "location": {
  //         "type": "Point",
  //         "coordinates": [12.78637637821683712873, 18.7283617236871236871637812637872183]
  //       },
  //       "oduPin": "7895"
  //     });
  //
  //     if (response.statusCode == 200) {
  //       // Handle a successful response
  //       print('Order creation successful');
  //
  //       // You might want to navigate to another page here
  //       // Example: Get.to(() => AnotherPage());
  //
  //       // If you want to change the state or show some UI based on success
  //       change('Success', status: RxStatus.success());
  //     } else {
  //       // Handle non-201 status codes if needed
  //       change(null, status: RxStatus.error('Unexpected status code: ${response.statusCode}'));
  //     }
  //   } on DioException catch (e) {
  //     final ApiException apiException = ApiException.fromDioError(e);
  //     // Handle Dio errors
  //     change(null, status: RxStatus.error(apiException.toString()));
  //   } catch (e) {
  //     // Handle other exceptions
  //     change(null, status: RxStatus.error('Unexpected error: $e'));
  //   }
  // }
}}
