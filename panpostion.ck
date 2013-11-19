SinOsc r => Pan2 p => dac;

1.0 => float panPosition;

while( panPosition > -1.0 )
{
    panPosition => p.pan;
    <<< panPosition >>>;
    panPosition - .1 => panPosition;
}