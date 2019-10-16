<?php
namespace App\Test\TestCase\Model\Table;

use App\Model\Table\UserStatusesTable;
use Cake\ORM\TableRegistry;
use Cake\TestSuite\TestCase;

/**
 * App\Model\Table\UserStatusesTable Test Case
 */
class UserStatusesTableTest extends TestCase
{
    /**
     * Test subject
     *
     * @var \App\Model\Table\UserStatusesTable
     */
    public $UserStatuses;

    /**
     * Fixtures
     *
     * @var array
     */
    public $fixtures = [
        'app.UserStatuses',
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
        $config = TableRegistry::getTableLocator()->exists('UserStatuses') ? [] : ['className' => UserStatusesTable::class];
        $this->UserStatuses = TableRegistry::getTableLocator()->get('UserStatuses', $config);
    }

    /**
     * tearDown method
     *
     * @return void
     */
    public function tearDown()
    {
        unset($this->UserStatuses);

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
