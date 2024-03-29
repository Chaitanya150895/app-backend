<?php
namespace App\Model\Table;

use Cake\ORM\Query;
use Cake\ORM\RulesChecker;
use Cake\ORM\Table;
use Cake\Validation\Validator;

/**
 * Orders Model
 *
 * @property \App\Model\Table\SourcesTable&\Cake\ORM\Association\BelongsTo $Sources
 * @property \App\Model\Table\DestinationsTable&\Cake\ORM\Association\BelongsTo $Destinations
 * @property \App\Model\Table\UsersTable&\Cake\ORM\Association\BelongsTo $Users
 * @property \App\Model\Table\ProductsTable&\Cake\ORM\Association\BelongsTo $Products
 * @property \App\Model\Table\TrailersTable&\Cake\ORM\Association\BelongsTo $Trailers
 * @property \App\Model\Table\OrderStatusesTable&\Cake\ORM\Association\BelongsTo $OrderStatuses
 * @property \App\Model\Table\InventoriesTable&\Cake\ORM\Association\HasMany $Inventories
 *
 * @method \App\Model\Entity\Order get($primaryKey, $options = [])
 * @method \App\Model\Entity\Order newEntity($data = null, array $options = [])
 * @method \App\Model\Entity\Order[] newEntities(array $data, array $options = [])
 * @method \App\Model\Entity\Order|false save(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Order saveOrFail(\Cake\Datasource\EntityInterface $entity, $options = [])
 * @method \App\Model\Entity\Order patchEntity(\Cake\Datasource\EntityInterface $entity, array $data, array $options = [])
 * @method \App\Model\Entity\Order[] patchEntities($entities, array $data, array $options = [])
 * @method \App\Model\Entity\Order findOrCreate($search, callable $callback = null, $options = [])
 *
 * @mixin \Cake\ORM\Behavior\TimestampBehavior
 */
class OrdersTable extends Table
{
    /**
     * Initialize method
     *
     * @param array $config The configuration for the Table.
     * @return void
     */
    public function initialize(array $config)
    {
        parent::initialize($config);

        $this->setTable('orders');
        $this->setDisplayField('id');
        $this->setPrimaryKey('id');

        $this->addBehavior('Timestamp');

        $this->belongsTo('Sources', [
            'foreignKey' => 'source_id',
            'className' => 'Locations',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Destinations', [
            'foreignKey' => 'destination_id',
            'className' => 'Locations',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Users', [
            'foreignKey' => 'user_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Products', [
            'foreignKey' => 'product_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('Trailers', [
            'foreignKey' => 'trailer_id',
            'joinType' => 'INNER'
        ]);
        $this->belongsTo('OrderStatuses', [
            'foreignKey' => 'order_status_id',
            'joinType' => 'INNER'
        ]);
        $this->hasMany('Inventories', [
            'foreignKey' => 'order_id'
        ]);
    }

    /**
     * Default validation rules.
     *
     * @param \Cake\Validation\Validator $validator Validator instance.
     * @return \Cake\Validation\Validator
     */
    public function validationDefault(Validator $validator)
    {
        $validator
            ->nonNegativeInteger('id')
            ->allowEmptyString('id', null, 'create');

        $validator
            ->integer('quantity')
            ->requirePresence('quantity', 'create')
            ->notEmptyString('quantity');

        $validator
            ->dateTime('pickup_time')
            ->allowEmptyDateTime('pickup_time');

        $validator
            ->dateTime('drop_off_time')
            ->allowEmptyDateTime('drop_off_time');

        $validator
            ->scalar('comments')
            ->maxLength('comments', 500)
            ->allowEmptyString('comments');

        return $validator;
    }

    /**
     * Returns a rules checker object that will be used for validating
     * application integrity.
     *
     * @param \Cake\ORM\RulesChecker $rules The rules object to be modified.
     * @return \Cake\ORM\RulesChecker
     */
    public function buildRules(RulesChecker $rules)
    {
        $rules->add($rules->existsIn(['source_id'], 'Sources'));
        $rules->add($rules->existsIn(['destination_id'], 'Destinations'));
        $rules->add($rules->existsIn(['user_id'], 'Users'));
        $rules->add($rules->existsIn(['product_id'], 'Products'));
        $rules->add($rules->existsIn(['trailer_id'], 'Trailers'));
        $rules->add($rules->existsIn(['order_status_id'], 'OrderStatuses'));

        return $rules;
    }
}
