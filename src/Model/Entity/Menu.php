<?php
namespace App\Model\Entity;

use Cake\ORM\Entity;

/**
 * Menu Entity
 *
 * @property int $id
 * @property string|null $name
 * @property int|null $lft
 * @property int|null $rght
 * @property int|null $parent_id
 * @property int|null $has_child
 * @property int|null $display
 * @property int|null $menu_order
 * @property string|null $controller
 * @property string|null $action
 * @property string|null $url
 * @property string|null $class
 * @property string|null $tag
 * @property \Cake\I18n\FrozenTime|null $created
 * @property \Cake\I18n\FrozenTime|null $modified
 * @property int|null $created_by
 * @property int|null $modified_by
 *
 * @property \App\Model\Entity\Menu $parent_menu
 * @property \App\Model\Entity\Menu[] $child_menus
 * @property \App\Model\Entity\Type[] $types
 * @property \App\Model\Entity\User[] $users
 */
class Menu extends Entity
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
        'lft' => true,
        'rght' => true,
        'parent_id' => true,
        'has_child' => true,
        'display' => true,
        'menu_order' => true,
        'controller' => true,
        'action' => true,
        'url' => true,
        'class' => true,
        'tag' => true,
        'created' => true,
        'modified' => true,
        'created_by' => true,
        'modified_by' => true,
        'parent_menu' => true,
        'child_menus' => true,
        'types' => true,
        'users' => true
    ];
}
