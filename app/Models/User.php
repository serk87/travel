<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;
use Spatie\Permission\Traits\HasRoles;

/**
 * @OA\Schema(
 *     title="User",
 *     description="Модель пользователя",
 *     type="object",
 * )
 */

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable, HasRoles;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];


    public function profile()
    {
        return $this->hasOne(Profile::class);
    }

    public function visit()
    {
        return $this->hasMany(Visit::class);
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
     *     title="name",
     *     description="name",
     *     format="string",
     *     example=1
     * )
     *
     * @var string
     */
    private $name;

               /**
     * @OA\Property(
     *     title="email_verified_at",
     *     description="email_verified_at",
     *     format="string",
     *     example=1
     * )
     *
     * @var string
     */
    private $email_verified_at;

               /**
     * @OA\Property(
     *     title="created_at",
     *     description="created_at",
     *     format="string",
     *     example=1
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
     *     example=1
     * )
     *
     * @var string
     */
    private $updated_at;


            /**
     * @OA\Property(
     *     title="profile",
     *     description="profile",
     * type="object", ref="#/components/schemas/Profile"
     * )
     *
     * @var string
     */
    private $profile;
}
