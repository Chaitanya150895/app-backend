<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * UserStatus Entity
 *
 * @property int $id
 * @property string|null $name
 * @property string|null $short_desc
 * @property string|resource|null $long_desc
 * @property \Cake\I18n\FrozenTime|null $created
 * @property \Cake\I18n\FrozenTime|null $modified
 *
 * @property \App\Model\Entity\User[] $users
 */
class UserStatus extends Entity
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
        'name' => true,
        'short_desc' => true,
        'long_desc' => true,
        'created' => true,
        'modified' => true,
        'users' => true
    ];
}
