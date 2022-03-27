<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


/**
 * @OA\Schema(
 *     title="SingleAttraction",
 *     description="Модель одной достопримечательности",
 *     type="object",
 * )
 */


class SingleAttraction extends Model
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
     *     title="city",
     *     description="Город",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $city;

        /**
     * @OA\Property(
     *     title="photo",
     *     description="photo",
     * type="array", @OA\Items(ref="#/components/schemas/Photo")
     * )
     *
     * @var string
     */
    private $photo;

}
