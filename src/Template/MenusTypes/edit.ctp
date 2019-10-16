<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MenusType $menusType
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $menusType->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $menusType->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Menus Types'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Menus'), ['controller' => 'Menus', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Menu'), ['controller' => 'Menus', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Types'), ['controller' => 'Types', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Type'), ['controller' => 'Types', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="menusTypes form large-9 medium-8 columns content">
    <?= $this->Form->create($menusType) ?>
    <fieldset>
        <legend><?= __('Edit Menus Type') ?></legend>
        <?php
            echo $this->Form->control('menu_id', ['options' => $menus, 'empty' => true]);
            echo $this->Form->control('type_id', ['options' => $types, 'empty' => true]);
            echo $this->Form->control('created_by');
            echo $this->Form->control('modified_by');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
