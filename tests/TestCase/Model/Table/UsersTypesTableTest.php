<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\UsersTypesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\UsersTypesTable Test Case
 */
class UsersTypesTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\UsersTypesTable
     */
    public $UsersTypes;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.UsersTypes',
        'app.Users',
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
        $config = TableRegistry::getTableLocator()->exists('UsersTypes') ? [] : ['className' => UsersTypesTable::class];
        $this->UsersTypes = TableRegistry::getTableLocator()->get('UsersTypes', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->UsersTypes);

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
