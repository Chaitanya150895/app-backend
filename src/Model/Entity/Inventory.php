<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Inventory Entity
 *
 * @property int $id
 * @property int $location_id
 * @property int $product_id
 * @property int $quantity
 * @property int|null $order_id
 * @property int|null $trailer
 * @property int $inventory_status_id
 * @property \Cake\I18n\FrozenTime $created
 * @property \Cake\I18n\FrozenTime $modified
 *
 * @property \App\Model\Entity\Location $location
 * @property \App\Model\Entity\Product $product
 * @property \App\Model\Entity\Order $order
 * @property \App\Model\Entity\InventoryStatus $inventory_status
 */
class Inventory extends Entity
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
        'location_id' => true,
        'product_id' => true,
        'quantity' => true,
        'order_id' => true,
        'trailer' => true,
        'inventory_status_id' => true,
        'created' => true,
        'modified' => true,
        'location' => true,
        'product' => true,
        'order' => true,
        'inventory_status' => true
    ];
}
