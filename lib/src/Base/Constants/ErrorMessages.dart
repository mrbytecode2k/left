abstract class  AppFailureMessages {

  static String unExpectedErrorMessage="Ha ocurrido un error inesperado";
}


abstract class FBFailureMessages{

  static String emailNotFoundMessage =
  "There is no user record corresponding to this identifier. The user may have been deleted";

  static String invalidPasswordMessage =
  "The password is invalid or the user does not have a password";

static String emailExistMessage =
  "La direccion de correo electronico ya esta siendo utilizada por otra cuenta";
  
static String tooManyAttempsMessage =
  "Hemos bloqueado todas las solicitudes de este dispositivo debido a una actividad inusual. Vuelve a intentarlo mas tarde";

static String invalidTokenMessage =
  "La credencial del usuario ya no es valida. El usuario debe iniciar sesion nuevamente";

static String userNotFoundMessage =
  "No hay ningun registro de usuario que corresponda a este identificador. Esposible que haya eliminado al usuario";


}