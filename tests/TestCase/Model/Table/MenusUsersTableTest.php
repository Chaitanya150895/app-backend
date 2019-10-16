<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\MenusUsersTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\MenusUsersTable Test Case
 */
class MenusUsersTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\MenusUsersTable
     */
    public $MenusUsers;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.MenusUsers',
        'app.Menus',
        'app.Users'
    ];

    /**
     * setUp method
     *
     * @return void
     */
    public function setUp()
    {
        parent::setUp();
        $config = TableRegistry::getTableLocator()->exists('MenusUsers') ? [] : ['className' => MenusUsersTable::class];
        $this->MenusUsers = TableRegistry::getTableLocator()->get('MenusUsers', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->MenusUsers);

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
