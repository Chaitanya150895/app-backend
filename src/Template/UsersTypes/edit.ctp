<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\UsersType $usersType
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $usersType->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $usersType->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Users Types'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Types'), ['controller' => 'Types', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Type'), ['controller' => 'Types', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="usersTypes form large-9 medium-8 columns content">
    <?= $this->Form->create($usersType) ?>
    <fieldset>
        <legend><?= __('Edit Users Type') ?></legend>
        <?php
            echo $this->Form->control('user_id', ['options' => $users, 'empty' => true]);
            echo $this->Form->control('type_id', ['options' => $types, 'empty' => true]);
            echo $this->Form->control('created_by');
            echo $this->Form->control('modifid_by');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
