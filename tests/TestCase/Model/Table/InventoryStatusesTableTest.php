<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\InventoryStatusesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\InventoryStatusesTable Test Case
 */
class InventoryStatusesTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\InventoryStatusesTable
     */
    public $InventoryStatuses;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.InventoryStatuses',
        'app.Inventories'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('InventoryStatuses') ? [] : ['className' => InventoryStatusesTable::class];
        $this->InventoryStatuses = TableRegistry::getTableLocator()->get('InventoryStatuses', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->InventoryStatuses);

        parent::tearDown();
    }

    /**
     * Test initialize method
     *
     * @return void
     */
    public function testInitialize()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }

    /**
     * Test validationDefault method
     *
     * @return void
     */
    public function testValidationDefault()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
