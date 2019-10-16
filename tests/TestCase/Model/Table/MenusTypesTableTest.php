<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\MenusTypesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\MenusTypesTable Test Case
 */
class MenusTypesTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\MenusTypesTable
     */
    public $MenusTypes;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.MenusTypes',
        'app.Menus',
        'app.Types'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('MenusTypes') ? [] : ['className' => MenusTypesTable::class];
        $this->MenusTypes = TableRegistry::getTableLocator()->get('MenusTypes', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->MenusTypes);

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

    /**
     * Test buildRules method
     *
     * @return void
     */
    public function testBuildRules()
    {
        $this->markTestIncomplete('Not implemented yet.');
    }
}
