<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MenusType $menusType
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Menus Type'), ['action' => 'edit', $menusType->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Menus Type'), ['action' => 'delete', $menusType->id], ['confirm' => __('Are you sure you want to delete # {0}?', $menusType->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Menus Types'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Menus Type'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Menus'), ['controller' => 'Menus', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Menu'), ['controller' => 'Menus', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Types'), ['controller' => 'Types', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Type'), ['controller' => 'Types', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="menusTypes view large-9 medium-8 columns content">
    <h3><?= h($menusType->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Menu') ?></th>
            <td><?= $menusType->has('menu') ? $this->Html->link($menusType->menu->name, ['controller' => 'Menus', 'action' => 'view', $menusType->menu->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Type') ?></th>
            <td><?= $menusType->has('type') ? $this->Html->link($menusType->type->name, ['controller' => 'Types', 'action' => 'view', $menusType->type->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($menusType->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created By') ?></th>
            <td><?= $this->Number->format($menusType->created_by) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified By') ?></th>
            <td><?= $this->Number->format($menusType->modified_by) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($menusType->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($menusType->modified) ?></td>
        </tr>
    </table>
</div>
