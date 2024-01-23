import 'package:dio/dio.dart';

import '../../../constants/app_url.dart';
import '../services/api_services.dart';

class UserApi {
  final ApiService _apiService = ApiService();
static String token = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJfaWQiOiI2MzQ3ZWRiNzVjOTJjMDBkMDI0Yzg0MDUiLCJuYW1lIjoiVmlzaG51IiwicGhvbmUiOiI3MDEyMDYwMzE5IiwiZW1haWwiOiJrdC52aXNobnUxOUBnbWFpbC5jb20iLCJjb2lucyI6NDU5NiwicHJvZmlsZUltYWdlIjoiIiwiYWRtaW4iOnRydWUsImlzUmV0YWlsVG9rZW4iOmZhbHNlLCJpc0NvcnBvcmF0ZVN0YWZmIjp0cnVlLCJjb3Jwb3JhdGUiOiI2NGZmZmFhOTUzNDExMmRkNjExNjY1YWMiLCJjb3Jwb3JhdGVSb2xlIjoiYWRtaW4iLCJpYXQiOjE3MDU5MTczMjIsImV4cCI6MTcwNjAwMzcyMn0.M6ZE_mOar9Bw38UO_0VXsxDARUN-T8DAY6feKB2wWkk';

Future<Response> getWallets() async {
    try {
      final Response response = await _apiService.get(AppUrl.wallets,
          authToken:
           token);
      print(response);

      return response;
    } catch (e) {
      rethrow;
    }
  }
Future<Response> getPaymentDetails() async {
    try {
      final Response response = await _apiService.get(AppUrl.InitiateOrderView,
          authToken:
           token);
      print(response);

      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<Response> InitialOrderCreation({Map<String, dynamic>? data}) async {
    try {
      final Response response = await _apiService.post(AppUrl.InitiateOrder,data: data,
          authToken:
      token);
      print(response);

      return response;
    } catch (e) {
      rethrow;
    }
  }
  Future<Response> orderCreation({Map<String, dynamic>? data}) async {
    try {
      final Response response = await _apiService.post(AppUrl.OrderCreation,data: data,
          authToken:
          token);
      print(response);

      return response;
    } catch (e) {
      rethrow;
    }
  }

  // Future<Response> postUser({Map<String, dynamic>? data}) async {
  //   try {
  //     final Response response = await _apiService.post(
  //       AppUrl.users,
  //       data: data,
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  //
  // Future<Response> putUser(String id, {Map<String, dynamic>? data}) async {
  //   try {
  //     final Response response = await _apiService.put(
  //       '${AppUrl.users}/$id',
  //       data: data,
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
  //
  // Future<Response> deleteUser(String id) async {
  //   try {
  //     final Response response = await _apiService.delete(
  //       '${AppUrl.users}/$id',
  //     );
  //     return response;
  //   } catch (e) {
  //     rethrow;
  //   }
  // }
}
