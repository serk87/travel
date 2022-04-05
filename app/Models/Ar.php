<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @OA\Schema(
 *     title="Ar",
 *     description="AR Модель достопримечательности",
 *     type="object",
 * )
 */

class Ar extends Model
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
     *     title="fbx",
     *     description="Название",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $fbx;
        /**
     * @OA\Property(
     *     title="dae",
     *     description="Название",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $dae;
}
