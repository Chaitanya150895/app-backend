<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Order $order
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $order->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $order->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Orders'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Products'), ['controller' => 'Products', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Product'), ['controller' => 'Products', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Trailers'), ['controller' => 'Trailers', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Trailer'), ['controller' => 'Trailers', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Order Statuses'), ['controller' => 'OrderStatuses', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Order Status'), ['controller' => 'OrderStatuses', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Inventories'), ['controller' => 'Inventories', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Inventory'), ['controller' => 'Inventories', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="orders form large-9 medium-8 columns content">
    <?= $this->Form->create($order) ?>
    <fieldset>
        <legend><?= __('Edit Order') ?></legend>
        <?php
            echo $this->Form->control('source_id');
            echo $this->Form->control('destination_id');
            echo $this->Form->control('user_id', ['options' => $users]);
            echo $this->Form->control('product_id', ['options' => $products]);
            echo $this->Form->control('quantity');
            echo $this->Form->control('trailer_id', ['options' => $trailers]);
            echo $this->Form->control('pickup_time', ['empty' => true]);
            echo $this->Form->control('drop_off_time', ['empty' => true]);
            echo $this->Form->control('order_status_id', ['options' => $orderStatuses]);
            echo $this->Form->control('comments');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
