<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Profile;
use App\Models\Visit;
use App\Models\Attraction;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\File;
use Validator;

class ProfileController extends Controller
{
    /**
     * @OA\Get(
     *      path="/api/profile",
     *      operationId="profile",
     *      tags={"Профиль пользователя"},
     * security={
     *  {"passport": {}},
     *   },
     *      summary="Профиль",
     *      description="Профиль",
     * 
     *     @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/User"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *          response=422,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Ваш профиль не заполнен")
     *        )
     *      ),
     * @OA\Response(
     *          response=401,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="message", type="string", example="Unauthenticated")
     *        )
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
    public function getprofile() {
        if (Auth::user()) {
            try {
                $profile = Profile::where('user_id', Auth::user()->id)->first();
                if ($profile) {
                    $user = User::where('id', Auth::user()->id)->first();
                    $result = $user->load(['profile' => function($query) {
                        $query->select('user_id','photo', 'city')->get();
                    }]); 
                    return response()->json($user, 200);
                } else {
                    return  response()->json(['error'=>'Ваш профиль не заполнен'], 422);
                }
                
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422);
            }
    }else {
        return response([
            'error' => 'Вы не авторизованы'
        ], 422);
      }
    }

     /**
     * @OA\Patch(
     *      path="/api/profile",
     *      operationId="postprofile",
     *      tags={"Профиль пользователя"},
     * security={
     *  {"passport": {}},
     *   },
     *      summary="Изменение Профиля",
     *      description="Изменение Профиля",
     *      @OA\Parameter(
     *          name="city",
     *          description="город",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     *      @OA\Parameter(
     *          name="name",
     *          description="Имя",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     *      @OA\Parameter(
     *          name="email",
     *          description="email",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     *     @OA\Response(response="200",
     *      description="OK",
     *         @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Ваш профиль успешно заполнен")
     *        ),
     *   ),
     * @OA\Response(
     *          response=422,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Ваш профиль не заполнен")
     *        )
     *      ),
     * @OA\Response(
     *          response=401,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="message", type="string", example="Unauthenticated")
     *        )
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



    public function editprofile(Request $request) {
        if (Auth::user()) {
            try {
                $profile = Profile::where('user_id', Auth::user()->id)->first();
                $user = User::where('id', Auth::user()->id)->first();
                if($request->city) {
                    $profile->city = $request->city;
                    $profile->save();
                }
                if ($request->name) {
                    $user->name = $request->name;
                    $user->save();
                }
                if ($request->email) {
                    $user->email = $request->email;
                    $user->save();
                }
                return  response()->json(['error'=>"Ваш профиль успешно заполнен"], 200);
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422);
            }
        }else {
            return response([
                'error' => 'Вы не авторизованы'
            ], 422);
        }
    }


    /**
* @OA\Post(
* tags={"Профиль пользователя"},
* description="Загрузка фото",
* path="/api/profile",
* security={{"passport":{}}},
* @OA\RequestBody(
* @OA\MediaType(
* mediaType="multipart/form-data",
* @OA\Schema(
* type="object",
* @OA\Property(
* description="photo to upload",
* property="file",

* type="string",
* format="binary",
* ),
* )
* )
* ),
     *     @OA\Response(response="200",
     *      description="OK",
     *         @OA\JsonContent(
     *       @OA\Property(property="message", type="string", example="Success")
     *        ),
     *   ),
     * @OA\Response(
     *          response=422,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Вы не авторизованы")
     *        )
     *      ),
     * @OA\Response(
     *          response=401,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="message", type="string", example="Unauthenticated")
     *        )
     *      ),
* )
* @param \Illuminate\Http\Request $request
* @return \Symfony\Component\HttpFoundation\BinaryFileResponse
*/



    public function photoprofile(Request $request) {
        $validator = Validator::make($request->all(),[ 
            'file' => 'required|mimes:jpg,png,jpeg|max:2048',
      ]); 
      if($validator->fails()) {          
            
        return response()->json(['error'=>$validator->errors()], 401);                        
     }  
        if (Auth::user()) {
            try {
            $profile = Profile::where('user_id', Auth::user()->id)->first();
               if($profile) {
        if ($file = $request->file('file')) {
            $path = $file->store('avatar');

            $request->file('file')->storeAs('/var/www/html/travel/public/avatar', time().'.jpg');
            $profile->photo = 'https://travel.madskill.ru/avatar/'.time().'.jpg';
            $profile->save();
            file_put_contents('/var/www/html/travel/public/avatar/'.time().'.jpg', file_get_contents($file));
            return response()->json([
                "message" => "Success"
            ], 200);
  
        }
    } else {
        return  response()->json(['error'=>'Ваш профиль не заполнен'], 422);
    }
        } catch(Error $error) {
            return  response()->json(['error'=>$error], 422);
        }
        }else {
            return response([
                'error' => 'Вы не авторизованы'
            ], 422);
        }
    }


        /**
     * @OA\Get(
     *      path="/api/visit",
     *      operationId="visit",
     *      tags={"Профиль пользователя"},
     * security={
     *  {"passport": {}},
     *   },
     *      summary="Посещенные достопримечательности",
     *      description="Посещенные достопримечательности",
     * 
     *     @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/Visit"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *          response=422,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Ваш профиль не заполнен")
     *        )
     *      ),
     * @OA\Response(
     *          response=401,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="message", type="string", example="Unauthenticated")
     *        )
     *      ),
     *  )
     */



    public function getvisit(Request $request) {
        if (Auth::user()) {
            try {
                $visit = Visit::where('user_id', Auth::user()->id)->get();
                $result = $visit->load(['attraction' => function($query) {
                    $query->select('id', 'name', 'description', 'image', 'latitude', 'longitude')->get();
                }]); 
                return response()->json($visit, 200);
        } catch(Error $error) {
            return  response()->json(['error'=>$error], 422);
        }
        }else {
            return response([
                'error' => 'Вы не авторизованы'
            ], 422);
        }
    }


    /**
     * @OA\Post(
     *      path="/api/visit",
     *      operationId="postvisit",
     *      tags={"Профиль пользователя"},
     * security={
     *  {"passport": {}},
     *   },
     *      summary="Изменение посещений",
     *      description="Изменение посещений",
     *      @OA\Parameter(
     *          name="attractionID",
     *          description="id достопримечательности",
     *          required=true,
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     *     @OA\Response(response="200",
     *      description="OK",
     *         @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Посещение добавлено")
     *        ),
     *   ),
     * @OA\Response(
     *          response=422,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Достопримечательность не найдена")
     *        )
     *      ),
     *      @OA\Response(
     *          response=423,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="id не может быть пустым")
     *        )
     *      ),
     *     @OA\Response(
     *          response=424,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Вы не авторизованы")
     *        )
     *      ),
     * @OA\Response(
     *          response=401,
     *          description="Ошибка",
     *          @OA\JsonContent(
     *       @OA\Property(property="message", type="string", example="Unauthenticated")
     *        )
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
    



    public function setvisit(Request $request) {
        if (Auth::user()) {
            if($request->attractionID) {
                $att = Attraction::where('id', $request->attractionID)->first();
                if ($att) {
                    $visit = new Visit();
                    $visit->user_id = Auth::user()->id;
                    $visit->attraction_id = $request->attractionID;
                    $visit->save();
                    return  response()->json(['error'=>'Посещение добавлено'], 200);
                } else {
                    return  response()->json(['error'=>'Достопримечательность не найдена'], 422);
                }
            }else {
                return  response()->json(['error'=>'id не может быть пустым'], 423);
        }
        }else {
            return response([
                'error' => 'Вы не авторизованы'
            ], 424);
        }
    }
}
