SinOsc foo => dac;

while(true)
{
    Math.random2f(30,1000) => foo.freq;
    1::samp => now;
}