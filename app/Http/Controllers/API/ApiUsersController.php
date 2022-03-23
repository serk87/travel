<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class ApiUsersController extends Controller
{
        // /** 
        // *  @OA\POST(
        // *     path="/api/registeruser",
        // *     description="Регистрация",
        // *     @OA\Response(response="Регистрация", description="Регистрация новых пользователей")
        // * )
        // */

//              /**
//  * @OA\POST(
//  *     path="/registeruser",
//  *     description="Регистрация",
//  *     @OA\Response(response="default", description="Welcome page")
//  * )
//  */
/**
     * @OA\Post(
     *      path="/api/register",
     *      operationId="registeruser",
     *      tags={"Пользователь"},
     *      summary="Регистрация",
     *      description="Регистрация",
     *     @OA\Parameter(
     *          name="name",
     *          description="Ник пользователя",
     *          required=true,
     *          in="header",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     *     @OA\Parameter(
     *          name="email",
     *          description="Email пользователя",
     *          required=true,
     *          in="header",
     *          @OA\Schema(
     *              type="string",
     *              format="email",
     *               example="ivanov@ivan.ru"
     *          )
     *      ),
     *     *     @OA\Parameter(
     *          name="password",
     *          description="Пароль пользователя",
     *          required=true,
     *          in="header",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     *      @OA\Response(
     *          response=200,
     *          description="Успешное выполнение",
     *           @OA\JsonContent(
     *       @OA\Property(property="message", type="string", example="Успешно зарегистрированы")
     *        )
     *       ),
     * @OA\Response(
     *    response=422,
     *    description="Ошибка",
     *    @OA\JsonContent(
     *       @OA\Property(property="errors", type="string", example="Текст ошибки")
     *        )
     *       ),
     *     )
     */
    public function register(Request $request) {
       
        $validator = Validator::make([
            'name' => $request->header('name'),
            'email' => $request->header('email'),
            'password' => $request->header('password'),
        ], [
            'name' => 'required|string|max:255',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|string|min:8',
        ]);
    
        if ($validator->fails())
        {
            return response(['errors'=>$validator->errors()->all()], 422);
        }
        $password=Hash::make($request->header('password'));
        $user = User::create([
            'name' => $request->header('name'),
            'email' => $request->header('email'),
            'password' => $password,
        ]);
        $response = ['message' => 'Успешно зарегистрированы'];
        return response($response, 200);
    
    }

     /**
     * @OA\Delete(
     *      path="/api/logout",
     *      operationId="logout",
     *      tags={"Пользователь"},
     * security={
     *  {"passport": {}},
     *   },
     *      summary="Выход",
     *      description="Выход",
     *      @OA\Response(
     *          response=200,
     *          description="Успешно",
     *          @OA\MediaType(
     *           mediaType="application/json",
     *      )
     *      ),
     *  )
     * @SWG\SecurityScheme(
 *   securityDefinition="passport",
 *   type="oauth2",
 *   tokenUrl="/oauth/token",
 *   flow="authorizationCode",
 *   scopes={}
 * )
     */

    public function logout(Request $request)
    {
      
    //     $token = $request->bearerToken();
    //     DB::table('oauth_access_tokens')
    //         ->where('id', $token)
    //         ->delete();
    // return response()->json([
    //     'message' => 'Successfully logged out'
    // ]);
    //     echo $token;
    // $request->user()->token()->revoke();
    //     return response()->json([
    //       'message' => 'Successfully logged out']);
    // if (Auth::user()) {
        $user = Auth::user()->token();
        return response()->json($user, 200);
    //     $user->revoke();

    //     return response()->json([
    //       'success' => true,
    //       'message' => 'Logout successfully'
    //   ]);
    //   }else {
    //     return response()->json([
    //       'success' => false,
    //       'message' => 'Unable to Logout'
    //     ]);
    //   }
    }




}
