max_confetti = 10;
crt_confetti = 0;
max_broccoli = 10;
crt_broccoli = 0;
goose = true;

function goose_confetti(){
goose = true;
crt_confetti = max_confetti;
}

function goose_broccoli(){
crt_broccoli = max_broccoli;
}

function win_confetti(){
audio_play_sound(snd_pop, 50, false);
part_type_direction(global.confetti_type, 100, 150, 0, false);
part_type_speed(global.confetti_type, 12, 26, 0, 0);
goose = false;
crt_confetti = 30;
}