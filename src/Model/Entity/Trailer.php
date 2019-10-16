<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Trailer Entity
 *
 * @property int $id
 * @property int $trailer_number
 * @property int $trailer_statuses_id
 * @property \Cake\I18n\FrozenTime $created
 * @property \Cake\I18n\FrozenTime $modified
 *
 * @property \App\Model\Entity\TarilerStatus $tariler_status
 * @property \App\Model\Entity\Order[] $orders
 */
class Trailer extends Entity
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
        'trailer_number' => true,
        'trailer_statuses_id' => true,
        'created' => true,
        'modified' => true,
        'tariler_status' => true,
        'orders' => true
    ];
}
