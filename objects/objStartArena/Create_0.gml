global.waveN = 0
global.waveTotal = 0

global.wave[global.waveTotal, waveVal.basic] = 3
global.wave[global.waveTotal, waveVal.skill] = 0
global.wave[global.waveTotal, waveVal.elite] = 0
global.wave[global.waveTotal, waveVal.total] = global.wave[global.waveTotal, waveVal.basic] + global.wave[global.waveTotal, waveVal.elite] + global.wave[global.waveTotal, waveVal.elite]
global.wave[global.waveTotal, waveVal.name] = "WAVE " + string(global.waveTotal + 1)

global.waveTotal++

global.wave[global.waveTotal, waveVal.basic] = 5
global.wave[global.waveTotal, waveVal.skill] = 2
global.wave[global.waveTotal, waveVal.elite] = 0
global.wave[global.waveTotal, waveVal.total] = global.wave[global.waveTotal, waveVal.basic] + global.wave[global.waveTotal, waveVal.elite] + global.wave[global.waveTotal, waveVal.elite]
global.wave[global.waveTotal, waveVal.name] = "WAVE " + string(global.waveTotal + 1)

global.waveTotal++

global.wave[global.waveTotal, waveVal.basic] = 4
global.wave[global.waveTotal, waveVal.skill] = 0
global.wave[global.waveTotal, waveVal.elite] = 1
global.wave[global.waveTotal, waveVal.total] = global.wave[global.waveTotal, waveVal.basic] + global.wave[global.waveTotal, waveVal.elite] + global.wave[global.waveTotal, waveVal.elite]
global.wave[global.waveTotal, waveVal.name] = "WAVE " + string(global.waveTotal + 1)

global.waveTotal++

global.wave[global.waveTotal, waveVal.basic] = 5
global.wave[global.waveTotal, waveVal.skill] = 3
global.wave[global.waveTotal, waveVal.elite] = 1
global.wave[global.waveTotal, waveVal.total] = global.wave[global.waveTotal, waveVal.basic] + global.wave[global.waveTotal, waveVal.elite] + global.wave[global.waveTotal, waveVal.elite]
global.wave[global.waveTotal, waveVal.name] = "WAVE " + string(global.waveTotal + 1)

global.waveTotal++

global.wave[global.waveTotal, waveVal.basic] = 7
global.wave[global.waveTotal, waveVal.skill] = 4
global.wave[global.waveTotal, waveVal.elite] = 2
global.wave[global.waveTotal, waveVal.total] = global.wave[global.waveTotal, waveVal.basic] + global.wave[global.waveTotal, waveVal.elite] + global.wave[global.waveTotal, waveVal.elite]
global.wave[global.waveTotal, waveVal.name] = "WAVE " + string(global.waveTotal + 1)

global.waveTotal++

//

contact = false