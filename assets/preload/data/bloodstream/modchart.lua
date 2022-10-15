

local defaultNotePos = {};
local spin = true;


function onSongStart()
    for i = 0,7 do
        x = getPropertyFromGroup('strumLineNotes', i, 'x')

        y = getPropertyFromGroup('strumLineNotes', i, 'y')

        table.insert(defaultNotePos, {x,y})
      --  debugPrint("{" .. x .. "," .. y .. "}" .. " i:".. i)
    end
end

function onUpdate(elapsed)
    songPos = getPropertyFromClass('Conductor',  'songPosition');

    currentBeat = (songPos / 1000) * (bpm / 60)

    if  spin == true then
        for i = 0,7 do

            setPropertyFromGroup('strumLineNotes', i, 'y', defaultNotePos[i + 1][2] + 50 * math.cos((currentBeat + i*0.25) * math.pi))
            setPropertyFromGroup('strumLineNotes', i, 'x', defaultNotePos[i + 1][1] + 10 * math.cos(currentBeat + i*0.25) * math.pi)
        end
    end
end