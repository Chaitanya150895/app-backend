<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Location Entity
 *
 * @property int $id
 * @property string $name
 * @property string $address
 * @property string|null $city
 * @property string|null $state
 * @property string|null $zipcode
 * @property string|null $location_number
 * @property int $region_id
 * @property int|null $trailer_bays
 * @property int $location_type_id
 * @property \Cake\I18n\FrozenTime $created
 * @property \Cake\I18n\FrozenTime|null $modified
 *
 * @property \App\Model\Entity\Region $region
 * @property \App\Model\Entity\LocationType $location_type
 * @property \App\Model\Entity\Inventory[] $inventories
 * @property \App\Model\Entity\Schedule[] $schedules
 */
class Location extends Entity
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
        'address' => true,
        'city' => true,
        'state' => true,
        'zipcode' => true,
        'location_number' => true,
        'region_id' => true,
        'trailer_bays' => true,
        'location_type_id' => true,
        'created' => true,
        'modified' => true,
        'region' => true,
        'location_type' => true,
        'inventories' => true,
        'schedules' => true
    ];
}
