<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Trailer $trailer
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Trailers'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Orders'), ['controller' => 'Orders', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Order'), ['controller' => 'Orders', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="trailers form large-9 medium-8 columns content">
    <?= $this->Form->create($trailer) ?>
    <fieldset>
        <legend><?= __('Add Trailer') ?></legend>
        <?php
            echo $this->Form->control('trailer_number');
            echo $this->Form->control('trailer_statuses_id');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
