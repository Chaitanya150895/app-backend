<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\RolesUsersTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\RolesUsersTable Test Case
 */
class RolesUsersTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\RolesUsersTable
     */
    public $RolesUsers;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.RolesUsers',
        'app.Roles',
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
        $config = TableRegistry::getTableLocator()->exists('RolesUsers') ? [] : ['className' => RolesUsersTable::class];
        $this->RolesUsers = TableRegistry::getTableLocator()->get('RolesUsers', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->RolesUsers);

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
