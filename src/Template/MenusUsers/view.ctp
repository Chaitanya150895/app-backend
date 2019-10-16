<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MenusUser $menusUser
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Menus User'), ['action' => 'edit', $menusUser->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Menus User'), ['action' => 'delete', $menusUser->id], ['confirm' => __('Are you sure you want to delete # {0}?', $menusUser->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Menus Users'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Menus User'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Menus'), ['controller' => 'Menus', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Menu'), ['controller' => 'Menus', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="menusUsers view large-9 medium-8 columns content">
    <h3><?= h($menusUser->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Menu') ?></th>
            <td><?= $menusUser->has('menu') ? $this->Html->link($menusUser->menu->name, ['controller' => 'Menus', 'action' => 'view', $menusUser->menu->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('User') ?></th>
            <td><?= $menusUser->has('user') ? $this->Html->link($menusUser->user->id, ['controller' => 'Users', 'action' => 'view', $menusUser->user->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($menusUser->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created By') ?></th>
            <td><?= $this->Number->format($menusUser->created_by) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified By') ?></th>
            <td><?= $this->Number->format($menusUser->modified_by) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($menusUser->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($menusUser->modified) ?></td>
        </tr>
    </table>
</div>
