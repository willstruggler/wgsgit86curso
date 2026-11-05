local minotaurConfig = {
  spawnName = "minotaur_axe",
  name = "Minotaur",
  race = "blood",
  tags = { "minotaur", "minotaurmob", "minotaurs", "minotaur" },
  lookType = 29,
  groupId = "minotaurs",

  speed = 500,
  healthFactor = 30,
  weakFromPower = 1200,

  colorMapBaseName = "minotaur",
  randomColorMapChance = 50,

  targetDistance = 1,

  walkSounds = 'heavy',

  deathAnimation = 3,

  loot = {
    { itemId = 3577 },
    { itemId = 3281 },
  },

  attacks = {
    { target = true, cooldown = 2000, chance = 100, subname = "basic", range = 1, script = "minotaurs/minotaur_basic.lua", attackPercent = 35 },
    { target = true, cooldown = 5000, chance = 40, subname = "heavy axe", range = 1, script = "minotaurs/minotaur_heavy.lua", attackPercent = 90 }
  }
}

function init()
  g_game.loadMonster(minotaurConfig)
end
