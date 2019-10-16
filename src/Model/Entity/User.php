<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * User Entity
 *
 * @property int $id
 * @property string|null $username
 * @property string|null $password
 * @property string|null $first_name
 * @property string|null $last_name
 * @property string|null $email
 * @property string|null $mobile
 * @property int|null $active
 * @property string|null $role
 * @property float|null $latitude
 * @property float|null $longitude
 * @property int|null $user_status_id
 * @property int $parent_id
 * @property int|null $boss
 * @property string|null $password_token
 * @property \Cake\I18n\FrozenTime|null $password_token_expire
 * @property string|null $confirm_email_token
 * @property int|null $email_verified
 * @property \Cake\I18n\FrozenTime|null $created
 * @property \Cake\I18n\FrozenTime|null $modified
 *
 * @property \App\Model\Entity\UserStatus $user_status
 * @property \App\Model\Entity\User $parent_user
 * @property \App\Model\Entity\Order[] $orders
 * @property \App\Model\Entity\User[] $child_users
 * @property \App\Model\Entity\Menu[] $menus
 * @property \App\Model\Entity\Role[] $roles
 * @property \App\Model\Entity\Type[] $types
 */
class User extends Entity
{
    /**
     * Fields that can be mass assigned using newEntity() or patchEntity().
     *
     * Note that when '*' is set to true, this allows all unspecified fields to
     * be mass assigned. For security purposes, it is advised to set '*' to false
     * (or remove it), and explicitly make individual fields accessible as needed.
     *
     * @var array
     */
    protected $_accessible = [
        'username' => true,
        'password' => true,
        'first_name' => true,
        'last_name' => true,
        'email' => true,
        'mobile' => true,
        'active' => true,
        'role' => true,
        'latitude' => true,
        'longitude' => true,
        'user_status_id' => true,
        'parent_id' => true,
        'boss' => true,
        'password_token' => true,
        'password_token_expire' => true,
        'confirm_email_token' => true,
        'email_verified' => true,
        'created' => true,
        'modified' => true,
        'user_status' => true,
        'parent_user' => true,
        'orders' => true,
        'child_users' => true,
        'menus' => true,
        'roles' => true,
        'types' => true
    ];

    /**
     * Fields that are excluded from JSON versions of the entity.
     *
     * @var array
     */
    protected $_hidden = [
        'password'
    ];
}
