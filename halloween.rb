use_bpm 136
use_synth :piano
live_loop :loop1 do
  play :d
  sleep 0.5
  play :f
  sleep 0.5
  play :f
  sleep 0.5
  play :d
  sleep 0.5
  play :f
  sleep 0.5
  play :f
  sleep 0.5
  play :d
  sleep  0.5
  play :f
  sleep 0.5
  play :d
  sleep 0.5
  play :f
  sleep 0.5
end

live_loop :loop2 do
  play :f2, sustain: 10
  sleep 5
  play :f2, sustain: 10
  sleep 5
  play :f2, sustain: 10
  sleep 5
end