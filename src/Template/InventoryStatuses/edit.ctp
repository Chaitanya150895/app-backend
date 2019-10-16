<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\InventoryStatus $inventoryStatus
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $inventoryStatus->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $inventoryStatus->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Inventory Statuses'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Inventories'), ['controller' => 'Inventories', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Inventory'), ['controller' => 'Inventories', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="inventoryStatuses form large-9 medium-8 columns content">
    <?= $this->Form->create($inventoryStatus) ?>
    <fieldset>
        <legend><?= __('Edit Inventory Status') ?></legend>
        <?php
            echo $this->Form->control('name');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
