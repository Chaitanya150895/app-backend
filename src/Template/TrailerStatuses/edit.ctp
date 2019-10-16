<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\TrailerStatus $trailerStatus
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Form->postLink(
                __('Delete'),
                ['action' => 'delete', $trailerStatus->id],
                ['confirm' => __('Are you sure you want to delete # {0}?', $trailerStatus->id)]
            )
        ?></li>
        <li><?= $this->Html->link(__('List Trailer Statuses'), ['action' => 'index']) ?></li>
    </ul>
</nav>
<div class="trailerStatuses form large-9 medium-8 columns content">
    <?= $this->Form->create($trailerStatus) ?>
    <fieldset>
        <legend><?= __('Edit Trailer Status') ?></legend>
        <?php
            echo $this->Form->control('name');
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
