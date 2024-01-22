import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/model/wallet_model.dart';
import '../../../../data/network/api/payment_api.dart';
import '../../../../data/network/services/api_exceptions.dart';

class EnterAmountController extends GetxController with StateMixin<List<WalletModel>> {
  final UserApi _userApi = UserApi();

  RxList<WalletModel> wallet = <WalletModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchWallets();
  }
  var amountTextController = TextEditingController();


  void fetchWallets() async {
    try {
      final response = await _userApi.getWallets();

      if (response.statusCode == 200) {
        final walletModel = WalletModel.fromJson(response.data);

        if (walletModel.data != null) {
          // Check that walletModel.data is a List or another iterable type
          wallet.assignAll([walletModel]); // Ensure to handle nullability properly
          change(wallet, status: RxStatus.success());
          print(wallet.value.first);
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

  Future<void> InitialOrderCreation() async {
    print(amountTextController.text);
    try {
      final response = await _userApi.InitialOrderCreation(data: {

          "club": "62443b8fc91cc07bfb6082d9",
          "billAmount": int.parse(amountTextController.text),
          "notes": "Test Payment",
          "location": {
            "type": "Point",
            "coordinates": [12, 18]
          }
          // "isUPITxn": true,
          // "upiId": "7012060319@freecharge",
          // "wallet": "651bb90d5216b5c88610964e"

      });

      if (response.statusCode == 200) {

 print('response');
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