<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @OA\Schema(
 *     title="Sound",
 *     description="Аудиогид",
 *     type="object",
 * )
 */


class Sound extends Model
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
     *     title="sound",
     *     description="Ссылка на аудио файл",
     *     format="string",
     *     example="пример"
     * )
     *
     * @var string
     */
    private $sound;
}
