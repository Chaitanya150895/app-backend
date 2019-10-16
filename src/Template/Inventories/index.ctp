<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Inventory[]|\Cake\Collection\CollectionInterface $inventories
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Inventory'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Locations'), ['controller' => 'Locations', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Location'), ['controller' => 'Locations', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Orders'), ['controller' => 'Orders', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Order'), ['controller' => 'Orders', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Inventory Statuses'), ['controller' => 'InventoryStatuses', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Inventory Status'), ['controller' => 'InventoryStatuses', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="inventories index large-9 medium-8 columns content">
    <h3><?= __('Inventories') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('location_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('product_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('quantity') ?></th>
                <th scope="col"><?= $this->Paginator->sort('order_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('trailer') ?></th>
                <th scope="col"><?= $this->Paginator->sort('inventory_status_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created') ?></th>
                <th scope="col"><?= $this->Paginator->sort('modified') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($inventories as $inventory): ?>
            <tr>
                <td><?= $this->Number->format($inventory->id) ?></td>
                <td><?= $inventory->has('location') ? $this->Html->link($inventory->location->name, ['controller' => 'Locations', 'action' => 'view', $inventory->location->id]) : '' ?></td>
                <td><?= $inventory->has('product') ? $this->Html->link($inventory->product->name, ['controller' => 'Products', 'action' => 'view', $inventory->product->id]) : '' ?></td>
                <td><?= $this->Number->format($inventory->quantity) ?></td>
                <td><?= $inventory->has('order') ? $this->Html->link($inventory->order->id, ['controller' => 'Orders', 'action' => 'view', $inventory->order->id]) : '' ?></td>
                <td><?= $this->Number->format($inventory->trailer) ?></td>
                <td><?= $inventory->has('inventory_status') ? $this->Html->link($inventory->inventory_status->name, ['controller' => 'InventoryStatuses', 'action' => 'view', $inventory->inventory_status->id]) : '' ?></td>
                <td><?= h($inventory->created) ?></td>
                <td><?= h($inventory->modified) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $inventory->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $inventory->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $inventory->id], ['confirm' => __('Are you sure you want to delete # {0}?', $inventory->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
