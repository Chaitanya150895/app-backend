<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\TrailerStatus $trailerStatus
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Trailer Status'), ['action' => 'edit', $trailerStatus->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Trailer Status'), ['action' => 'delete', $trailerStatus->id], ['confirm' => __('Are you sure you want to delete # {0}?', $trailerStatus->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Trailer Statuses'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Trailer Status'), ['action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="trailerStatuses view large-9 medium-8 columns content">
    <h3><?= h($trailerStatus->name) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Name') ?></th>
            <td><?= h($trailerStatus->name) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($trailerStatus->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($trailerStatus->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($trailerStatus->modified) ?></td>
        </tr>
    </table>
</div>
