<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\Menu[]|\Cake\Collection\CollectionInterface $menus
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Menu'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Types'), ['controller' => 'Types', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Type'), ['controller' => 'Types', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="menus index large-9 medium-8 columns content">
    <h3><?= __('Menus') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('name') ?></th>
                <th scope="col"><?= $this->Paginator->sort('parent_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('has_child') ?></th>
                <th scope="col"><?= $this->Paginator->sort('display') ?></th>
                <th scope="col"><?= $this->Paginator->sort('menu_order') ?></th>
                <th scope="col"><?= $this->Paginator->sort('controller') ?></th>
                <th scope="col"><?= $this->Paginator->sort('action') ?></th>
                <th scope="col"><?= $this->Paginator->sort('url') ?></th>
                <th scope="col"><?= $this->Paginator->sort('class') ?></th>
                <th scope="col"><?= $this->Paginator->sort('tag') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created') ?></th>
                <th scope="col"><?= $this->Paginator->sort('modified') ?></th>
                <th scope="col"><?= $this->Paginator->sort('created_by') ?></th>
                <th scope="col"><?= $this->Paginator->sort('modified_by') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($menus as $menu): ?>
            <tr>
                <td><?= $this->Number->format($menu->id) ?></td>
                <td><?= h($menu->name) ?></td>
                <td><?= $menu->has('parent_menu') ? $this->Html->link($menu->parent_menu->name, ['controller' => 'Menus', 'action' => 'view', $menu->parent_menu->id]) : '' ?></td>
                <td><?= $this->Number->format($menu->has_child) ?></td>
                <td><?= $this->Number->format($menu->display) ?></td>
                <td><?= $this->Number->format($menu->menu_order) ?></td>
                <td><?= h($menu->controller) ?></td>
                <td><?= h($menu->action) ?></td>
                <td><?= h($menu->url) ?></td>
                <td><?= h($menu->class) ?></td>
                <td><?= h($menu->tag) ?></td>
                <td><?= h($menu->created) ?></td>
                <td><?= h($menu->modified) ?></td>
                <td><?= $this->Number->format($menu->created_by) ?></td>
                <td><?= $this->Number->format($menu->modified_by) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $menu->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $menu->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $menu->id], ['confirm' => __('Are you sure you want to delete # {0}?', $menu->id)]) ?>
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
