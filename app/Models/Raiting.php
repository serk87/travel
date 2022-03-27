<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


/**
 * @OA\Schema(
 *     title="Raiting",
 *     description="Модель рейтингаи",
 *     type="object",
 * )
 */

class Raiting extends Model
{
    use HasFactory;

    protected $table = 'ratings';

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
     *     title="attraction_id",
     *     description="attraction_id",
     *     format="int64",
     *     example=1
     * )
     *
     * @var integer
     */
    private $attraction_id;

                  /**
     * @OA\Property(
     *     title="dislike",
     *     description="dislike",
     *     format="int64",
     *     example=1
     * )
     *
     * @var integer
     */
    private $dislike;

                  /**
     * @OA\Property(
     *     title="like",
     *     description="like",
     *     format="int64",
     *     example=1
     * )
     *
     * @var integer
     */
    private $like;
    
}
