<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\TrailerStatusesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\TrailerStatusesTable Test Case
 */
class TrailerStatusesTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\TrailerStatusesTable
     */
    public $TrailerStatuses;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.TrailerStatuses'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('TrailerStatuses') ? [] : ['className' => TrailerStatusesTable::class];
        $this->TrailerStatuses = TableRegistry::getTableLocator()->get('TrailerStatuses', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->TrailerStatuses);

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
