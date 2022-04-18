<?php

namespace App;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

/**
 * Class User
 * @package App
 */
class User extends Authenticatable  implements MustVerifyEmail
{
    use Notifiable, HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'name', 'email', 'password', 'cart','email_verified_at',

    ];
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
    
    /**
     * @return HasMany
     */
    public function orders(): HasMany
    {
        return $this->hasMany('Order', 'user_id', 'id');
    }
    
    /**
     * @param int $userId
     * @return int
     */
    public function markForLogoutById(int $userId): int
    {
        return $this->where('id', $userId)
            ->update(['cart' => '', 'force_logout' => true]);
    }
}
