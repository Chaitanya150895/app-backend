<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MenusUser $menusUser
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $menusUser->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $menusUser->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Menus Users'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Menus'), ['controller' => 'Menus', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Menu'), ['controller' => 'Menus', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="menusUsers form large-9 medium-8 columns content">
    <?= $this->Form->create($menusUser) ?>
    <fieldset>
        <legend><?= __('Edit Menus User') ?></legend>
        <?php
            echo $this->Form->control('menu_id', ['options' => $menus, 'empty' => true]);
            echo $this->Form->control('user_id', ['options' => $users, 'empty' => true]);
            echo $this->Form->control('created_by');
            echo $this->Form->control('modified_by');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
