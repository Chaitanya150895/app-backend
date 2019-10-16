<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\UserStatus $userStatus
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit User Status'), ['action' => 'edit', $userStatus->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete User Status'), ['action' => 'delete', $userStatus->id], ['confirm' => __('Are you sure you want to delete # {0}?', $userStatus->id)]) ?> </li>
        <li><?= $this->Html->link(__('List User Statuses'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New User Status'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="userStatuses view large-9 medium-8 columns content">
    <h3><?= h($userStatus->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($userStatus->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Short Desc') ?></th>
            <td><?= h($userStatus->short_desc) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($userStatus->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($userStatus->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($userStatus->modified) ?></td>
        </tr>
    </table>
    <div class="related">
        <h4><?= __('Related Users') ?></h4>
        <?php if (!empty($userStatus->users)): ?>
        <table cellpadding="0" cellspacing="0">
            <tr>
                <th scope="col"><?= __('Id') ?></th>
                <th scope="col"><?= __('Username') ?></th>
                <th scope="col"><?= __('Password') ?></th>
                <th scope="col"><?= __('First Name') ?></th>
                <th scope="col"><?= __('Last Name') ?></th>
                <th scope="col"><?= __('Email') ?></th>
                <th scope="col"><?= __('Mobile') ?></th>
                <th scope="col"><?= __('Active') ?></th>
                <th scope="col"><?= __('Role') ?></th>
                <th scope="col"><?= __('Latitude') ?></th>
                <th scope="col"><?= __('Longitude') ?></th>
                <th scope="col"><?= __('User Status Id') ?></th>
                <th scope="col"><?= __('Parent Id') ?></th>
                <th scope="col"><?= __('Boss') ?></th>
                <th scope="col"><?= __('Password Token') ?></th>
                <th scope="col"><?= __('Password Token Expire') ?></th>
                <th scope="col"><?= __('Confirm Email Token') ?></th>
                <th scope="col"><?= __('Email Verified') ?></th>
                <th scope="col"><?= __('Created') ?></th>
                <th scope="col"><?= __('Modified') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
            <?php foreach ($userStatus->users as $users): ?>
            <tr>
                <td><?= h($users->id) ?></td>
                <td><?= h($users->username) ?></td>
                <td><?= h($users->password) ?></td>
                <td><?= h($users->first_name) ?></td>
                <td><?= h($users->last_name) ?></td>
                <td><?= h($users->email) ?></td>
                <td><?= h($users->mobile) ?></td>
                <td><?= h($users->active) ?></td>
                <td><?= h($users->role) ?></td>
                <td><?= h($users->latitude) ?></td>
                <td><?= h($users->longitude) ?></td>
                <td><?= h($users->user_status_id) ?></td>
                <td><?= h($users->parent_id) ?></td>
                <td><?= h($users->boss) ?></td>
                <td><?= h($users->password_token) ?></td>
                <td><?= h($users->password_token_expire) ?></td>
                <td><?= h($users->confirm_email_token) ?></td>
                <td><?= h($users->email_verified) ?></td>
                <td><?= h($users->created) ?></td>
                <td><?= h($users->modified) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['controller' => 'Users', 'action' => 'view', $users->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['controller' => 'Users', 'action' => 'edit', $users->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['controller' => 'Users', 'action' => 'delete', $users->id], ['confirm' => __('Are you sure you want to delete # {0}?', $users->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
        <?php endif; ?>
    </div>
</div>
