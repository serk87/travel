<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Attraction;

class ApiAttactionController extends Controller
{
    /**
     * @OA\Get(
     *      path="/api/attractions",
     *      operationId="attractions",
     *      tags={"Достопримечательности"},
     *      summary="Достопримечательности",
     *      description="Достопримечательности",
     *      @OA\Parameter(
     *          name="latitude",
     *          description="Широта",
     *          in="query",
     *          @OA\Schema(
     *              type="string"
     *          )
     *      ),
     *      @OA\Parameter(
     *          name="longitude",
     *          description="Долгота",
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
     *                   ref="#/components/schemas/Attraction"
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
    public function getattractions(Request $request) {
        if ($request->latitude || $request->longitude) {
            try {
                $attraction = Attraction::select('id', 'name', 'description', 'image', 'latitude', 'longitude')
                ->where('latitude', 'like', '%'.$request->latitude.'%')
                ->orWhere('longitude', 'like', '%'.$request->longitude.'%')
                ->get();
                return response()->json($attraction, 200);
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422, $headers);
            }
        }   else {

            try {
                $attraction = Attraction::select('id', 'name', 'description', 'image', 'latitude', 'longitude')->get();
                return response()->json($attraction, 200);
            } catch(Error $error) {
                return  response()->json(['error'=>$error], 422, $headers);
            }
        }
    }
}
