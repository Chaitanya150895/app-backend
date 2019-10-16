<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Order Entity
 *
 * @property int $id
 * @property int $source_id
 * @property int $destination_id
 * @property int $user_id
 * @property int $product_id
 * @property int $quantity
 * @property int $trailer_id
 * @property \Cake\I18n\FrozenTime|null $pickup_time
 * @property \Cake\I18n\FrozenTime|null $drop_off_time
 * @property int $order_status_id
 * @property string|null $comments
 * @property \Cake\I18n\FrozenTime $created
 * @property \Cake\I18n\FrozenTime $modified
 *
 * @property \App\Model\Entity\Source $source
 * @property \App\Model\Entity\Destination $destination
 * @property \App\Model\Entity\User $user
 * @property \App\Model\Entity\Product $product
 * @property \App\Model\Entity\Trailer $trailer
 * @property \App\Model\Entity\OrderStatus $order_status
 * @property \App\Model\Entity\Inventory[] $inventories
 */
class Order extends Entity
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
        'source_id' => true,
        'destination_id' => true,
        'user_id' => true,
        'product_id' => true,
        'quantity' => true,
        'trailer_id' => true,
        'pickup_time' => true,
        'drop_off_time' => true,
        'order_status_id' => true,
        'comments' => true,
        'created' => true,
        'modified' => true,
        'source' => true,
        'destination' => true,
        'user' => true,
        'product' => true,
        'trailer' => true,
        'order_status' => true,
        'inventories' => true
    ];
}
