<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\UsersType $usersType
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Users Type'), ['action' => 'edit', $usersType->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Users Type'), ['action' => 'delete', $usersType->id], ['confirm' => __('Are you sure you want to delete # {0}?', $usersType->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Users Types'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Users Type'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Types'), ['controller' => 'Types', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Type'), ['controller' => 'Types', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="usersTypes view large-9 medium-8 columns content">
    <h3><?= h($usersType->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('User') ?></th>
            <td><?= $usersType->has('user') ? $this->Html->link($usersType->user->id, ['controller' => 'Users', 'action' => 'view', $usersType->user->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Type') ?></th>
            <td><?= $usersType->has('type') ? $this->Html->link($usersType->type->name, ['controller' => 'Types', 'action' => 'view', $usersType->type->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($usersType->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created By') ?></th>
            <td><?= $this->Number->format($usersType->created_by) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modifid By') ?></th>
            <td><?= $this->Number->format($usersType->modifid_by) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($usersType->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($usersType->modified) ?></td>
        </tr>
    </table>
</div>
