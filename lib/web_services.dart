import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:testing_api/user.dart';

part'web_services.g.dart';
/*annotate to base url*/
@RestApi(baseUrl: 'https://gorest.co.in/public/v2/')

abstract class WebServices {

  factory WebServices(Dio dio, {String baseUrl}) = _WebServices;

  @GET('users')
  Future<List<User>> getAllUsers();
}
