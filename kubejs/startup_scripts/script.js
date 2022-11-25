// priority: 0

console.info('Hello, World! (You will only see this line once in console, during startup)')

onEvent('item.registry.tool_tiers', event => {
  event.add('igneous_charged', tier => {
    tier.uses = 2052
    tier.speed = 6.0
    tier.attackDamageBonus = 10.0
    tier.level = 2
    tier.enchantmentValue = 14
    tier.repairIngredient = '#forge:ingots/iron'
  })

  event.add('igneous_tier', tier => {
    tier.uses = 760
    tier.speed = 6.0
    tier.attackDamageBonus = 1.0
    tier.level = 3
    tier.enchantmentValue = 14
    tier.repairIngredient = '#forge:ingots/iron'
  })
})

onEvent('item.registry', event => {
	// Register new items here
	// event.create('example_item').displayName('Example Item')

	event.create('igneous_sword_charged').type('sword').tier('igneous_charged')

    event.create('igneous_gem')

	//Crystals
	event.create('crystal_1').maxStackSize(1)
	event.create('crystal_2').maxStackSize(1)
	event.create('crystal_3').maxStackSize(1)
	event.create('crystal_4').maxStackSize(1)
	event.create('crystal_5').maxStackSize(1)
	event.create('crystal_6').maxStackSize(1)
	event.create('crystal_7').maxStackSize(1)
	event.create('crystal_8').maxStackSize(1)
	
	
	//Magic Sword Image
	event.create('magic_sword_1').maxStackSize(1)
	event.create('magic_sword_2').maxStackSize(1)
	event.create('magic_sword_3').maxStackSize(1)
	event.create('magic_sword_4').maxStackSize(1)
	event.create('magic_sword_5').maxStackSize(1)
	event.create('magic_sword_6').maxStackSize(1)
	event.create('magic_sword_7').maxStackSize(1) 
	
	
	event.create('shield_1').maxStackSize(1) 
	event.create('shield_2').maxStackSize(1) 
	event.create('shield_3').maxStackSize(1) 
	event.create('shield_4').maxStackSize(1)

	event.create('fly_talisman').maxStackSize(1)
	
	event.create('potion_1').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_2').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_3').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_4').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_5').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_6').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_7').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_8').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_9').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_10').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_11').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_12').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_13').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_14').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_15').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_16').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_17').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_18').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_19').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	event.create('potion_20').maxStackSize(1).food(food => {
		food
      		.removeEffect('poison')
	})
	
})

onEvent('block.registry', event => {
	// Register new blocks here
	// event.create('example_block').material('wood').hardness(1.0).displayName('Example Block')
})