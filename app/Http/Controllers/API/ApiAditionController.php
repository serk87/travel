<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Attraction;
use App\Models\Raiting;
use App\Models\Populate;
use App\Models\Ar;
use App\Models\Sound;

class ApiAditionController extends Controller
{


    /**
     * @OA\Get(
     *      path="/api/populate",
     *      operationId="populate",
     *      tags={"Достопримечательности"},
     *      summary="Популярные Достопримечательности",
     *      description="Популярные Достопримечательности",
     * @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/Populate"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *    response=422,
     *    description="Ошибка",
     *    @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Текст ошибки")
     *        )
     *       ),
     *     )
     */
    public function getpopulate(Request $request) {

            try {
                $attraction = Attraction::select('id', 'name', 'description', 'image', 'city')
                ->inRandomOrder()->limit(9)->get();
                return response()->json($attraction, 200);
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422);
            }
    }

        /**
     * @OA\Get(
     *      path="/api/recommendations",
     *      operationId="recommendations",
     *      tags={"Достопримечательности"},
     *      summary="Рекомендуемые Достопримечательности",
     *      description="Рекомендуемые Достопримечательности",
     * @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/Populate"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *    response=422,
     *    description="Ошибка",
     *    @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Текст ошибки")
     *        )
     *       ),
     *     )
     */

    
    public function getrecommendations(Request $request) {
        try {
            $attraction = Attraction::select('id', 'name', 'description', 'image', 'city')
            ->inRandomOrder()->limit(5)->get();
            return response()->json($attraction, 200);
        } catch(Error $error) {
            return  response()->json(['error'=>$error], 422);
        }
    }

      /**
     * @OA\Get(
     *      path="/api/search",
     *      operationId="search",
     *      tags={"Достопримечательности"},
     *      summary="Поиск Достопримечательностей",
     *      description="Поиск Достопримечательностей",
     *     *      @OA\Parameter(
     *          name="city",
     *          description="Город",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     * @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/Populate"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *    response=422,
     *    description="Ошибка",
     *    @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Текст ошибки")
     *        )
     *       ),
     *     )
     */

    public function getsearch(Request $request) {
        if ($request) {
            try {
                $attraction = Attraction::select('id', 'name', 'image', 'description', 'city')
                ->where('city', 'like', '%'.$request->city.'%')->get();
                return response()->json($attraction, 200);
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422);
            }
        } else {
            return  response()->json(['error'=>'Достопримечательности не найдены'], 422);
        }
    }

         /**
     * @OA\Get(
     *      path="/api/attraction",
     *      operationId="attraction",
     *      tags={"Достопримечательности"},
     *      summary="Одна Достопримечательность",
     *      description="Одна Достопримечательность",
     *     *      @OA\Parameter(
     *          name="id",
     *          description="id",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     * @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/SingleAttraction"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *    response=422,
     *    description="Ошибка",
     *    @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Текст ошибки")
     *        )
     *       ),
     *     )
     */

    public function getattraction(Request $request) {
        if ($request->id) {
            try {
                $attraction = Attraction::select('id', 'name', 'description', 'city')
                ->where('id', $request->id)->get();
                $result = $attraction->load(['photo' => function ($query) {
                    $query->get();
                }
            ]);
                return response()->json($attraction, 200);
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422);
            }
        } else {
            return  response()->json(['error'=>'id не может быть пустым'], 422);
        }
    }

         /**
     * @OA\Get(
     *      path="/api/rating",
     *      operationId="rating",
     *      tags={"Рейтинг"},
     *      summary="Получить Рейтинг",
     *      description="Получить Рейтинг",
     *     *      @OA\Parameter(
     *          name="attraction_id",
     *          description="id достопримечательности",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     * @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/Raiting"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *    response=422,
     *    description="Ошибка",
     *    @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Текст ошибки")
     *        )
     *       ),
     *     )
     */

    public function getrating(Request $request) {
        if ($request->attraction_id) {
            try {
                $attraction = Raiting::where('attraction_id', $request->attraction_id)
                ->select('id', 'attraction_id', 'like', 'dislike')->get();
                return response()->json($attraction, 200);
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422);
            }
        } else {
            return  response()->json(['error'=>'id не может быть пустым'], 422);
        }
    }

             /**
     * @OA\Post(
     *      path="/api/rating",
     *      operationId="postrating",
     *      tags={"Рейтинг"},
     *      summary="Изменить Рейтинг",
     *      description="Изменить Рейтинг",
     *      @OA\Parameter(
     *          name="attraction_id",
     *          description="id достопримечательности",
     *          in="query",
     *          required=true,
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     * @OA\Parameter(
     *          name="like",
     *          description="Положительная эмоция",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     * @OA\Parameter(
     *          name="dislike",
     *          description="Отрицательная эмоция",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     * @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/Raiting"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *    response=422,
     *    description="Ошибка",
     *    @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Текст ошибки")
     *        )
     *       ),
     *     )
     */

    public function setrating(Request $request) {
        if ($request->attraction_id) {
        if ($request->like || $request->dislike) {
            try {
                $attraction = Raiting::where('attraction_id', $request->attraction_id)->first();
                if ($attraction) {
                $like = (int)$attraction->like;
                $dislike = (int)$attraction->dislike;
                if($request->like && !$request->dislike) {
                    $attraction->like = $like + 1;
                    $attraction->save();
                } elseif ($request->dislike && !$request->like) {
                    $attraction->dislike = $dislike + 1;
                    $attraction->save();
                }
                return response()->json($attraction, 200);

            } else {
                $att = Attraction::where('id', $request->attraction_id)->first();
                if ($att) {
                $rating = new Raiting();
                $rating->attraction_id = $request->attraction_id;
                if($request->like && !$request->dislike) {
                    $rating->like = 1; 
                    $rating->dislike = 0; 
                } elseif ($request->dislike && !$request->like) {
                    $rating->dislike = 1; 
                    $rating->like = 0; 
                }
                $rating->save();
                return response()->json($rating, 200);
            } else {
                return  response()->json(['error'=>'Достопримечательность не найдена'], 422);
            }
            }
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422);
            }
        } else {
            return  response()->json(['error'=>'Укажите ваше мнение'], 422);
        }
    } else {
        return  response()->json(['error'=>'id не может быть пустым'], 422);
    }
    }
    
    //      /**
    //  * @OA\Get(
    //  *      path="/api/ar",
    //  *      operationId="ar",
    //  *      tags={"AR"},
    //  *      summary="Получить AR объкты",
    //  *      description="Получить AR объктыг",
    //  * @OA\Response(response="200",
    //  *      description="OK",
    //  *         @OA\MediaType(
    //  *             mediaType="application/json",
    //  *             @OA\Schema(
    //  *                 type="array",
    //  *                 @OA\Items(
    //  *                   ref="#/components/schemas/Ar"
    //  *                 ),
    //  *             )
    //  *         ),
    //  *   ),
    //  * @OA\Response(
    //  *    response=422,
    //  *    description="Ошибка",
    //  *    @OA\JsonContent(
    //  *       @OA\Property(property="error", type="string", example="Текст ошибки")
    //  *        )
    //  *       ),
    //  *     )
    //  */

    public function getar(Request $request) {
        try {
        $ars = Ar::orderBy('name', 'asc')->get();
        return response()->json($ars, 200);
    } catch(Error $error) {
        return  response()->json(['error'=>$error], 422, $headers);
    }
    }

    /**
     * @OA\Get(
     *      path="/api/sound",
     *      operationId="sound",
     *      tags={"Аудиогид"},
     *      summary="Получить аудио",
     *      description="Получить аудио",
     * @OA\Parameter(
     *          name="attraction_id",
     *          description="id достопримечательности",
     *          in="query",
     *          required=true,
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     * @OA\Response(response="200",
     *      description="OK",
     *         @OA\MediaType(
     *             mediaType="application/json",
     *             @OA\Schema(
     *                 type="array",
     *                 @OA\Items(
     *                   ref="#/components/schemas/Sound"
     *                 ),
     *             )
     *         ),
     *   ),
     * @OA\Response(
     *    response=422,
     *    description="Ошибка",
     *    @OA\JsonContent(
     *       @OA\Property(property="error", type="string", example="Текст ошибки")
     *        )
     *       ),
     *     )
     */

    public function getsound(Request $request) {
        
        if ($request->attraction_id) {
            try {
                $attraction = Attraction::where('id', $request->attraction_id)->first();
                if ($attraction) {
                    $sound = Sound::where('attraction_id', $attraction->id)->get();
                    return response()->json($sound, 200);
                } else {
                    return  response()->json(['error'=>'Достопримечательность не найдена'], 422);
                }
                return response()->json($ars, 200);
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422);
            }
        } else {
            return  response()->json(['error'=>'attraction_id не может быть пустым'], 422);
        }
        
    }

}
