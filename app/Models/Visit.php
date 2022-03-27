<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @OA\Schema(
 *     title="Visit",
 *     description="Модель визитов",
 *     type="object",
 * )
 */


class Visit extends Model
{
    use HasFactory;

    public function attraction()
    {
        return $this->hasOne(Attraction::class, 'id', 'attraction_id');
    }


        /**
     * @OA\Property(
     *     title="id",
     *     description="id",
     *     format="int64",
     *     example=1
     * )
     *
     * @var integer
     */
    private $id;

        /**
     * @OA\Property(
     *     title="user_id",
     *     description="id",
     *     format="int64",
     *     example="пример"
     * )
     *
     * @var integer
     */
    private $user_id;

            /**
     * @OA\Property(
     *     title="attraction_id",
     *     description="attraction_id",
     *     format="int64",
     *     example="пример"
     * )
     *
     * @var integer
     */
    private $attraction_id;


      /**
     * @OA\Property(
     *     title="created_at",
     *     description="created_at",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $created_at;
          /**
     * @OA\Property(
     *     title="updated_at",
     *     description="updated_at",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $updated_at;

                /**
     * @OA\Property(
     *     title="attraction",
     *     description="достопримечательность",
     * type="object", ref="#/components/schemas/Attraction"
     * )
     *
     * @var string
     */
    private $attraction;
}
