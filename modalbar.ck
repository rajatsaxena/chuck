ModalBar m => dac;

while(true)
{
    Math.random2(0,8) => m.preset;
    Math.random2f(200,1000) => m.freq;
    1 => m.noteOn;
    0.3::second => now;
}