<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

/**
 * @OA\Schema(
 *     title="Profile",
 *     description="Модель профиля",
 *     type="object",
 * )
 */

class Profile extends Model
{
    use HasFactory;

         /**
     * @OA\Property(
     *     title="user_id",
     *     description="user_id",
     *     format="int64",
     *     example=1
     * )
     *
     * @var integer
     */
    private $user_id;

            /**
     * @OA\Property(
     *     title="photo",
     *     description="photo",
     *     format="string",
     *     example=1
     * )
     *
     * @var string
     */
    private $photo;

                /**
     * @OA\Property(
     *     title="city",
     *     description="city",
     *     format="string",
     *     example=1
     * )
     *
     * @var string
     */
    private $city;
}
