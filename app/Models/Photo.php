<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @OA\Schema(
 *     title="Photo",
 *     description="Модель фотографий",
 *     type="object",
 * )
 */ 
class Photo extends Model
{
    use HasFactory;

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
     *     title="image",
     *     description="Название",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $image;


}
