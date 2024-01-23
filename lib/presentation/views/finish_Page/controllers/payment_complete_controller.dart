import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lookodu/data/model/orderViewModel.dart';

import '../../../../data/model/wallet_model.dart';
import '../../../../data/network/api/payment_api.dart';
import '../../../../data/network/services/api_exceptions.dart';
import '../../ProceedToPay_page/proceedToPay_page.dart';

class EnterAmountController extends GetxController with StateMixin<List<OrderViewModel>> {
  final UserApi _userApi = UserApi();

  RxList<OrderViewModel> orderDetails = <OrderViewModel>[].obs;
  RxString orderID = ''.obs;
  RxString enteredAmount = ''.obs;
  @override
  void onInit() {
    super.onInit();
  }
  var amountTextController = TextEditingController();

  void getOrderDetals() async {
    try {
      final response = await _userApi.getPaymentDetails();

      if (response.statusCode == 200) {
        final orderModel = OrderViewModel.fromJson(response.data);

        if (orderModel.data != null) {
          // Check that walletModel.data is a List or another iterable type
          orderDetails.assignAll([orderModel]); // Ensure to handle nullability properly
          change(orderDetails, status: RxStatus.success());
          print(orderDetails.value.first);
        } else {
          change(null, status: RxStatus.error('No data found in the response'));
        }
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
  }

  }