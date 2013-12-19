//sound chain
SndBuf hihat => dac;

//me.dir(-1)
"C:/Users/saxena/Downloads/audio/hihat_01.wav" => hihat.read;

while(true)
{
    Math.random2f(0.1,0.3)=> hihat.gain;
    Math.random2f(.9,1.2) => hihat.rate;
    (Math.random2f(1,2)*0.2)::second => now;
    0 => hihat.pos;
}