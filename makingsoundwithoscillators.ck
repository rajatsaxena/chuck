        //sound network
        SinOsc s => dac;
        SqrOsc t => dac;
        
            //only play s
        0.5 => s.gain;
        0 => t.gain;

        for( 0 => int i; i< 200; i++)
        {
            i => s.freq;
            0.01::second => now;
        }

        //only play t

        0 => s.gain;
        0.2 => t.gain;

        for ( 0 => int i;i < 200; i++)
        {
            i => t.freq;
            0.01::second => now;
            
        }
  
        
        //play s and t at the same time
        0.6 => s.gain;
        0.4 => t.gain;

        for(0=> int i; i< 200; i++)
        {
            i => t.freq;
            i*2 => s.freq;
            0.01::second => now;
        }