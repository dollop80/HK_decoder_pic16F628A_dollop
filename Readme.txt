Based on version 8 this version is modified to only put out a PPM stream according to the channel data.
Polarity of PPM chain can be set with compile switch "Positive=1" or "Positive=0"

This pulse chain is directed to the former channel 1 pin
No servo signals are created anymore

I have modified the channel pulse creating routine accordingly

Timing for channel start pulse is 300us

PPM chain for "Positive=1"
--------|_|--------------|_|--------------|_|--------- ...  
--------|_|-------------|_|------------------------------------
              ch1                ch2              ch3           ch7         ch8


The compile time switch PPM_Fail_Safe =0 --> on fail safe time no PPM data stream is output
                        PPM_Fail_Safe =1 --> on fail safe time the defaults channel data stream is output

pull the Bind input momentarily low while the receiver is online. This will save the actual channel values as defaults and save them in the EEPROM

dollop
модифицировал прошивку.
Сделал, чтобы на выводе 7 МК (канал 2) выводился PWM канала газа (у меня 3). Сделано для того, чтобы можно было прилепить пищалку на канал, которая бы пищала когда не дрыгаешь газом. Номер канала можно поменять в строке 741. Все остальное бз изменений