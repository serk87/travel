<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @OA\Schema(
 *     title="Attraction",
 *     description="Модель достопримечательности",
 *     type="object",
 * )
 */




class Attraction extends Model
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
     *     title="name",
     *     description="Название",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $name;
    /**
     * @OA\Property(
     *     title="description",
     *     description="Описание",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $description;
    /**
     * @OA\Property(
     *     title="image",
     *     description="Ссылка на фото",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $image;
    /**
     * @OA\Property(
     *     title="latitude",
     *     description="Широта",
     *     format="string",
     *     example="55.234"
     * )
     *
     * @var string
     */
    private $latitude;
    /**
     * @OA\Property(
     *     title="longitude",
     *     description="Долгота",
     *     format="string",
     *     example="33.234"
     * )
     *
     * @var string
     */
    private $longitude;

    public function photo()
    {
        return $this->hasMany(PhotoAttraction::class);
    }
}



