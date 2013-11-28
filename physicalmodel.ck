Impulse imp => Delay d => dac;
d => d; //feedback loop
0.99 => d.gain;

0.005::second => d.delay;
1 => imp.next;

while(true)
{
    Math.random2f(0.01,0.1)::second => now;
    1 => imp.next;
}