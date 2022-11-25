// priority: 0

settings.logAddedRecipes = true
settings.logRemovedRecipes = true
settings.logSkippedRecipes = false
settings.logErroringRecipes = true

console.info('Hello, World! (You will see this line every time server resources reload)')
console.log('THEBLADELIX')

onEvent('recipes', event => {
	// Change recipes here
})

onEvent('item.tags', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
})

onEvent('player.tick', event => {
    //console.log(Object.keys(event.player))
})


/*
var pig = "minecraft:pig"

onEvent('item.right_click', event => {
    var player = event.player
    var x = player.x
    var y = player.y
    var z = player.z

    Utils.server.tell("Is a Goat and is Holding a Bucket")

  	event.item.count -= 1

    pig.spawn().setPosition(x, y, z)

})
*/