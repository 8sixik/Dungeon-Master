// priority: 0

console.info('Hello, World! (You will see this line every time client resources reload)')

onEvent('jei.hide.items', event => {
	// Hide items in JEI here
	// event.hide('minecraft:cobblestone')
})

onEvent('ui.main_menu', event => {

var currentdate = new Date();
var datetime = "Last Sync: " + currentdate.getDate() + "/"
                + (currentdate.getMonth()+1)  + "/"
                + currentdate.getFullYear() + " @ "
                + currentdate.getHours() + ":"
                + currentdate.getMinutes() + ":"
                + currentdate.getSeconds();

var todayfull = new Date();
var todaytime = new Date();
var dd = String(todayfull.getDate()).padStart(2, '0');
var mm = String(todayfull.getMonth() + 1).padStart(2, '0');
var yyyy = todayfull.getFullYear();

var hh = String(todaytime.getHours()).padStart(2, '0');
var min = String(todaytime.getMinutes()).padStart(2, '0');
var sec = todaytime.getSeconds();

todayfull = mm + '/' + dd + '/' + yyyy;

adminmenu();



function adminmenu() {
     event.replace(ui => {
        //ui.background('kubejsui:textures/example_background.png')
        ui.tilingBackground('kubejsui:textures/example_background.png', 256)
        ui.minecraftLogo(30)

        ui.button(b => {
          b.name = 'Test'
          b.x = 10
          b.y = 10
          b.action = 'minecraft:singleplayer'
        })

        ui.button(b => {
          b.name = 'Test but in bottom right corner'
          b.x = ui.width - b.width - 10
          b.y = ui.height - b.height - 10
          b.action = 'https://feed-the-beast.com/'
        })

        ui.label(l => {
          l.name = Text.yellow('FTB Stranded')
          l.x = 2
          l.y = ui.height - 12
          l.action = 'https://feed-the-beast.com/'
        })

        ui.image(i => {
          i.x = (ui.width - 40) / 2
          i.y = (ui.height - 30) / 2
          i.width = 40
          i.height = 30
          i.action = 'https://feed-the-beast.com/'
        })

        ui.label(l => {
          l.name = Text.aqua(todayfull)
          l.x = 100
          l.y = ui.height - 40
          l.height = 15
          l.shadow = true
        })
        ui.label(l => {
          l.name = Text.aqua(datetime)
          l.x = 100
          l.y = ui.height - 20
          l.height = 15
          l.shadow = true
        })
      })
}
})