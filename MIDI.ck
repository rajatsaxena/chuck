//sound change

TriOsc s=> dac;

//loop
for ( 0=> int i; i <= 127; i++)
{
    Std.mtof(i) => float Hz; //our MIDI to hertz convertor
    <<< i, Hz>>>;
    Hz=> s.freq;
    200::ms => now;
}