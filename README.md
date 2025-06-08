# Analog-IC-Design

## Internship program 2025
-------------------------------------------------------------------------------------

### COURSE OUTCOME

- Design of Analog-IC using electronic system.
- Deriving all the IC specifications using the circuit Analysis.
- A good understanding of MOS devices and Technology.
- Proficiency in analog circuit and design analysis.
- Having a good mastery in some tools--ngspice, xschem, magic.

### COURSE DETAILS
***Introduction to an electronic system design-USB-MIDI microphone.***

- Microphone pre-amplifier and interface circuit design.
- Select an widely available Op-Amp for the preamplifier e.g. TI OPA 344
- Derive the important specs for the CMOS Op-Amp design.
- Derive also all the specs for the circuit Design and analysis.

***Introduction to linear circuits and passive devices.***

- Understanding passive devices (RLC) using basic EM principles.
- Principle of linearity and superposition
- Network analysis: KCL, KVL, Thevenin, Norton, Superposition.
- Emphasis on interfacing circuits and power transfer principle.

***Introduction to all the Fundamentals***

- Understanding the BJT fundamentals. 
- Understanding of MOS Transistor.
- Understanding the Semiconductor IC Devices.
  
---------------------------------------------------------------------------------------------------

## RESOURCES & REFRENCES
1. PDK & DRC Manual  [PDK](https://github.com/silicon-vlsi/SI-2025-AnalogIC/blob/main/docs/skywater-pdk-readthedocs-io-en-main.pdf).
2. MEMS mic  [Datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf).
3. OP-AMP-344 [Datasheet](https://www.ti.com/lit/ds/symlink/opa345.pdf?ts=1748277734116&ref_url=https%253A%252F%252Fwww.google.com%252F).
4. Schematic [Sparkfun breakout Board](https://cdn.sparkfun.com/assets/7/5/6/e/d/SparkFun_Analog_MEMS_Microphone_Breakout_SPH8878LR5H-1.pdf).

-----------------------------------------------------------------------------------------------------

### DAY-1


***Calculate Thevenins Eqivalent of Microphone*** 
  
   ![image](https://github.com/user-attachments/assets/d37c7979-a279-427b-b419-542bcb5d5a04)
  
   ***REFERENCE***
   - [microphone datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf).
 
  ### ASSIGNMENT 
   - Find the Thevenin equivalent circuit for the microphone for normal voice operation.
   - Substitute the microphone's Thevenin's equivalent and find the frequency response of the analog front-end (AFE).
------------------------------------------------------------------------------------------------------------
### DAY-2

   - Introduction to Xschem.
     
     **THEVENIN MODEL OF MICROPHONE**
     
   ***Key specs from the microphone [datasheet](https://cdn.sparkfun.com/assets/0/5/8/b/1/SPH8878LR5H-1_Lovato_DS.pdf) and research:***
     
   - Sensitivty: -44 dBV/Pa.
   - Condition: 94 dB SPL at 1 kHz which is sound pressure of 1 Pa.
   - Normal voice conversation is typically 60 dB SPL.
     
   -  **Vth Calculation**
   
      - Voice (Pa) = 
10
(
60
−
94
)
/
20
=
19.9
×
10
−
3
P
a. 
  
      - Output (Vpk) =
√2
×
Vrms
=
2
×
19.9
×
10
−
3
P
a
×
10
−
44
/
20
=
178
μVpk

      - Vout - pk =
      0.178 mV

- Rth (from datasheet) = 380 ohms.

- Sparkfun Schematic of the breakout Board   [Link](https://cdn.sparkfun.com/assets/7/5/6/e/d/SparkFun_Analog_MEMS_Microphone_Breakout_SPH8878LR5H-1.pdf).
- From Sparkfun schematic: Rin=5k, Rfb=300k, therefore Gain = 60.
- So output of the amplfier will be 60x0.178 mVpk = 10.68 mVpk.
- Sparkfun site states 100 mVpk probaby assuming 10 times higher input signal i.e. Voice is 80 dB SPL.
- Input high-pass frequency =  1 / 2πRC = 1 / 2π5k4.7uF = 6.77Hz.
- Feedback Low-pass filter frequency =  1 / 2πRC = 1 / 2π300k27pF = 19.6kHz.
- Input common-mode filter =  1 / 2π10k1uF = 15.9Hz.


**Single-Pole Model of OPA 344**

  - Specs from the [OP344 Datasheet](https://www.ti.com/lit/ds/symlink/opa344.pdf?ts=1747822666491&ref_url=https%253A%252F%252Fwww.google.com%252F).

       - Open Loop DC Gain: 120 dB (From p-5 graph).
   
       - Unity Gain Frequency: 1 MHz.
  - *Pole = 1 MHz / 10^6= 1Hz*.






**Microphone AFE Analysis**

![image](https://github.com/user-attachments/assets/ba6269d3-3eab-4644-8a5c-1129533309e0).



------------------------------------------------------------------------------------------------------------------------------------------------------


### DAY-3

- **Introduction and learning all the details about Xschem**.


  - Link for the [video](https://www.youtube.com/watch?v=yKtu7QzSa78).


---------------------------------------------------------------------------------------------------------------------------------------------

### DAY-4

- **Review of Basic Circuit Theory   [Link](https://www.youtube.com/watch?v=Tmy_4_xQokA)**.
- **Next We are doing opAmp Modeling & Creating symbols in [Xschem](https://www.youtube.com/watch?v=436GMbK09JI)**.
- **Doing all the review and ppt of the Circuits**.


-----------------------------------------------------------------------------------------------------------------------------------------------


### DAY-5

**ASSIGNMENT WORK**

![image](https://github.com/user-attachments/assets/3144829a-ed08-4797-8f51-af665f2ba5c0)

- Determine the type of circuit and write the s-domain transfer function for it.
- Find the frequency of the appropriate -3 dB point (low-pass corner or high-pass corner).
- Create the schematic for the above circuit in xscheme, simulate and plot and calculate the following:
- Create a schematic and symbol for the opamp model with just a VCVS with a gain of 1000.

- **Operating point**

    - Back annotate the operating point to the schematic and verify.

- **AC simulation**
  
   - plot output voltage (in dB) and phase (in deg).
   - measure the maximum gain and the frequency at the gain.
   - measure the -3 dB frequency and verify with your calaculation.
   - Do the above measurement for a gain of 10000 (What is it in dB?).

- **Transient Simulation**

   - Provide an input with a sine wave of 100mV at two frequencies:

      - -3 dB frequency.
      -  10X -3 dB frequency.
        
    - Measure the peak-to-peak voltage at the output and calculate the gain.
 
      ![image](https://github.com/user-attachments/assets/15ea22d4-5245-4d34-8607-02a15dc21cf8)


- Create the single-pole model of the OpAmp as whown in the figure.

     - Write the s-domain expresion of the transfer function of the Op-Amp.

- Substitute the model in the high-pass filter.
- Repeat the high-pass filter simulation and measuement with the new OpAmp model and note the differences you observe.

    ![image](https://github.com/user-attachments/assets/d094270a-da5d-4714-8595-fae92ebf72bc)

- Substitute the singl-pole OpAmp model in the above figure.
  
- **Operating point**
  
   - Back annotate the operating point to the schematic and verify.

- **AC simulation**
    
    - plot output voltage (in dB) and phase (in deg).
    - measure the maximum gain and the frequency at the gain.
    - measure the -3 dB frequency and verify with your calaculation.

- **Transient Simulation**
  
   - Provide an input with a sine wave of 1mV at three frequencies:
         
      - -3 dB frequency of the high-pass corner.
      - Frequency at maximum gain.
      - -3 dB frequency of the low-pass corner.

   - Measure the peak-to-peak voltage at the output and verify with AC sim results.

  





    



