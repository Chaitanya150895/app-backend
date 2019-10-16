<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\MenusType[]|\Cake\Collection\CollectionInterface $menusTypes
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Menus Type'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Menus'), ['controller' => 'Menus', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Menu'), ['controller' => 'Menus', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Types'), ['controller' => 'Types', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Type'), ['controller' => 'Types', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="menusTypes index large-9 medium-8 columns content">
    <h3><?= __('Menus Types') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('menu_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('type_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created') ?></th>
                <th scope="col"><?= $this->Paginator->sort('modified') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created_by') ?></th>
                <th scope="col"><?= $this->Paginator->sort('modified_by') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($menusTypes as $menusType): ?>
            <tr>
                <td><?= $this->Number->format($menusType->id) ?></td>
                <td><?= $menusType->has('menu') ? $this->Html->link($menusType->menu->name, ['controller' => 'Menus', 'action' => 'view', $menusType->menu->id]) : '' ?></td>
                <td><?= $menusType->has('type') ? $this->Html->link($menusType->type->name, ['controller' => 'Types', 'action' => 'view', $menusType->type->id]) : '' ?></td>
                <td><?= h($menusType->created) ?></td>
                <td><?= h($menusType->modified) ?></td>
                <td><?= $this->Number->format($menusType->created_by) ?></td>
                <td><?= $this->Number->format($menusType->modified_by) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $menusType->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $menusType->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $menusType->id], ['confirm' => __('Are you sure you want to delete # {0}?', $menusType->id)]) ?>
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
