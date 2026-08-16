## © Invt 

# Operation Manual Goodrive200A Series VFD 



<!-- Start of picture text -->
invt<br><!-- End of picture text -->

SHENZHEN INVT ELECTRIC CO., LTD. 

GD200A series VFD 

Preface 

##### **Preface** 

Thanks for choosing our products. 

Goodrive200A series variable-frequency drive (VFD) is newly-designed vector-type VFD by our company for controlling asynchronous AC inductance motors. Through adopting the most advanced speed sensor-less vector control technology and DSP control system, as well as enhancing the reliability and adaptability to the environment, our product is armed with optimized functions, flexible applications and stable performances. 

The vector control performance of Goodrive200A series VFD is as outstanding as that of the leading sophisticated VFDs in worldwide market. Its integrated speed and torque control can satisfy various application demands, in the meantime, its excellent anti-trip performance and strong adaptability to worse grid, temperature, humidity and dust guarantees its outstanding reliability and stability. 

Goodrive200A series VFD adopts modular to fulfill various customized needs. The powerful speed control, torque control, simple PLC, flexible input/output terminals, pulse frequency reference and traverse control can satisfy various requirements from complicated drives to reduce system cost and improve system reliability. 

Goodrive200A series VFD adopts electromagnetic compatibility design to ensure strong anti-electromagnetic interference capacity while realizing low noise and weakening electromagnetic interference in the application sites. 

This manual presents installation and configuration, parameters setup, fault diagnoses and daily maintenance and relative precautions to customers. Please read this manual carefully before installation to ensure Goodrive200A series VFD is installed and operated properly to give full play to its excellent performance. 

If the end user is a military unit or the product is used for weapon manufacturing, please comply with the relevant export control regulations of the **_Foreign Trade Law of the People's Republic of China_** and complete the necessary formalities. 

Our company reserves the right to update the information of our products without prior notice. 

i 

GD200A series VFD 

Contents 

##### **Contents** 

|**Preface ............................................................................................................................................ i**|
|---|
|**Contents ......................................................................................................................................... ii**|
|**1 Safety precautions ...................................................................................................................... 1**|
|1.1 What this chapter contains .................................................................................................. 1|
|1.2 Safety definition .................................................................................................................. 1|
|1.3 Warning symbols ................................................................................................................. 1|
|1.4 Safety guidelines ................................................................................................................. 2|
|1.4.1 Delivery and installation ............................................................................................. 2|
|1.4.2 Commission and running ........................................................................................... 3|
|1.4.3 Maintenance and replacement of components ........................................................... 3|
|1.4.4 Scrap treatment......................................................................................................... 4|
|**2 Quick start ................................................................................................................................... 5**|
|2.1 What this chapter contains .................................................................................................. 5|
|2.2 Unpacking inspection .......................................................................................................... 5|
|2.3 Application confirmation ...................................................................................................... 5|
|2.4 Installation environment ...................................................................................................... 5|
|2.5 Installation confirmation ....................................................................................................... 6|
|2.6 Basic commissioning ........................................................................................................... 6|
|**3 Product overview ........................................................................................................................ 7**|
|3.1 What this chapter contains .................................................................................................. 7|
|3.2 Basic principles ................................................................................................................... 7|
|3.3 Product specifications ......................................................................................................... 8|
|3.4 Nameplate .......................................................................................................................... 9|
|3.5 Type designation key......................................................................................................... 10|
|3.6 Rated specifications .......................................................................................................... 10|
|3.7 Structure diagram .............................................................................................................. 12|
|**4 Installation guidelines............................................................................................................... 13**|
|4.1 What this chapter contains ................................................................................................ 13|
|4.2 Mechanical installation ...................................................................................................... 13|
|4.2.1 Installation environment ........................................................................................... 13|
|4.2.2 Installation direction ................................................................................................. 14|
|4.2.3 Installation manner .................................................................................................. 15|
|4.2.4 Multiple installations ................................................................................................ 15|
|4.2.5 Vertical installation................................................................................................... 16|
|4.2.6 Tilt installation ......................................................................................................... 17|
|4.3 Standard wiring ................................................................................................................. 17|
|4.3.1 Wiring diagram of main circuit ................................................................................. 17|
|4.3.2 Terminals figure of main circuit ................................................................................ 18|
|4.3.3 Wiring of terminals in main circuit ............................................................................ 22|
|4.3.4 Wiring diagram of control circuit ............................................................................... 23|



ii 

Contents 

|GD200A series VFD<br>Contents|
|---|
|4.3.5 Terminals of control circuit ....................................................................................... 23|
|4.3.6 Input /Output signal connection figure ...................................................................... 25|
|4.4 Layout protection .............................................................................................................. 26|
|4.4.1 Protecting the VFD and input power cable in short-circuit situations ......................... 26|
|4.4.2 Protecting the motor and motor cable in short-circuit situations ................................ 27|
|4.4.3 Protecting the motor against thermal overload ......................................................... 27|
|4.4.4 Implementing a bypass connection .......................................................................... 27|
|**5 Keypad operation procedure .................................................................................................... 28**|
|5.1 What this chapter contains ................................................................................................ 28|
|5.2 Keypad ............................................................................................................................. 28|
|5.3 Keypad displaying ............................................................................................................. 30|
|5.4 Keypad operation .............................................................................................................. 30|
|5.4.1 How to modify the function codes of the VFD........................................................... 30|
|5.4.2 How to set the password of the VFD ........................................................................ 31|
|5.4.3 How to watch the VFD state through function codes ................................................ 32|
|**6 Function parameters ................................................................................................................. 33**|
|6.1 What this chapter contains ................................................................................................ 33|
|6.2 Goodrive200A general series function parameters ............................................................. 33|
|P00 Group Basic functions ............................................................................................... 34|
|P01 Group Start and stop control ..................................................................................... 40|
|P02 Group Motor 1 .......................................................................................................... 46|
|P03 Group Vector control ................................................................................................. 48|
|P04 Group SVPWM control .............................................................................................. 52|
|P05 Group Input terminals ............................................................................................... 56|
|P06 Group Output terminals ............................................................................................. 63|
|P07 Group Human-Machine Interface .............................................................................. 67|
|P08 Group Enhanced function ......................................................................................... 73|
|P09 Group PID control ..................................................................................................... 80|
|P10 Group Simple PLC and multi-step speed control ....................................................... 85|
|P11 Group Protective parameters .................................................................................... 88|
|P13 Group Enhanced function parameters ....................................................................... 91|
|P14 Group Serial communication ..................................................................................... 92|
|P17 Group Monitoring function ......................................................................................... 94|
|P24 Group Water supply .................................................................................................. 96|
|**7 Basic operation instruction ...................................................................................................... 99**|
|7.1 What this chapter contains ................................................................................................ 99|
|7.2 First powering on .............................................................................................................. 99|
|7.3 Vector control .................................................................................................................. 101|
|7.4 Torque control ................................................................................................................. 102|
|7.5 Parameters of the motor .................................................................................................. 103|
|7.6 Start and stop control ...................................................................................................... 104|
|7.7 Frequency setting ........................................................................................................... 105|



iii 

|GD200A series VFD<br>Contents|
|---|
|7.8 Simple PLC ..................................................................................................................... 107|
|7.9 Multi-step speed running ................................................................................................. 107|
|7.10 PID control .................................................................................................................... 108|
|7.10.1 General steps of PID parameters setting: ............................................................ 109|
|7.10.2 PID inching.......................................................................................................... 109|
|7.11 Pulse counter ................................................................................................................ 110|
|**8 Fault tracking .......................................................................................................................... 112**|
|8.1 What this chapter contains .............................................................................................. 112|
|8.2 Alarm and fault indications............................................................................................... 112|
|8.3 How to reset .................................................................................................................... 112|
|8.4 Fault history .................................................................................................................... 112|
|8.5 Fault instruction and solution ........................................................................................... 112|
|8.5.1 Other states .......................................................................................................... 116|
|8.6 Common fault analysis .................................................................................................... 117|
|8.6.1 The motor does not work ....................................................................................... 117|
|8.6.2 Motor vibration ...................................................................................................... 117|
|8.6.3 Overvoltage........................................................................................................... 118|
|8.6.4 Undervoltage fault ................................................................................................. 118|
|8.6.5 Abnormal motor heat ............................................................................................. 119|
|8.6.6 VFD overheating ................................................................................................... 119|
|8.6.7 Stall during the acceleration of the motor ............................................................... 120|
|8.6.8 Overcurrent ........................................................................................................... 121|
|8.7 VFD system interference troubleshooting ........................................................................ 121|
|8.8 Maintenance and hardware diagnostics ........................................................................... 122|
|8.8.1 Overcurrent ........................................................................................................... 122|
|8.8.2 Cooling fan ............................................................................................................ 124|
|8.8.3 Capacitors ............................................................................................................. 125|
|8.8.4 Power cable .......................................................................................................... 126|
|**9 Communication protocol ........................................................................................................ 127**|
|9.1 What this chapter contains .............................................................................................. 127|
|9.2 Brief instruction to MODBUS protocol .............................................................................. 127|
|9.3 Application of the VFD ..................................................................................................... 128|
|9.3.1 RS485 ................................................................................................................... 128|
|9.3.2 RTU mode............................................................................................................. 128|
|9.4 RTU command code and communication data illustration ................................................ 131|
|9.4.1 RTU mode............................................................................................................. 131|
|9.4.2 ASCII mode ........................................................................................................... 135|
|9.5 The definition of data address ......................................................................................... 138|
|9.5.1 The rules of parameter address of the function codes ............................................ 138|
|9.5.2 The address instruction of other function in MODBUS ........................................... 139|
|9.5.3 Fieldbus ratio values ............................................................................................. 142|
|9.5.4 Fault message response ....................................................................................... 143|



iv 

Contents 

|GD200A series VFD<br>Contents|
|---|
|9.6 Example of writing and reading ....................................................................................... 144|
|9.6.1 Example of reading command 03H ........................................................................ 144|
|9.6.2 Example of writing command 06H ......................................................................... 145|
|9.6.3 Example of continuous writing command 10H ........................................................ 147|
|**Appendix A Technical data ........................................................................................................ 150**|
|A.1 What this chapter contains .............................................................................................. 150|
|A.2 Ratings ........................................................................................................................... 150|
|A.2.1 Capacity ............................................................................................................... 150|
|A.2.2 Derating ................................................................................................................ 150|
|A.3 Electric power network specification ................................................................................ 151|
|A.4 Motor connection data .................................................................................................... 151|
|A.4.1 EMC compatibility and motor cable length ............................................................. 151|
|A.5 Applicable standards ....................................................................................................... 151|
|A.5.1 CE marking ........................................................................................................... 152|
|A.5.2 Compliance with the European EMC Directive ...................................................... 152|
|A.6 EMC regulations ............................................................................................................. 152|
|A.6.1 Category C2 ......................................................................................................... 153|
|A.6.2 Category C3 ......................................................................................................... 153|
|**Appendix B Dimension drawings .............................................................................................. 154**|
|B.1 What this chapter contains .............................................................................................. 154|
|B.2 Keypad structure ............................................................................................................ 154|
|B.2.1 Structure chart ...................................................................................................... 154|
|B.2.2 Installation chart .................................................................................................... 154|
|B.3 VFD chart ....................................................................................................................... 155|
|B.3.1 Wall mounting ....................................................................................................... 155|
|B.3.2 Flange mounting ................................................................................................... 157|
|B.3.3 Floor mounting ...................................................................................................... 159|
|**Appendix C Peripheral options and parts ................................................................................. 160**|
|C.1 What this chapter contains .............................................................................................. 160|
|C.2 Peripheral wiring ............................................................................................................. 160|
|C.3 Power supply .................................................................................................................. 161|
|C.4 Cables ............................................................................................................................ 161|
|C.4.1 Power cables ........................................................................................................ 161|
|C.4.2 Control cables ...................................................................................................... 162|
|C.4.3 Routing the cables ................................................................................................ 164|
|C.4.4 Checking the insulation ......................................................................................... 165|
|C.5 Breaker, electromagnetic contactor and leakage protection switch .................................. 165|
|C.6 Reactors ......................................................................................................................... 166|
|C.7 Filters ............................................................................................................................. 168|
|C.8 Braking system ............................................................................................................... 169|
|C.8.1 Select the braking components ............................................................................. 169|
|C.8.2 Select the brake resistor cables ............................................................................ 171|



v 

|GD200A series VFD|Contents|
|---|---|
|C.8.3 Place the brake resistor ...........................................|............................................. 171|
|C.9 Other optional parts ...........................................................|............................................. 172|
|**Appendix D Further Information ..................................................**|**............................................. 174**|
|D.1 Product and service inquiries .............................................|............................................. 174|
|D.2 Feedback on INVT VFD manuals .......................................|............................................. 174|
|D.3 Document library on the internet ........................................|............................................. 174|



vi 

GD200A series VFD 

Safety <u>precautions</u> 

##### **1 Safety precautions** 

###### **1.1 What this chapter contains** 

Read this manual carefully and follow all safety precautions before moving, installing, operating and servicing the variable-frequency drive (VFD). If ignored, physical injury or death may occur, or damage may occur to the devices. 

If any physical injury or death or damage to the devices occurs for ignoring to the safety precautions in the manual, our company will not be responsible for any damages and we are not legally bound in any manner. 

###### **1.2 Safety definition** 

**Danger:** Serious physical injury or even death may occur if not follow relevant requirements **Warning:** Physical injury or damage to the devices may occur if not follow relevant requirements **Note:** Physical hurt may occur if not follow relevant requirements **Qualified** People working on the device should take part in professional electrical **electricians:** and safety training, receive the certification and be familiar with all steps and requirements of installing, commissioning, operating and maintaining the device to avoid any emergency. 

###### **1.3 Warning symbols** 

Warnings caution you about conditions which can result in serious injury or death and/or damage to the equipment, and advice on how to avoid the danger. Following warning symbols are used in this manual: 

|**Symbols**|**Name**|**Instruction**|**Abbreviation**|
|---|---|---|---|
|Danger|Electrical<br>Danger|Serious physical injury or even death<br>may occur if not follow the relative<br>requirements||
|Warning|General<br>danger|Physical injury or damage to the<br>devices may occur if not follow the<br>relative requirements||
|Do not touch|Electrostatic<br>discharge|Damage to the PCBA board may<br>occur if not follow the relative<br>requirements||
|Hot|Hot sides|Sides of the device may become hot.<br>Do not touch.||
|Note|Note|Physical hurt may occur if not follow<br>the relative requirements|Note|



-1- 

GD200A series VFD 

Safety <u>precautions</u> 

###### **1.4 Safety guidelines** 

-  Only qualified electricians are allowed to operate on the VFD. 

-  Do not carry out any wiring and inspection or changing components when the power supply is applied. Ensure all input power supply is disconnected before wiring and checking and always wait for at least the time designated on the VFD or until the DC bus voltage is less than 36V. Below is the table of the waiting time: 

|**VFD model**|**Minimum waiting time**|
|---|---|
|380V 0R7G–110G/132P|5 minutes|
|380V 132G/160P–315G/355P|15 minutes|
|380V 355G/400P and higher|25 minutes|
|Do not refit the VFD unauthorized; othe<br>may occur.|rwise fire, electric shock or other injury|



-  The base of the heat sink may become hot during running. Do not touch to avoid hurt. 

-  The electrical parts and components inside the VFD are electrostatic. Take measurements to avoid electrostatic discharge during relevant operation. 

###### **1.4.1 Delivery and installation** 

-  Please install the VFD on fire-retardant material and keep the VFD away from combustible materials. 

-  Connect the braking optional parts (braking resistors, braking units or feedback units) according to the wiring diagram. 

-  Do not operate on the VFD if there is any damage or components loss to the VFD. 

-  Do not touch the VFD with wet items or body, otherwise electric shock may occur. 

###### **Note:** 

- Select appropriate moving and installing tools to ensure a safe and normal running of the VFD and avoid physical injury or death. For physical safety, the erector should take some mechanical protective measures, such as wearing exposure shoes and working uniforms. 

- Ensure to avoid physical shock or vibration during delivery and installation. 

- Do not carry the VFD by its cover. The cover may fall off. 

- Install away from children and other public places. Please use the VFD on appropriate condition (See chapter 4.2.1 Installation environment). 

- Don't allow screws, cables and other conductive items to fall inside the VFD. 

-2- 

GD200A series VFD 

Safety <u>precautions</u> 

- The leakage current of the VFD may be above 3.5mA during operation. Ground with proper techniques and ensure the grounding resistor is less than 10Ω. The conductivity of PE grounding conductor is the same as that of the phase conductor (with the same cross sectional area). For the 030G/037P and higher models, the cross sectional area of the PE grounding conductor can be slightly less than the recommended area. 

- R, S and T are the input terminals of the power supply, while U, V and W are the motor terminals. Please connect the input power cables and motor cables with proper techniques; otherwise the damage to the VFD may occur. 

###### **1.4.2 Commission and running** 

-  Disconnect all power supplies applied to the VFD before the terminal wiring and wait for at least the designated time after disconnecting the power supply. 

-  High voltage is present inside the VFD during running. Do not carry out any operation except for the keypad setting. It must be noted that the control terminal of EV1000 inverter is ELV (Extra Low Voltage) circuit, which cannot be connected directly to the accessible terminals of other devices if no protective isolation measure is taken. For instance, RS485 terminal of the inverter can be connected to RS232 interface of the PC only after a converter with protective isolation is connected between them. 

-  The VFD may start up by itself when P01.21=1. Do not get close to the VFD and motor. 

-  The VFD cannot be used as "Emergency-stop device". 

-  The VFD cannot be used to break the motor suddenly. A mechanical braking device should be provided. 

###### **Note:** 

- Do not switch on or off the input power supply of the VFD frequently. 

- For the VFD that has been stored for a long time, check and fix the capacitance and try to run it again before utilization (see 8.8 Maintenance and hardware diagnostics). 

- Cover the front board before running, otherwise electric shock may occur. 

###### **1.4.3 Maintenance and replacement of components** 

-  Only qualified electricians are allowed to perform the maintenance, inspection, and components replacement of the VFD. 

-  Disconnect all power supplies to the VFD before the terminal wiring. Wait for at least the time designated on the VFD after disconnection. 

-  Take measures to avoid screws, cables and other conductive materials to fall into the VFD during maintenance and component replacement. 

###### **Note:** 

- Please select proper torque to tighten screws. 

-3- 

GD200A series VFD 

Safety <u>precautions</u> 

- Keep the VFD, parts and components away from combustible materials during maintenance and component replacement. 

- Do not carry out any insulation voltage-endurance test on the VFD and do not measure the control circuit of the VFD by megameter. 

- Carry out a sound anti-electrostatic protection to the VFD and its internal components during maintenance and component replacement. 

###### **1.4.4 Scrap treatment** 

-  There are heavy metals in the VFD. Deal with it as industrial waste. 



-  When the life cycle ends, the product should enter the recycling system. Dispose of it separately at an appropriate collection point instead of placing it in the normal waste stream. 

-4- 

GD200A series VFD 

Quick start 

##### **2 Quick start** 

###### **2.1 What this chapter contains** 

This chapter mainly describes the basic guidelines during the installation and commission procedures on the VFD, which you may follow to install and commission the VFD quickly. 

###### **2.2 Unpacking inspection** 

Check as followings after receiving products: 

|1. Check whether the packing box is damaged or dampened. If yes, contact local dealers or<br>INVT offices.|
|---|
|2. Check the model identifier on the exterior surface of the packing box is consistent with the<br>purchased model. If no,contact local dealers or INVT offices.|
|3. Check whether the interior surface of packing box is abnormal, for example, in wet condition,<br>or whether the enclosure of the VFD is damaged or cracked. If yes, contact local dealers or<br>INVT offices.|
|4. Check whether the name plate of the VFD is consistent with the model identifier on the<br>exterior surface of thepackingbox. If not,contact local dealers or INVT offices.|
|5. Check whether the accessories (including user's manual and control keypad) inside the<br>packingbox are complete. If not,contact local dealers or INVT offices.|



###### **2.3 Application confirmation** 

Check the machine before beginning to use the VFD: 

1. <mark>Check the load type to verify that there is no overload of the VFD during work and check whether the VFD needs to modify the power degree.</mark> 

|2. Check that the actual current of the motor is less than the rated current of the VFD.|
|---|
|3. Check that the control accuracyof the load is the same of the VFD.|



4. Check that the incoming supply voltage is correspondent to the rated voltage of the VFD. 

###### **2.4 Installation environment** 

Check as followings before the actual installation and usage: 

1. Check that the ambient temperature of the VFD is below 40°C. If exceeds, derate 1% for every additional 1°C. Additionally, the VFD cannot be used if the ambient temperature is above 50°C. 

|**Note:**for the cabinet VFD, the ambient temperature means the air temperature inside the<br>cabinet.|
|---|
|2. Check that the ambient temperature of the VFD in actual usage is above -10°C. If not, add<br>heating facilities.|
|**Note:**For the cabinet VFD, the ambient temperature means the air temperature inside the<br>cabinet.|



-5- 

GD200A series VFD 

Quick start 

|3. Check whether the VFD installation site altitude is less than 1000 meters. If yes, the VFD can<br>run at the rated power.<br>When the installation site altitude exceeds 1000m, derate 1% for every increase of 100m; when<br>the installation site altitude exceeds 3000m,consult the local INVT dealer or office.|
|---|
|4. Check that the humidity of the actual usage site is below 90% and condensation is not<br>allowed. If not,add additionalprotection to the VFDs.|
|5. Check that the actual usage site is away from direct sunlight and foreign objects cannot enter<br>the VFD. If not,add additionalprotective measures.|
|6. Check that there is no conductive dust or flammable gas in the actual usage site. If not, add<br>additionalprotection to VFDs.|



###### **2.5 Installation confirmation** 

Check as followings after the installation: 

|1. Check that the input and output cables meet the need of actual load.|
|---|
|2. Check that the accessories of the VFD are correctly and properly installed. The installation<br>cables should meet the needs of every component (including input reactors, input filters, output<br>reactors,output filters,DC reactors,brakingunits and brakingresistors).|
|3. Check that the VFD is installed on non-flammable materials and the calorific accessories<br>(reactors and brakingresistors)are awayfrom flammable materials.|
|4. Check that all control cables and power cables are run separately and the layout complies<br>with EMC requirement.|
|5. Check that allgroundingsystems areproperly grounded accordingto the VFD requirements.<br>6. Check that the free space during installation is sufficient according to the instructions in<br>user’s manual.|
|7. Check that the installation conforms to the instructions in user’s manual. The drive must be<br>installed in an uprightposition.|
|8. Check that the external connection terminals are tightly fastened and the torque is<br>appropriate.|
|9. Check that there are no screws, cables and other conductive items left in the VFD. If not, get<br>them out.|



###### **2.6 Basic commissioning** 

Complete the basic commissioning as followings before actual utilization: 

1. Select the motor type, set correct motor parameters and select control mode of the VFD according to the actual motor parameters. 

|2. Autotune. If possible, de-coupled from the motor load to start dynamic autotune. Or if not,<br>static autotune is available.|
|---|
|3. Adjust the ACC/DEC time accordingto the actual runningof the load.|
|4. Commission the device via jogging and check that the rotation direction is as required. If not,<br>change the rotation direction bychangingthe wiringof motor.|
|5. Set all controlparameters and then operate.|



-6- 

GD200A series VFD 

Product overview 

##### **3 Product overview** 

###### **3.1 What this chapter contains** 

The chapter briefly describes the operation principle, product characteristics, layout, nameplate and type designation information. 

###### **3.2 Basic principles** 

Goodrive200A series VFDs are wall, flange and floor mountable devices for controlling asynchronous AC inductance motors. 

The diagram below shows the main circuit diagram of the VFD. The rectifier converts three-phase AC voltage to DC voltage. The capacitor bank of the intermediate circuit stabilizes the DC voltage. The converter transforms the DC voltage back to AC voltage for the AC motor. The brake pipe connects the external braking resistor to the intermediate DC circuit to consume the feedback energy when the voltage in the circuit exceeds its maximum limit. 



<!-- Start of picture text -->
PB<br>（+）<br>R U<br>S V<br>T W<br>PE PE<br>（-）<br><!-- End of picture text -->

Figure 3-1 Main circuit diagram (for the 030G/037P and lower models) 



<!-- Start of picture text -->
DC reactor （+）<br>P1<br>R U<br>S V<br>T W<br>PE PE<br>（-）<br><!-- End of picture text -->

Figure 3-2 Main circuit diagram (for the 037G/045P and higher models) 

###### **Note:** 

1. The 037G/045P and higher models support external optional DC reactors. Before connecting, it is necessary to remove the copper strip between **P1** and **(+).** 

2. The 030G/037P and lower models have standard embedded braking units and the braking resistor is optional. 

-7- 

GD200A series VFD 

Product overview 

3. The 037G/045P and higher models can be installed with optional braking units and the braking unit and resistor are optional. 

###### **3.3 Product specifications** 

|**Function**|**Specification**|
|---|---|
|Input voltage (**V**)|AC 3PH 380V(-15%)–440V(+10%)|
|Input<br>Input current(**A**)|See Rated specifications_._|
|<br>Input frequency (**Hz**)|50Hz or 60Hz<br>Allowed range: 47–63Hz|
|Output voltage(**V**)|0–Input voltage|
|<br>Output current(**A**)|See Rated specifications_._|
|Output<br>Outputpower(**kW**)|See Rated specifications_._|
|Output frequency (**Hz**)|0–400Hz|
|Control mode|SVPWM,SVC|
|Motor type|Asynchronous motor|
|Speed ratio|Asynchronous motor 1: 100 (sensorless vector<br>control)|
|Speed control accuracy|±0.2%(sensorless vector control)|
|Speed fluctuation|± 0.3%(sensorless vector control)|
|<br>Torque response|<20ms(sensorless vector control)|
|Technical<br> <br>Torque control accuracy|10%(sensorless vector control)|
|control<br>f<br>Startingtorque|Asynchronous motor: 0.5Hz/150%(SVC)|
|eature<br>Overload capability|G type:<br>150% of rated current: 1 minute<br>180% of rated current: 10 seconds<br>200% of rated current: 1 second<br>P type:<br>120% of rated current: 1 minute<br>180% of rated current: 10 seconds<br>180% of rated current: 1 second|
|Frequency setting|Digital setting, analog setting, pulse frequency<br>setting, multi-step speed running setting, simple PLC<br>setting, PID setting, MODBUS communication<br>setting.<br>Shift between the set combination and set channel.|
|Running<br>control<br>Auto voltage adjustment|<sup>Keep a stable voltage automatically when the grid</sup><br>voltage transients|
|feature<br>Fault protection|Provide over 30 fault protection functions:<br>overcurrent, overvoltage, undervoltage, overheating,<br>phase loss and overload,etc.|
|Speed tracking|Restart the rotating motor smoothly<br>**Note:**This function is available for the 004G/5R5P<br>and higher models.|



-8- 

GD200A series VFD 

Product overview 

|**Function**|**Specification**|
|---|---|
|Terminal analog input<br>resolution|≤ 20mV|
|Terminal switch input<br>resolution|≤ 2ms|
|Analog input|1 channels ( AI2) 0 (2)–10V/0 (4)–20mA and 1<br>channel(AI3)-10–10V|
|Analogoutput|2 channels(AO1,AO2)0(2)–10V /0(4)–20mA|
|Peripheral<br>interface<br>Digital input|8 channels common input, max. frequency: 1kHz,<br>internal impedance: 3.3kΩ;<br>1 channel high speed input,max. frequency:  50kHz|
|Digital output|1 channel high speed pulse output, max. frequency:<br>50kHz;<br>1 channel Y terminal open collectorpole output|
|Relay output|2 channels programmable relay output<br>RO1A NO, RO1B NC, RO1C common terminal<br>RO2A NO, RO2B NC, RO2C common terminal<br>Contactor capability: 3A/AC250V,1A/DC30V|
|Mountable method|Wall,flange and floor mountable|
|Temperature of the<br>running environment|-10–50°C, derating is required if the temperature is<br>above 40°C. If the ambient temperature is above<br>40°C,derate 1% for everyadditional 1°C.|
|Ingressprotection|IP20|
|Cooling|Air-cooling|
|Others<br>Pollution level|Level 2|
|Braking unit|Built in 030G/037P and lower models.For other<br>models,it is an optionalpart.|
|EMC filter|380V series products can meet the requirements of<br>IEC61800-3 C3<br>External optional filter: meet the requirement of<br>IEC61800-3 C2|



###### **3.4 Nameplate** 



<!-- Start of picture text -->
Model:  GD200A-037G/045P-4 IP20<br>Power(Output):  37kW/45kW<br>Input:  AC 3PH 380V(-15%)-440V(+10%) 80A/94A 47Hz-<br>63Hz<br>Output:  AC 3PH 0V-Uinput 75A/92A 0Hz-400Hz<br>S/N: Made in China<br>Shenzhen INVT Electric Co.,Ltd<br><!-- End of picture text -->

Figure 3-3 Nameplate 

**Note:** This is the example of the nameplate for the standard products, and CE\TUV\IP20 will be marked according to the actual situations. 

-9- 

GD200A series VFD 

Product overview 

###### **3.5 Type designation key** 

The type designation contains information on the VFD. The user can find the type designation on the type designation label attached to the VFD or the simple nameplate. 

#### - - <u>GD200A 011 G/015 P 4</u> ① ② ③ ④⑤⑥ 

Figure 3-4 Product type 

|**Key**|**Instructions**|
|---|---|
|①|GD200A : abbreviation of Goodrive200A|
|②,④|3-digit code: output power. "R" means the decimal point;<br>"011": 11kW;"015": 15kW|
|③⑤|G: Constant torque load|
|,|P: Variable torque load|
|⑥|Input voltage degree:<br>4: AC 3PH 380V(-15%)–440V(+10%)|



###### **3.6 Rated specifications** 

||**Co**<br>|**nstant tor**<br>|**que**<br>|**Va**<br>|**riable torq  **<br>|**ue**<br>|
|---|---|---|---|---|---|---|
|**VFD model**|**Output**<br>**power**<br>**(kW)**|**Input**<br>**current**<br>**(A)**|**Output**<br>**current**<br>**(A)**|**Output**<br>**power**<br>**(kW)**|**Input**<br>**current**<br>**(A)**|**Output**<br>**current**<br>**(A)**|
|GD200A-0R7G-4|0.75|3.4|2.5|/|/|/|
|GD200A-1R5G-4|1.5|5.0|3.7|/|/|/|
|GD200A-2R2G-4|2.2|5.8|5|/|/|/|
|GD200A-004G/5R5P-4|4|13.5|9.5|5.5|19.5|14|
|GD200A-5R5G/7R5P-4|5.5|19.5|14|7.5|25|18.5|
|GD200A-7R5G/011P-4|7.5|25|18.5|11|32|25|
|GD200A-011G/015P-4|11|32|25|15|40|32|
|GD200A-015G/018P-4|15|40|32|18.5|47|38|
|GD200A-018G/022P-4|18.5|47|38|22|56|45|
|GD200A-022G/030P-4|22|56|45|30|70|60|
|GD200A-030G/037P-4|30|70|60|37|80|75|
|GD200A-037G/045P-4|37|80|75|45|94|92|
|GD200A-045G/055P-4|45|94|92|55|128|115|
|GD200A-055G/075P-4|55|128|115|75|160|150|
|GD200A-075G/090P-4|75|160|150|90|190|180|
|GD200A-090G/110P-4|90|190|180|110|225|215|
|GD200A-110G/132P-4|110|225|215|132|265|260|
|GD200A-132G/160P-4|132|265|260|160|310|305|



-10- 

GD200A series VFD 

Product overview 

||**Co**<br>|**nstant tor**<br>|**que**<br>|**Va**<br>|**riable torq  **<br>|**ue**<br>|
|---|---|---|---|---|---|---|
|**VFD model**|**Output**<br>**power**<br>**(kW)**|**Input**<br>**current**<br>**(A)**|**Output**<br>**current**<br>**(A)**|**Output**<br>**power**<br>**(kW)**|**Input**<br>**current**<br>**(A)**|**Output**<br>**current**<br>**(A)**|
|GD200A-160G/185P-4|160|310|305|185|345|340|
|GD200A-185G/200P-4|185|345|340|200|385|380|
|GD200A-200G/220P-4|200|385|380|220|430|425|
|GD200A-220G/250P-4|220|430|425|250|485|480|
|GD200A-250G/280P-4|250|485|480|280|545|530|
|GD200A-280G/315P-4|280|545|530|315|610|600|
|GD200A-315G/355P-4|315|610|600|355|625|650|
|GD200A-355G/400P-4|355|625|650|400|715|720|
|GD200A-400G-4|400|715|720|/|/|/|
|GD200A-450G-4|450|840|820|/|/|/|
|GD200A-500G-4|500|890|860|/|/|/|



###### **Note:** 

1. The input current of the 0R7G–315G/355P models is measured when the input voltage is 380V and no DC reactor and input/output reactor. 

2. The input current of the 355G/400P–500G models is measured when the input voltage is 380V and the circuit is with input reactor. 

3. The rated output current is defined as the output current when the output voltage is 380V. 

4. In the allowable voltage range, the output power and current cannot exceed the rated output power and current in any situation. 

-11- 

GD200A series VFD 

Product overview 

###### **3.7 Structure diagram** 

Below is the VFD layout figure (taking the 030G/037P model for example). 



<!-- Start of picture text -->
4<br>5<br>1<br>6<br>7<br>8<br>2<br>9<br>10<br>3<br>11<br>12<br>13<br><!-- End of picture text -->

Figure 3-5 Product structure diagram 

|**Serial**<br>**No.**|**Name**|**Illustration**|
|---|---|---|
|1|Keypadport|Connect the keypad|
|2|Upper cover|Protect the internalparts and components|
|3|Keypad|See 5.4 Keypad operationfor detailed information|
|4|Cooling fan|See 8.8 Maintenance and hardware diagnostics for<br>detailed information|
|5|Wiresport|Connect to the control board and the drive board|
|6|Nameplate|See 3 Product overview for detailed information|
|7|Side cover|Optional part. The side cover will increase the protective<br>degree of the VFD. The internal temperature of the VFD<br>will increase, too, so it is necessary to derate the VFD at<br>the same time|
|8|Control terminals|See 4 Installationguidelinesfor detailed information|
|9|Main circuit terminals|See 4 Installationguidelines for detailed information|
|10|Main circuit cable entry|Fix the main circuit cable|
|11|POWER light|Power indicator|
|12|Simple nameplate|See 3 Product overview for detailed information|
|13|Lower cover|Protect the internalparts and components|



-12- 

GD200A series VFD 

Installation guidelines 

##### **4 Installation guidelines** 

###### **4.1 What this chapter contains** 

The chapter describes the mechanical installation and electric installation. 

|Only qualified electricians are allowed to carry out what described in this<br>chapter. Please operate as the instructions in chapter 1 Safety precautions.|
|---|
|Ignoring these may cause physical injury or death or damage to the devices.|
|Ensure the power supply of the VFD is disconnected during the operation. Wait|
|for at least the time designated until the POWER indicator is off after the<br>disconnection if the power supply is applied. It is recommended to use the<br>multimeter to monitor that the DC bus voltage of the drive is under 36V.|
|The installation and design of the VFD should be complied with the requirement|
|of the local laws and regulations in the installation site. If the installation|
|infringes the requirement, our company will exempt from any responsibility.|
|Additionally, if users do not comply with the suggestion, some damage beyond|
|the assured maintenance range mayoccur.|



###### **4.2 Mechanical installation** 

###### **4.2.1 Installation environment** 

The installation environment is important for a full performance and long-term stable functions of the VFD. Check the installation environment as followings: 

|**Environment**|**Conditions**|
|---|---|
|Installation site|Indoor|
|Environment<br>temperature|-10–+50°C<br>If the ambient temperature of the VFD is above 40°C, derate 1% for<br>every additional 1°C.<br>It is not recommended to use the VFD if the ambient temperature is<br>above 50°C.<br>In order to improve the reliability of the device, do not use the VFD if<br>the ambient temperature changes frequently.<br>Please provide cooling fan or air conditioner to control the internal<br>ambient temperature below the required one if the VFD is used in a<br>close space such as in the control cabinet.<br>When the temperature is too low, if the VFD needs to restart to run<br>after a long stop, it is necessary to provide an external heating device<br>to increase the internal temperature, otherwise damage to the devices<br>mayoccur.|
|Humidity|RH≤90%<br>No condensation is allowed.<br>The maximum relative humidity should be equal to or less than 60%<br>in corrosive air.|



-13- 

GD200A series VFD 

Installation guidelines 

|**Environment**|**Conditions**|
|---|---|
|Storage temperature|-30 to +60°C|
|Running environment<br>condition|The installation site of the VFD should meet the following<br>requirements.<br>Away from the electromagnetic radiation source;<br>Away from contaminative air, such as corrosive gas, oil mist and<br>flammable gas;<br>Ensure foreign objects, such as metal power, dust, oil, water cannot<br>enter into the VFD (do not install the VFD on the flammable materials<br>such as wood);<br>Awayfrom direct sunlight,oil mist,steam and vibration environment.|
|Altitude|Below 1000 meters<br>When the installation site altitude exceeds 1000m, derate 1% for every<br>increase of 100m; when the installation site altitude exceeds 3000m,<br>consult the local INVT dealer or office.|
|Vibration|≤ 5.8m/s<sup>2</sup>(0.6g)|
|Installation direction|The VFD should be installed on an upright position to ensure sufficient<br>coolingeffect.|



###### **Note:** 

- Goodrive200A series VFDs should be installed in a clean and ventilated environment according to enclosure classification. 

- Cooling air must be clean, free from corrosive materials and electrically conductive dust. 

###### **4.2.2 Installation direction** 

The VFD may be installed on the wall or in a cabinet. 

The VFD must be installed in an upright position. Check the installation site according to the requirements below. For frame details, please see Appendix B Dimension drawings. 



<!-- Start of picture text -->
OK NG NG<br>A Vertical installation B Horizontal installation C Transversal installation<br><!-- End of picture text -->

Figure 4-1 Installation direction of the VFD 

-14- 



<!-- Start of picture text -->
/ll= — / =I<br>——— |ee —— |<br>Wall mounting Flange mounting<br><!-- End of picture text -->

GD200A series VFD 

Installation guidelines 



<!-- Start of picture text -->
A Warm ai r C<br>A B D B Co ol air C<br><!-- End of picture text -->

Figure 4-3 Parallel installation 

###### **Note:** 

- Before installing the different size VFDs, please align their top position for the convenience of later maintenance. 

- The minimum space of B, D and C is 100mm. 

###### **4.2.5 Vertical installation** 



<!-- Start of picture text -->
Wind board<br>Wind board<br>Cool<br>air<br>Cool<br>air<br>War m<br>air<br>Warm<br>air<br><!-- End of picture text -->

Figure 4-4 Vertical installation 

**Note:** Windscreen should be added in vertical installation for avoiding mutual impact and insufficient cooling. 

-16- 

GD200A series VFD 

Installation guidelines 

###### **4.2.6 Tilt installation** 



<!-- Start of picture text -->
air<br>Cool<br>air<br>Cool<br>air<br>Cool<br>air<br>Warm<br>air<br>Warm<br>air<br>Warm<br><!-- End of picture text -->

Figure 4-5 Tilt installation 

**Note:** Ensure the separation of the wind input and output channels in tilt installation for avoiding mutual impact. 

###### **4.3 Standard wiring** 

###### **4.3.1 Wiring diagram of main circuit** 



<!-- Start of picture text -->
Braking resistor<br>(+) PB (-)<br>U Output<br>3PH power reactorInput  R 015G/018P and lower V reactorInput  M<br>50/60Hz Input  S W filter<br>filter T<br>PE<br>Fuse<br><!-- End of picture text -->

Figure 4-6 Main circuit wiring diagram for the 015G/018P and lower models 

-17- 

GD200A series VFD 

Installation guidelines 

Braking resistor 



<!-- Start of picture text -->
(+) PB (-)<br>A1<br>For 1PH 220V: optional<br>A2<br>U Output<br>3PH power reactorInput  R 018G/022P~030G/037P V reactorOutput  M<br>50/60Hz Input  S W filter<br>filter T<br>PE<br>Fuse<br><!-- End of picture text -->

Figure 4-7 Main circuit wiring diagram for the 018G/022P–030G/037P models 



<!-- Start of picture text -->
Braking unit<br>DC reactor DC+ Braking<br>resistor<br>P1 (+) (-) DC-<br>A1<br>For 1PH 220V: optional<br>A2<br>U Output<br>reactor<br>3PH power reactorInput  RS 037G/045P VW Outputfilter M<br>Input<br>50/60Hz<br>filter T PE<br>Fuse<br><!-- End of picture text -->

Figure 4-8 Main circuit wiring diagram for the 037G/045P and higher models 

###### **Note:** 

- The fuses, DC reactors, braking units, braking resistors, input reactors, input filters, output reactors and output filters are optional parts. Please refer to Peripheral options and parts for detailed information. 

- **A1** and **A2** are optional parts for the 018G/022P and higher models. 

- **P1** and **(+)** are short circuited in factory, if need to connect with the DC rector, please remove the contact tag between **P1** and **(+)** . 

- Before connecting the braking resistor cable, remove the yellow labels of **PB** , **(+)** , and **(-)** from the terminal blocks. Otherwise, poor connection may occur. 

###### **4.3.2 Terminals figure of main circuit** 

Figure 4-9 Main circuit terminals for the 0R7G–5R5G/7R5G models 

-18- 

GD200A series VFD 

Installation guidelines 

Figure 4-10 Main circuit terminals for the 7R5G/011P–015G/018P models 

Figure 4-11 Main circuit terminals for the 018G/022P model 

Figure 4-12 Main circuit terminals for the 022G/030P–030G/037P models 

Figure 4-13 Main circuit terminals for the 037G/045P–055G/075P models 

-19- 

GD200A series VFD 

Installation guidelines 



Figure 4-14 Main circuit terminals for the 075G/090P–110G/132P models 

Figure 4-15 Main circuit terminals for the 132G/160P–200G/220P models 



Figure 4-16 Main circuit terminals for the 220G/250P–315G/355P models 

-20- 

GD200A series VFD 

Installation guidelines 



Figure 4-17 Main circuit terminals for the 355G/400P–500G models 

||**Ter**<br>**For the**|**minal name**<br>||
|---|---|---|---|
|**Terminal**|**030G/037P and**<br>**lower models**|**For the 037G/045P and**<br>**higher models**|**Function**|
|R, S, T|Power inpu|t of the main circuit|3-phase AC input terminals which are<br>generally connected with the power<br>supply.|
|U, V, W|The|VFD output|3-phase AC output terminals which are<br>generallyconnected with the motor.|
|P1|This terminal is<br>inexistent|DC reactor terminal 1|P1 and (+) are connected with the<br>il f DC|
|(+)|Braking resistor<br>1|DC reactor terminal 2,<br>brakingunit terminal 1|termnas o  reactor.<br>(+) and (-) are connected with the<br>|
|(-)|/|Brakingunit terminal 2|terminals of braking unit.<br>|
|PB|Braking resistor<br>terminal 2|This terminal is<br>inexistent.|PB and (+) are connected with the<br>terminals of braking resistor.|
|PE|380V: the groun|ding resistor is less than<br>10 ohms|Protective grounding terminals, every<br>machine is provided 2 PE terminals as the<br>standard configuration. These terminals<br>should be grounded with proper<br>techniques.|
|A1 and A2|Contro|l power terminal|Optional for the 018G/022P and higher<br>models (connect to external 220V control<br>power). Power can be supplied via<br>auxiliary power, making it more<br>convenient for commissioning.|



-21- 

GD200A series VFD 

Installation guidelines 

###### **Note:** 

- Do not use an asymmetrically constructed motor cable. If there is a symmetrically constructed grounding conductor in the motor cable in addition to the conductive shield, connect the grounding conductor to the grounding terminal at the VFD and motor ends. 

- Braking resistor, braking unit and DC reactor are optional parts. 

- Route the motor cable, input power cable and control cables separately. 

- GD series VFDs cannot share the DC bus with CH series VFDs. 

- When sharing the DC bus, the VFDs must be the same in power and must be simultaneously powered on or off. 

- In shared DC bus running mode, current balance on the VFD input side must be considered during wiring, and equalizing reactors are recommended to be configured. 

- If the terminal is not appeared, the machine does not provide the terminal as the external terminal. 

###### **4.3.3 Wiring of terminals in main circuit** 

1. Connect the ground line of input power cable to the ground terminal (PE) of VFD directly, and connect 3PH input cable to R, S and T and fasten up. 

2. Connect the ground line of motor cable to the ground terminal of the VFD, and connect the 3PH motor cable to U, V, W and fasten up. 

3. Connect the brake resistor which carries cables to the designated position. 

4. Fasten up all the cables on the outside of the VFD if allowed. 



<!-- Start of picture text -->
NG Y<br>The screw is The screw is<br>not fastened fastened<br><!-- End of picture text -->

Figure 4-18 Correct installation of the screw 

-22- 

GD200A series VFD 

Installation guidelines 

###### **4.3.4 Wiring diagram of control circuit** 



<!-- Start of picture text -->
Multifunction input terminal 1<br>S1<br>Multifunction input terminal 2<br>S2<br>Multifunction input terminal 3 AO1<br>S3 Analog output<br>0-10V/0-20mA<br>Multifunction input terminal 4 GND<br>S4<br>Multifunction input terminal 5 AO2<br>S5 Analog output<br>0-10V/0-20mA<br>Multifunction input terminal 6 S6 GND<br>Multifunction input terminal 7 S7 Y1<br>Multifunction input terminal 8<br>S8 Open collector output<br>CME<br>High speed pulse input collector<br>HDI HDO<br>Open collector input (optional)<br>COM High-speed pulse output and open<br>PW CME Twisted collector output (optional)<br>+24V 485+ pair  Shield layer<br>PE J5 485- RS485<br>communication<br>GND<br>+10 V power supply for frequency setting PE<br>RO1A<br>AI2 J4 RO1CRO1B Relay 1 output<br>AI3 multi-function analog  RO2A<br>GND input<br>RO2B<br>- 10V Relay 2 output<br>PE RO2C<br>(externally connected)<br><!-- End of picture text -->

Figure 4-19 Wiring diagram of the control circuit 

###### **4.3.5 Terminals of control circuit** 





<!-- Start of picture text -->
AO1 AO2 A 2 485<br>ON<br>J1 J2 J4 J5<br>I<br>V V V<br>I I I<br><!-- End of picture text -->



Figure 4-20 Control circuit terminals for the 015G/018P and lower models 

-23- 

GD200A series VFD 

Installation guidelines 



<!-- Start of picture text -->
AO1 AO2 Reserve AI 2 485<br>V V V V<br>I I I I ON<br>J1 J2 J3 J4 J5<br><!-- End of picture text -->



Figure 4-21 Control circuit terminals for the 018G/022P and higher models 

**Note:** the spare terminal is reserved and not be used. 

|**Terminal**<br>**name**|**Description**|
|---|---|
|HDO|1. Switch output: 50mA/30V<br>2. Output frequencyrange: 0–50kHz|
|COM|+24V common terminal|
|CME|Common terminal of HDO and Y1,short-connected with COM in factory|
|Y1|1.Swtich capability: 50mA/30V<br>2.Output frequencyrange: 0–1kHz|
|485+<br>485-|485 communication interface and 485 differential signal interface<br>If it is the standard 485 communication interface, please use twisted pairs or<br>shield cable.|
|+10V|Localpower supply+10V|
|AI2<br>AI3|1. Input range: AI2 voltage and current can be chose: 0 (2)–10V/0 (4)–20mA;<br>AI2 can be shifted by J4;  AI3: -10V–+10V<br>2. Input impedance: voltage input: 20kΩ; current input: 500Ω<br>3. Resolution: the minimum one is 5mV when 10V corresponds to 50Hz<br>4. Deviation ±1%,25°C|
|GND|+10V reference nullpotential|
|AO1<br>AO2|1. Output range: 0 (2)–10V or 0 (4)–20mA; AO1 can be shifted by J1; AO2 can be<br>shifted by J2<br>2. Deviation±1%,25°C|
|PE|Groundingterminal|
|PW|Provide the input switch working power supply from external to internal.<br>Voltage range: 12–30V|
|24V|The VFD provides the power supply for users with a maximum output current of<br>200mA|
|COM|+24V common terminal|



-24- 

GD200A series VFD 

Installation guidelines 

|**Terminal**<br>**name**||**Description**|
|---|---|---|
|S1|Switch input 1||
|S2|Switch input 2|1. Internal impedance: 3.3kΩ<br>|
|S3|Switch input 3|2. 12–30V voltage input is available<br>|
|S4|Switch input 4|3. The terminal is the dual-direction input terminal<br>i bh NPN d PNP|
|S5|Switch input 5|supportng ot  an<br>4 Max inut freuenc: 1kHz|
|S6|Switch input 6|.  p qy<br>5 All are rorammable diital inut terminal User can|
|S7|Switch input 7|.   pg g p .<br>set the terminal function through function codes|
|S8|Switch input 8|.|
|HDI|Except for S1–S8, th<br>max. input frequency:|is terminal can be used as high frequency input channel.<br>50kHz|
|RO1A|RO1 l  R|1A NO RO1B NC RO1C  il|
|RO1B|reay output,<br>Contactor caabilit:|,  ,  common termna<br>A/AC250V1A/DC30V|
|RO1C|py|,|
|RO2A<br>RO2B|RO2 relay output, RO<br>Ctt bilit|2A NO, RO2B NC, RO2C common terminal<br>A/AC250V1A/DC30V|
|RO2C|onacor capay:|,|



###### **4.3.6 Input /Output signal connection figure** 

Please use U-shaped contact tag to set NPN mode or PNP mode and the internal or external power supply. The default setting is NPN internal mode. 





<!-- Start of picture text -->
U-shaped contact tag U-shaped contact tag<br>between between<br>+24V and PW COM and CME<br><!-- End of picture text -->

Figure 4-22 U-shaped contact tag 

If the signal is from NPN transistor, please set the U-shaped contact tag between +24V and PW as below according to the used power supply. 

-25- 

GD200A series VFD 

Installation guidelines 



<!-- Start of picture text -->
S1 S1<br>S2 S2<br>COM COM<br>COM COM<br>+ 24V + 24V + 24V<br>PW PW<br>+ 24V + 24V<br>Internal power supply (NPN) External power supply (NPN)<br><!-- End of picture text -->

Figure 4-23 NPN modes 

If the signal is from PNP transistor, please set the U-shaped contact tag as below according to the used power supply. 



<!-- Start of picture text -->
S1 S1<br>S2 S2<br>COM COM<br>COM COM<br>+ 24V + 24V<br>PW PW<br>+ 24V + 24V<br>Internal power supply (PNP) External power supply (PNP)<br><!-- End of picture text -->

Figure 4-24 PNP modes 

###### **4.4 Layout protection** 

###### **4.4.1 Protecting the VFD and input power cable in short-circuit situations** 

Protect the VFD and input power cable in short circuit situations and against thermal overload. Arrange the protection according to the following guidelines. 



<!-- Start of picture text -->
VFD<br>Input cable<br>Fuse<br><!-- End of picture text -->



Figure 4-25 Fuse configuration 

**Note:** Select the fuse as the manual indicated. The fuse will protect the input power cable from damage in short-circuit situations. It will protect the surrounding devices when the internal of the VFD is short circuited. 

-26- 

GD200A series VFD 

Installation guidelines 

###### **4.4.2 Protecting the motor and motor cable in short-circuit situations** 

The VFD protects the motor and motor cable in a short-circuit situation when the motor cable is dimensioned according to the rated current of the VFD. No additional protection devices are needed. 

 If the VFD is connected to multiple motors, a separate thermal overload switch or a circuit breaker must be used for protecting each cable and motor. These devices may require a separate fuse to cut off the short-circuit current. 

###### **4.4.3 Protecting the motor against thermal overload** 

According to regulations, the motor must be protected against thermal overload and the current must be switched off when overload is detected. The VFD includes a motor thermal protection function that protects the motor and closes the output to switch off the current when necessary. 

###### **4.4.4 Implementing a bypass connection** 

It is necessary to set power frequency and variable frequency conversion circuits for the assurance of continuous normal work of the VFD if faults occur in some significant situations. 

In some special situations, for example, if it is only used in soft start, the VFD can be converted into power frequency running after starting and some corresponding bypass should be added. 

 Never connect the supply power to the VFD output terminals U, V and W. Power line voltage applied to the output can result in permanent damage to the VFD. 

If frequent shifting is required, employ mechanically connected switches or contactors to ensure that the motor terminals are not connected to the AC power line and VFD output terminals simultaneously. 

-27- 



<!-- Start of picture text -->
[nsevacmr_ssimes_sal®<br>=ini? 05A |, ono<br>Dp. @<br>; ox<br><!-- End of picture text -->

GD200A series VFD 

Keypad operation procedure 

|**No.**|**Name**<br>**Description**|
|---|---|
||FWD/REV<br>LED off – the VFD will run in the forward<br>direction<br>LED on – the VFD will run in the reverse<br>direction|
||LED indicates keypad operation, terminal<br>operation and remote communication<br>control|
||LOCAL/REMOT<br>LED off – the VFD is in keypad operation<br>mode<br>LED blinking – the VFD is in terminal<br>operation mode<br>LED on – the VFD is in remote operation<br>control mode|
||LED for faults|
||TRIP<br>LED on – the VFD is faulty<br>LED off – normal state<br>LED blinking – the VFD is in pre-alarm, and<br>will tripsoon without corrective actions|
||Mean the unit displayed currently|
||Hz<br>Frequency unit|
||RPM<br>Rotation speed unit|
|2|Unit LED<br>A<br>Current unit|
||%<br>Percentage|
||V<br>Voltage unit|
|3|Code displaying<br>zone<br>5-figure LED display displays various monitoring data and alarm code<br>such as set frequencyand output frequency.|
|4|Analog<br>potentiometer<br>Equal to AI1.<br>Applicable to the 015G/018P and lower models.|
||Digital<br>potentiometer<br>Tuning frequency. Please refer to P08.42.<br>Applicable to the 018G/022P and higher models.|
||PRG<br>ESC<br>Programming<br>key<br>Enter or escape from the first level menu<br>and delete shortcut parameter|
|5|Buttons<br>DATA<br>ENT<br>Entry key<sup>Enter the menu step-by-step</sup><br>Confirm parameters|
||UP key<br>Increase data or function code<br>progressively|



-29- 



<!-- Start of picture text -->
ivi}of<br>el<br>ee<br>|<br>eal|<br>Se<br>ee<br><!-- End of picture text -->



<!-- Start of picture text -->
ont naa wmsent we ne me Sy wo nn ean<br>© CD ©<br>O ME ) O ME ) O ME )<br><!-- End of picture text -->





<!-- Start of picture text -->
o a ° a n FE] o ° _ a [A ] a o 9 a<br>° =] ° [A ] °<br>=| | =<br>ma OS] pe o y EI ] OC=n<br>Prue: — S- gga ea:<br><!-- End of picture text -->

GD200A series VFD 

Keypad operation procedure 

###### **5.4.3 How to watch the VFD state through function codes** 

Goodrive200A series VFDs provide group P17 as the state inspection group. Users can enter into P17 directly to watch the state. 









































Figure 5-5 Sketch map of state watching 

-32- 

GD200A series VFD 

Function parameters 

##### **6 Function parameters** 

###### **6.1 What this chapter contains** 

This chapter lists and describes the function parameters. 

##### **6.2 Goodrive200A general series function parameters** 

The function parameters of Goodrive200A series VFDs have been divided into 30 groups (P00–P29) – according to the function, of which P18 P28 are reserved. Each function group contains certain function codes applying 3-level menus. For example, "P08.08" means the eighth function code in the P8 group function, P29 group is factory reserved, and users are forbidden to access these parameters. 

For the convenience of function codes setting, the function group number corresponds to the first level menu, the function code corresponds to the second level menu and the function code corresponds to the third level menu. 

**1.** Below is the instruction of the function lists: 

**The first column** "Function code": codes of function parameter group and parameters; 

**The second column** "Name": full name of function parameters; 

**The third column** "Detailed illustration of parameters": detailed illustration of the function parameters; 

**The fourth column** "Default value": the original factory set value of the function parameter; 

**The fifth column** "Modify": the modifying character of function codes (the parameters can be modified or not and the modifying conditions), below is the instruction: 

- " ○ ": means the set value of the parameter can be modified on stop and running state; 

- " ◎ ": means the set value of the parameter cannot be modified on the running state; 

- " ● ": means the value of the parameter is the real detection value which cannot be modified. 

(The VFD has limited the automatic inspection of the modifying character of the parameters to help users avoid inadvertent modification). 

**2.** "Parameter radix" is decimal (DEC), if the parameter is expressed by hex, then the parameter is – 

separated from each other when editing. The setting range of certain bits are 0 F (hex). 

**3.** "The default value" means the function parameter will restore to the default value during default parameters restoring. But the detected parameter or recorded value won’t be restored. 

**4.** For a better parameter protection, the VFD provides password protection to the parameters. After setting the password (set P07.00 to any non-zero number), the system will come into the state of password verification firstly after the user press <mark>PRG/ESC</mark> to come into the function code editing state. And then "0.0.0.0.0." will be displayed. Unless the user input right password, they cannot enter into the system. For the factory setting parameter zone, it needs correct factory password (remind 

-33- 

GD200A series VFD 

Function parameters 

that the users cannot modify the factory parameters by themselves, otherwise, if the parameter setting is incorrect, damage to the VFD may occur). If the password protection is unlocked, the user can modify the password freely and the VFD will work as the last setting one. When P07.00 is set to 0, the password can be canceled. If P07.00 is not 0 during powering on, then the parameter is protected by the password. When modify the parameters by serial communication, the function of the password follows the above rules, too. 

###### **P00 Group Basic functions** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P00.00|Speed control<br>mode|1: Sensorless vector control mode 1 (applying to<br>AM)<br>No need to install encoders. It is suitable in cases<br>with high speed control accuracy for accurate<br>speed and torque control at all power ratings.<br>2: SVM control<br>No need to install encoders. It can improve the<br>control accuracy with the advantages of stable<br>operation, valid low-frequency torque boost and<br>current vibration suppression and the functions of<br>slip compensation and voltage adjustment.<br>**Note**: AM-Asynchronous motor|2|◎|
|P00.01|Run command<br>channel|Select the run command channel of the VFD.<br>The control command of the VFD includes: start,<br>stop, forward, reverse, jogging and fault reset.<br>0: Keypad running command<br>channel("LOCAL/REMOT"light off)<br>Carry out the command control byRUN,<br>STOP/RSTon the keypad.<br>Set the multi-function keyQUICK/JOGas<br>FWD/REVshifting function (P07.02=3) to change<br>the running direction; press RUN and STOP/RST<br>simultaneously in running state to make the VFD<br>coast to stop.<br>1: Terminal running command channel<br>("LOCAL/REMOT"flickering)<br>Carry out the running command control by the<br>forward rotation, reverse rotation and forward<br>jogging and reverse jogging of the multi-function<br>terminals<br>2: Communication running command channel<br>("LOCAL/REMOT"on);|0|○|



-34- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||The running command is controlled by the upper<br>monitor via communication.|||
|P00.02|Communication<br>selection|<br>0: MODBUS communication<br>1–3: Reserved|0|○|
|P00.03|Max. output<br>frequency|This parameter is used to set the Maximum output<br>frequency of the VFD. Users should pay attention<br>to this parameter because it is the foundation of<br>the frequency setting and the speed of<br>acceleration and deceleration.<br>Settingrange:P00.04–400.00Hz|50.00<br>Hz|◎|
|P00.04|Upper limit of<br>the running<br>frequency|The upper limit of the running frequency is the<br>upper limit of the output frequency of the VFD<br>which is lower than or equal to the maximum<br>frequency.<br>Setting range:P00.05–P00.03(max. output<br>frequency)|50.00<br>Hz|◎|
|P00.05|Lower limit of<br>the running<br>frequency|The lower limit of the running frequency is that of<br>the output frequency of the VFD.<br>The VFD runs at the lower limit frequency if the set<br>frequency is lower than the lower limit one.<br>**Note:**Max. output frequency ≥ Upper limit<br>frequency ≥ Lower limit frequency<br>Setting range: 0.00Hz–P00.04(Upper limit of the<br>if|0.00Hz|◎|
|||runnngrequency)|||
|P00.06|A frequency<br>command|**Note:**Frequency A and frequency B cannot use<br>the same frequency setting mode. The frequency|0|○|
|P00.07|B frequency<br>command|source can be set byP00.09.<br>0: Keypad data setting<br>Modify the value ofP00.10(set the frequency by<br>keypad) to modify the frequency by the keypad.<br>1: Analog AI1 setting (implemented through the<br>analog potentiometer on the keypad for the<br>0150G/018P and lower models; not available for<br>the 018G/022P and higher models.)<br>2: Analog AI2 setting<br>3: Analog AI3 setting<br>Set the frequency by analog input terminals.<br>Goodrive200A series VFDs provide 3 channels<br>analoginput terminals as the standard|2|○|



-35- 

GD200A series VFD Function parameters 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||configuration, of which AI1/AI2 are the<br>voltage/current option (0 (2)–10V/0 (4)–20mA)<br>which can be shifted by jumpers; while AI3 is<br>voltage input (-10V–+10V).<br>**Note:**When analog AI1/AI2 selects 0 (4)–20mA<br>input, the corresponding voltage of 20mA is 10V.<br>100.0% of the analog input setting corresponds to<br>the maximum frequency (function codeP00.03) in<br>forward direction and -100.0% corresponds to the<br>maximum frequency in reverse  direction<br>(function codeP00.03)<br>4: High-speed pulse HDI setting<br>The frequency is set by high-speed pulse<br>terminals. Goodrive200A series VFDs provide 1<br>channel high speed pulse input as the standard<br>configuration. The pulse frequency range is<br>0.00–50.00kHz.<br>100.0% of the high speed pulse input setting<br>corresponds to the maximum frequency in forward<br>direction (P00.03) and -100.0% corresponds to<br>the maximum frequency in reverse direction<br>(P00.03).<br>**Note:**The pulse setting can only be input by<br>multi-function terminals HDI. SetP05.00(HDI<br>input selection) to high speed pulse input.<br>5: Simple PLC program setting<br>The VFD runs at simple PLC program mode when<br>P00.06=5 orP00.07=5. Set P10 (simple PLC and<br>multi-step speed control) to select the running<br>frequency, running direction, ACC/DEC time and<br>the keeping time of corresponding step. See the<br>function description of P10 for detailed<br>information.<br>6: Multi-step speed running setting<br>The VFD runs at multi-step speed mode when<br>P00.06=6 orP00.07=6. Set P05 to select the<br>current running step, and set P10 to select the<br>current running frequency.<br>The multi-stepspeed has theprioritywhenP00.06|||



-36- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||orP00.07does not equal to 6, but the setting step<br>can only be the 1–15 steps. The setting step is<br>0–15 ifP00.06orP00.07equals 6.<br>7: PID control setting<br>The running mode of the VFD is process PID<br>control whenP00.06=7 orP00.07=7. It is<br>necessary to set P09. The running frequency of<br>the VFD is the value after PID effect. See P09 for<br>the detailed information of the preset source,<br>preset value, and feedback source of PID.<br>8: MODBUS communication setting<br>The frequency is set by MODBUS communication.<br>See P14 for detailed information.<br>9–11: Reserved|||
|P00.08|B frequency<br>command<br>reference|0: Maximum output frequency, 100% of B<br>frequency setting corresponds to the maximum<br>output frequency<br>1: A frequency command, 100% of B frequency<br>setting corresponds to the maximum output<br>frequency. Select this setting if it needs to adjust<br>on the base of A frequencycommand.|0|○|
|P00.09|Combination of<br>the setting<br>source|<br>0: A, the current frequency setting is A frequency<br>command<br>1: B, the current frequency setting is B frequency<br>command<br>2: A+B, the current frequency setting is A<br>frequency command + B frequency command<br>3: A-B, the current frequency setting is A<br>frequency command - B frequency command<br>4: Max (A, B): the bigger one between A frequency<br>command and B frequency is the set frequency.<br>5: Min (A, B): The lower one between A frequency<br>command and B frequency is the set frequency.<br>**Note:**The combination manner can be shifted by<br>P05(terminal function)|0|○|
|P00.10|Keypad set<br>frequency|When A and B frequency commands are selected<br>as "keypad setting", this parameter will be the<br>initial value of VFD reference frequency<br>Setting range: 0.00 Hz–P00.03(the max.<br>frequency)|50.00<br>Hz|○|



-37- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P00.11|ACC time 1|ACC time means the time needed if the VFD<br>speeds up from 0Hz to the max. one (P00.03).<br>DEC time means the time needed if the VFD<br>speeds down from the max. output frequency to<br>0Hz (P00.03).|Depend<br>on<br>model|○|
|P00.12|DEC time 1|Goodrive200A series VFDs define four groups of<br>ACC/DEC time which can be selected by P05.<br>The factory default ACC/DEC time of the VFD is<br>the first group.<br>Settingrange ofP00.11andP00.12: 0.0–3600.0s|Depend<br>on<br>model|○|
|P00.13|Running<br>direction|0: Runs at the default direction, the VFD runs in<br>the forward direction.FWD/REVindicator is off.<br>1: Runs at the opposite direction, the VFD runs in<br>the reverse direction. FWD/REV indicator is on.<br>Modify the function code to shift the rotation<br>direction of the motor. This effect equals to the<br>shifting the rotation direction by adjusting either<br>two of the motor lines (U, V and W). In keypad<br>control, the motor rotation direction can be<br>changed byQUICK/JOGon the keypad. Refer to<br>parameterP07.02.<br>**Note:**When the function parameter comes back<br>to the default value, the motor’s running direction<br>will come back to the factory default state, too. In<br>some cases it should be used with caution after<br>commissioning if the change of rotation direction is<br>disabled.<br>2: Forbid to run in reverse direction: It can be used<br>in some special cases if the reverse running is<br>disabled.|0|○|
|||Carrier<br>frequency<br> Electro magnetic<br>noise<br>Noise and leakage<br>current<br>Heating<br>eliminating|||
|P00.14|Carrier<br>frequency<br>setting|High<br>Low<br>High<br>Low<br>High<br>Low<br>1kHz<br>10kHz<br>15kHz<br>Mapping between models and carrier frequencies:|Depend<br>on<br>model|○|



-38- 

|GD200A series VFD|Functionparameters|
|---|---|



|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||**Model**<br>**Factory setting**<br>**of carrier**<br>**frequency**|||
|||0R7G–011G/015P<br>8kHz|||
|||015G/018P–055G/075P<br>4kHz|||
|||075G/090P and higher<br>2kHz<br>The advantage of high carrier frequency: ideal<br>current waveform, little current harmonic wave<br>and motor noise.<br>The disadvantage of high carrier frequency:<br>increasing the switch loss, increasing VFD<br>temperature and the impact to the output capacity.<br>The VFD needs to derate on high carrier<br>frequency. At the same time, the leakage and<br>electrical magnetic interference will increase.<br>Applying low carrier frequency is contrary to the<br>above, too low carrier frequency will cause<br>unstable running, torque decreasing and surge.<br>The manufacturer has set a reasonable carrier<br>frequency when the VFD is in factory. In general,<br>users do not need to change the parameter.<br>When the frequency used exceeds the default<br>carrier frequency, the VFD needs to derate 10%<br>for each additional 1k carrier frequency.<br>Settingrange: 1.0–15.0kHz|||
|P00.15|Motor<br>parameter<br>autotuning|0: No operation<br>1: Rotation autotuning<br>Comprehensive motor parameter autotune<br>It is recommended to use rotation autotuning<br>when high control accuracy is needed.<br>2: Static autotuning 1<br>It is suitable in the cases when the motor cannot<br>de-couple from the load.<br>3: Static autotuning 2<br>It is suitable in the cases when the motor cannot<br>de-couple form the load. But only for parts of<br>parameters.|0|◎|



-39- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P00.16|AVR function<br>selection|0: Invalid<br>1: Valid during the whole procedure<br>The auto-adjusting function of the VFD can cancel<br>the impact on the output voltage of the VFD<br>because of the bus voltage fluctuation.|1|○|
|P00.17|VFD type|0: G type, for the constant torque load of rated<br>parameters<br>1: P type; for the variable torque load of rated<br>parameters (fans and water pumps)<br>GD200A series VFDs can use G/P type, the<br>available motor power of G type is small one<br>power file than that of P type.|0|◎|
|P00.18|Function<br>restore<br>parameter|0: No operation<br>1: Restore the default value<br>2: Clear fault records<br>3: Lock the keypad<br>**Note:**<br>The function code is restored to 0 after the<br>operation corresponding to the selected option is<br>performed.<br>Restoring to the default value will cancel the user<br>password. Exercise caution before using this<br>function.<br>WhenP00.18=3, all the other function codes<br>exceptP00.18are read only.|0|◎|



###### **P01 Group Start and stop control** 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P01.00|Start mode|0: Start directly: start from the starting frequency<br>P01.01<br>1: Start after DC braking: start the motor from the<br>starting frequency after DC braking (set the<br>parameterP01.03andP01.04). It is suitable in the<br>cases where reverse rotation may occur to the low<br>inertia load during starting.<br>2: Start after speed tracking: start the rotating<br>motor smoothly after tracking the rotation speed<br>and direction automatically. It is suitable in the|0|◎|



-40- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||cases where reverse rotation may occur to the big<br>inertia load during starting.<br>Note: This function is available for the 004G/5R5P<br>and higher models.|||
|P01.01|Starting<br>frequency of<br>direct start|Starting frequency of direct start means the<br>original frequency during the VFD starting. See<br>P01.02for detailed information.<br>Settingrange: 0.00–50.00Hz|0.50 Hz|◎|
|P01.02|Retention time<br>of the starting<br>frequency|Set a proper starting frequency to increase the<br>torque of the VFD during starting. During the<br>retention time of the starting frequency, the output<br>frequency of the VFD is the starting frequency.<br>And then, the VFD will run from the starting<br>frequency to the set frequency. If the set<br>frequency is lower than the starting frequency, the<br>VFD will stop running and keep in the stand-by<br>state. The starting frequency is not limited in the<br>lower limit frequency.<br>Output frequency<br>fmax<br>t1<br>T<br>F1 set by P01.01<br>f1<br>T1 set by P01.02<br>Settingrange: 0.0–50.0s|0.0s|◎|
|P01.03|The braking<br>current before<br>starting|The VFD will carry out DC braking at the braking<br>current set before starting and it will speed up after<br>the DC braking time. If the DC braking time is set|0.0%|◎|
|P01.04|The braking<br>time before<br>starting|to 0, the DC braking is invalid.<br>The stronger the braking current, the bigger the<br>braking power. The DC braking current before<br>starting means the percentage of the rated current<br>of the VFD.<br>Setting range of P01.03: 0.0–100.0%<br>Settingrange ofP01.04: 0.00–50.00s|0.00s|◎|
|P01.05|ACC/DEC<br>selection|The changing mode of the frequency during start<br>and running.<br>0: Linear type<br>The output frequency increases or decreases<br>linearly.|0|◎|



-41- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||fmax<br>Output frequency<br>t1<br>t2<br>t<br>t1=P00.11/P08.00/<br>P08.02/P08.04<br>t2=P00.12/P08.01/<br>P08.03/P08.05<br>1: S curve:<br>Output frequency increases/decreases gradually<br>based on S curve. S curve is used in cases where<br>smooth start/stop is required, such as elevator,<br>conveyer belt, etc.<br>Output frequency<br>t<br>t1<br>t2<br>t1<br>t2<br>t1=P01.06<br>t2=P01.07|||
|P01.06|ACC time of the<br>starting step of<br>S curve|<br>Setting rage: 0.0–50.0s|0.1s|○|
|P01.07|DEC time of the<br>ending step of<br>S curve|Note: Effective whenP01.05= 1<br>|0.1s|○|
|P01.08|Stop mode|0: Decelerate to stop: after the stop command<br>becomes valid, the VFD decelerates to reduce the<br>output frequency during the set time. When the<br>frequency decreases to 0Hz, the VFD stops.<br>1: Coast to stop: after the stop command becomes<br>valid, the VFD ceases the output immediately. And<br>the load coasts to stopat the mechanical inertia.|0|○|
|P01.09|Starting<br>frequency of<br>DC braking|Starting frequency of DC braking: start the DC<br>braking when running frequency reaches starting<br>frequency determined byP01.09.|0.00 Hz|○|
|P01.10|Waiting time<br>before DC<br>braking|Waiting time before DC braking: VFDs block the<br>output before starting the DC braking. After this<br>waiting time, the DC braking will be started so as|0.00s|○|
|P01.11|DC braking<br>current|to prevent over-current fault caused by DC braking<br>at high speed.|0.0%|○|
|P01.12|DC braking<br>time|DC braking current: The value ofP01.11is the<br>percentage of rated current of VFD. The bigger|0.00s|○|



-42- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||the DC braking current is, the greater the braking<br>torque is.<br>DC braking time: The retention time of DC brake.<br>If the time is 0, the DC brake is invalid. The VFD<br>will stop at the set deceleration time.<br>P01.23<br>ACC<br>Constant<br>speed<br>DEC<br>ON<br>T<br>P13.14<br>P01.04<br>P01.10<br>P13.15<br>P01.12<br>P01.09<br>Setting range ofP01.09: 0.00Hz–P00.03<br>(the max. frequency)<br>Setting range ofP01.10: 0.00–50.00s<br>Setting range ofP01.11: 0.0–100.0%<br>Settingrange ofP01.12: 0.00–50.00s|||
|P01.13|Dead time of<br>FWD/REV<br>rotation|During the procedure of switching FWD/REV<br>rotation, set the threshold byP01.14, which is as<br>the table below:<br>Output frequency<br>FWD<br>REV<br>T<br>Starting<br>frequency<br>Shift after the<br>zero frequency<br>Shift after the<br>starting frequency<br>Shift after the<br>stopping speed<br>Stopping<br>speed<br>Dead<br>zone<br>Settingrange: 0.0–3600.0s|0.0s|○|
|P01.14|Shifting<br>between<br>FWD/REV<br>rotation|Set the threshold point of the VFD:<br>0: Switch after 0 frequency<br>1: Switch after the starting frequency<br>2: Switch after the stoppingspeed|1|◎|
|P01.15|Stoppingspeed|<br>0.00–100.00Hz|0.50 Hz|◎|
|P01.16|Detection of<br>stopping speed|<br>0: Detect according to speed setting (no stopping<br>delay)<br>1: Detect according to speed feedback (only valid<br>f  l|1|◎|
|||or vector contro)|||
|P01.17|Detection time<br>of the feedback|<br>IfP01.16is set to 1, the feedback frequency is<br>less than or equal toP01.15and detect in the set|0.50s|◎|



-43- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
||speed|time ofP01.17, the VFD will stop; otherwise the<br>VFD will stop after the set time ofP01.17.<br>T<br>Stop speed<br>A<br>Ramp reference<br>frequency<br>Output frequency<br>Frequency<br>P01.24<br>P01.17<br>B<br>C<br>Running A<br>Running B<br>Running C<br>Setting range: 0.00–100.00s  (only valid when<br>P01.16=1)|||
|P01.18|Operation<br>protection<br>during<br>powering on|When the running command channel is the<br>terminal control, the system will detect the state of<br>the running terminal during powering on.<br>0: The terminal running command is invalid when<br>powering on. Even the running command is<br>detected to be valid during powering on, the VFD<br>won’t run and the system keeps in the protection<br>state until the running command is canceled and<br>enabled again.<br>1: The terminal running command is valid when<br>powering on. If the running command is detected<br>to be valid during powering on, the system will<br>start the VFD automatically after the initialization.<br>**Note:**This function should be selected with<br>ii lfll|0|○|
|||cautons,or serous resut mayoow.|||
|P01.19|Action selection<br>when running<br>frequency is<br>lower than<br>lower limit of<br>frequency<br>(valid when low<br>limit of<br>frequency is<br>larger than 0)|<br> <br>This function code determines the running state of<br>the VFD when the set frequency is lower than the<br>lower-limit one.<br>0: Run at the lower limit frequency<br>1: Stop<br>2: Hibernation<br>The VFD will coast to stop when the set frequency<br>is lower than the lower-limit one. If the set<br>frequency is above the lower limit one again and it<br>lasts for the time set byP01.20, the VFD will come<br>back to the running state automatically.<br>3: Sleep and standby 2<br>Select sleepand standby2: When the running|0|◎|



-44- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||frequency is no more than lower limit frequency<br>(P00.05), it is required to judgeP24.05<br>continuously before entering sleep state.<br>Settingrange: 0–3|||
|P01.20|Wake-up-from-<br>sleep delay|This function code determines the<br>wake-up-from-sleep delay. When the running<br>frequency of the VFD is lower than the lower limit<br>one, the VFD will pause to stand by.<br>When the set frequency is above the lower limit<br>one again and it lasts for the time set byP01.20,<br>the VFD will run automatically.<br>**Note:**The time is the total value when the set<br>frequency is above the lower limit one.<br>Set frequency curve:<br>Running freq. curve:<br>t1<P01.20 , so the VFD does not work<br>t1+t2=P01.20 , so the VFD works<br>Running<br>Dormancy<br>t2<br>t1<br>Running<br>Min. frequency f0<br>Frequency<br>Time<br>Coast<br>to stop<br>Setting range: 0.0–3600.0s<br>(valid whenP01.19=2)|0.0s|○|
|P01.21|Restart after<br>power off|This function can enable the VFD start or not after<br>the power off and then power on.<br>0: Disable<br>1: Enable, if the starting need is met, the VFD will<br>run automatically after waiting for the time defined<br>by P01.22.|0|○|
|P01.22|The waiting<br>time of restart<br>after power off|The function determines the waiting time before<br>the automatic running of the VFD when powering<br>off and then powering on.<br>Setting range: 0.0–3600.0s<br>(valid whenP01.21=1)|1.0s|○|
|P01.23|Start delay time|<br>The function determines the brake release after<br>the running command is reference, and the VFD is<br>in a stand-by state and the delay time set by<br>P01.23to wait.<br>Settingrange: 0.0–60.0s|0.0s|○|



-45- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P01.24|Delay time of<br>the stop speed|P01.24<br>In running<br>T<br>Output frequency<br>Stop speed<br>Settingrange: 0.0–100.0 s|0.0s|●|
|P01.25|0Hz output<br>selection|0: Output without voltage<br>1: Output with voltage<br>2: Output at the DC brakingcurrent|0|●|



###### **P02 Group Motor 1** 

|**Function**<br>**code**|<br>**Name**||**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|---|
|P02.01|Rated power of<br>AM 1|<br>0.1–3000.0kW|To ensure control performance,<br>setP02.01–P02.05according to<br>the AM nameplate.|Depend<br>on<br>model|◎|
|P02.02|Rated<br>frequency of<br>AM 1|0.01Hz–P00.03<br>(the max.<br>frequency)|Goodrive200A provides the<br>parameter self-learning function.<br>Accurate parameter self-learning|50.00<br>Hz|◎|
|P02.03|Rated speed of<br>AM 1|<br>1–36000rpm|is based on the correct settings of<br>motor nameplate parameters.<br>Perform motor configuration|<br>Depend<br>on<br>model|◎|
|P02.04|Rated voltage<br>of AM 1|0–1200V|according to the mapping<br>between VFDs and motors. If the<br>motor power is far from the power|<br>Depend<br>on<br>model|◎|
|P02.05|Rated current<br>of AM 1|0.8–6000.0A|of the motor that matches the<br>VFD, the control performance of<br>the VFD deteriorates sharply.<br>**Note:**Resetting the rated motor<br>power (P02.01) will initialize<br>P02.02–P02.10.|Depend<br>on<br>model|◎|
|P02.06|Stator resistor<br>of AM 1|0.001–65.535Ω|After motor parameter<br>self-learning is completed<br>successfully, in rotary|Depend<br>on<br>model|○|
|P02.07|Rotor resistor<br>of AM 1|0.001–65.535Ω|self-learning and static<br>self-learning 1, the settings of<br>P02.06–P02.10can be updated|Depend<br>on<br>model|○|



-46- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P02.08|Leakage<br>inductance of<br>AM 1|0.1–6553.5mH<br>automatically. In static<br>self-learning mode 2, the settings<br>ofP02.06–P02.08can be|Depend<br>on<br>model|○|
|P02.09|Mutual<br>inductance of<br>AM 1|updated automatically. These<br>parameters are the basic<br>parameters for the VFD to control<br>0.1–6553.5mH|Depend<br>on<br>model|○|
|P02.10|Non-load<br>current of AM 1|the motor and have direct impact<br>on control performance.<br>**Note:**Exercise caution before<br>modifyingtheseparameters.<br> <br>0.1–6553.5A|Depend<br>on<br>model|○|
|P02.26|Motor 1<br>overload<br>protection|0: No protection<br>1: Common motor (with low speed compensation).<br>Because the heat-releasing effect of the common<br>motors will be weakened, the corresponding<br>electric heat protection will be adjusted properly.<br>The low speed compensation characteristic<br>mentioned here means reducing the threshold of<br>the overload protection of the motor whose<br>running frequency is below 30Hz.<br>2: Variable frequency motor (without low speed<br>compensation) Because the heat-releasing effect<br>of the specific motors won’t be impacted by the<br>rotation speed, it is not necessary to adjust the<br>protection value duringlow-speed running.|2|◎|
|P02.27|Motor 1 over<br>load protection<br>coefficient|<br>Times of motor overload M = Iout/(In*K)<br>In is the rated current of the motor, Iout is the<br>output current of the VFD and K is the motor<br>protection coefficient.<br>So, the bigger the value of K is, the smaller the<br>value of M is. When M=116%, protection is<br>performed after motor overload lasts for 1 hour;<br>when M=150%, protection is performed after<br>motor overload lasts for 12 minutes; when<br>M=180%, protection is performed after motor<br>overload lasts for 5 minutes; when M=200%,<br>protection is performed after motor overload lasts<br>for 60 seconds; and when M≥ 400%, protection is<br>performed immediately.|100.0%|○|



-47- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||1<br>5<br>12<br>60<br>116%<br>200%<br>Time (min)<br>Current overload<br>multiple<br>150%<br>180%<br>Settingrange: 20.0%–120.0%|||
|P02.28|Correction<br>coefficient of<br>motor 1 power|Correct the power displaying of motor 1.<br>Only impact the displaying value other than the<br>control performance of the VFD.<br>Settingrange: 0.00–3.00|1.00|●|



###### **P03 Group Vector control** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P03.00|Speed loop<br>proportional<br>gain1|The parametersP03.00–P03.05only apply to<br>vector control mode. Below the switching<br>frequency 1 (P03.02), the speed loop PI|20.0|○|
|P03.01|Speed loop<br>integral time1|parameters are:P03.00andP03.01. Above the<br>switching frequency 2 (P03.05), the speed loop PI|0.200s|○|
|P03.02|Low switching<br>frequency|parameters are:P03.03andP03.04. PI<br>parameters are gained according to the linear|5.00Hz|○|
|P03.03|Speed loop<br>proportional<br>gain 2|change of two groups of parameters. It is shown<br>as below:<br>PI parameters|20.0|○|
|P03.04|Speed loop<br>integral time 2|(P03.00,P03.01)|0.200s|○|
|P03.05|High switching<br>frequency|Output frequency<br>(P03.03,P03.04)<br>P03.02<br>P03.05<br>Setting the proportional coefficient and integral<br>time of the adjustor can change the dynamic<br>response performance of vector control speed<br>loop. Increasing the proportional gain and<br>decreasing the integral time can speed up the<br>dynamic response of the speed loop. But too high|10.00Hz|○|



-48- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||proportional gain and too low integral time may<br>cause system vibration and overshoot. Too low<br>proportional gain may cause system vibration and<br>speed static deviation.<br>PI has a close relationship with the inertia of the<br>system. Adjust on the base of PI according to<br>different loads to meet various demands.<br>Setting range ofP03.00: 0–200.0<br>Setting range ofP03.01: 0.000–10.000s<br>Setting range ofP03.02: 0.00Hz–P03.05<br>Setting range ofP03.03: 0–200.0<br>Setting range ofP03.04: 0.000–10.000s<br>Setting range ofP03.05:P03.02–P00.03 (the<br>max. output frequency)|||
|P03.06|Speed loop<br>output filter|0–8 (corresponds to 0–2<sup>8</sup>/10ms)|0|○|
|P03.07|Compensation<br>coefficient of<br>electro motion<br>slip|Slip compensation coefficient is used to adjust the<br>slip frequency of the vector control and improve<br>the speed control accuracy of the system.<br>|100%|○|
|P03.08|Compensation<br>coefficient of<br>brakingslip|Adjusting the parameter properly can control the<br>speed steady-state error.<br>Setting range: 50–200%|100%|○|
|P03.09|Current loop<br>percentage<br>coefficient P|**Note**:<br>1 These two parameters adjust the PI adjustment<br>parameter of the current loop which affects the|1000|○|
|P03.10|Current loop<br>integral<br>coefficient 1|dynamic response speed and control accuracy<br>directly. Generally, users do not need to change<br>the default value.<br>2 Only apply to SVC control mode 0 (P00.00=0).<br>Settingrange: 0–65535|1000|○|
|P03.11|Torque setting<br>method|This parameter is used to enable the torque<br>control mode, and set the torque.<br>0: Torque control is invalid<br>1: Keypad setting torque (P03.12)<br>2: Analog AI1 setting torque (implemented through<br>the analog potentiometer on the keypad for the<br>0150G/018P and lower models; not available for<br>the 018G/022P and higher models.)|0|○|



-49- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||3: Analog AI2 setting torque<br>4: Analog AI3 setting torque<br>5: Pulse frequency HDI setting torque<br>6: Multi-step torque setting<br>7: MODBUS communication setting torque<br>8–10: Reserved<br>Note: For setting modes 2–5, 100% corresponds<br>to three times of the rated current of the motor.|||
|P03.12|Keypad setting<br>torque|Setting range: -300.0%–300.0% (rated current of<br>the motor)|50.0%|○|
|P03.13|Torque<br>reference filter<br>time|0.000–10.000s|0.010s|○|
|P03.14|Upper<br>frequency of<br>forward rotation<br>in vector<br>control|<br>0: Keypad (P03.16setsP03.14,P03.17sets<br>P03.15)<br>1: AI1 (implemented through the analog<br>potentiometer on the keypad for the 0150G/018P<br>and lower models; not available for the|0|○|
|P03.15|Upper<br>frequency of<br>reverse rotation<br>in vector<br>control|018G/022P and higher models.)<br>2: AI2<br>3: AI3<br>4: Pulse frequency HDI setting upper-limit<br>frequency<br>5: Multi-step setting upper-limit frequency<br>6: MODBUS communication setting upper-limit<br>frequency<br>Note: Setting method 1–6, 100% corresponds to<br> <br>|0|○|
|||the maximum frequency|||
|P03.16|Keypad setting<br>for upper<br>frequency of<br>forward rotation|<br>This function is used to set the upper limit of the<br>frequency.P03.16sets the value ofP03.14;<br>|50.00<br>Hz|○|
|P03.17|Keypad setting<br>for upper<br>frequency of<br>reverse rotation|P03.17sets the value of P03.15.<br>Setting range: 0.00 Hz–P00.03 (the max. output<br>frequency)<br>|50.00<br>Hz|○|
|P03.18|Upper electro<br>motion torque<br>source|This function code is used to select the electro<br>motion and braking torque upper-limit setting<br>source selection.|0|○|



-50- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P03.19|Upper braking<br>torque<br>source|0: Keypad setting upper-limit frequency (P03.20<br>setsP03.18,P03.21setsP03.19)<br>1: AI1 (implemented through the analog<br>potentiometer on the keypad for the 0150G/018P<br>and lower models; not available for the<br>018G/022P and higher models.)<br>2: AI2<br>3: AI3<br>4: HDI<br>5: MODBUS communication<br>**Note**: setting mode 1–4, 100% corresponds to<br>three times of the motor current.|0|○|
|P03.20|Keypad setting<br>of<br>electromotion<br>torque|The function code is used to set the limit of the<br>torque.|180.0%|○|
|P03.21|Keypad setting<br>of braking<br>torque|Setting range: 0.0–300.0% (rated motor current)|180.0%|○|
|P03.22|Weakening<br>coefficient in<br>constant power<br>zone|<br>The usage of motor in weakening control.<br> <br>T|0.3|○|
|P03.23|Lowest<br>weakening<br>point in<br>constant power<br>zone|Weaking coefficient<br>Minimum limit<br>0.1<br>1.0<br>2.0<br>Function codesP03.22andP03.23are effective<br>at constant power. The motor will enter into the<br>weakening state when the motor runs at rated<br>speed. Change the weakening curve by modifying<br>the weakening control coefficient. The bigger the<br>weakening control coefficient is, the steeper the<br>weak curve is.<br>Setting range ofP03.22: 0.1–2.0<br>Settingrange ofP03.23: 10%–100%<br>|20%|○|
|P03.24|Max. voltage<br>limit|P03.24sets the max. voltage of the VFD, which is<br>dependent on the site situation.<br>The settingrange: 0.0–120.0%|100.0%|◎|



-51- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P03.25|Pre-exciting<br>time|Reactivate the motor when the VFD starts up.<br>Build up a magnetic field inside the VFD to<br>improve the torque performance during the<br>starting process.<br>The settingtime: 0.000–10.000s|0.300s|○|
|P03.26|Weak magnetic<br>proportional<br>gain|<br>0–8000<br>**Note**:P03.24–P03.26are invalid for vector mode.|<br>1000|○|
|P03.27|Vector control<br>speed|0: Display the actual value<br>1: Displaythe settingvalue|0|○|
|P03.28|Compensation<br>coefficient of<br>static friction|0.0–100.0%<br>AdjustP03.28to compensate the coefficient of<br>static friction. Onlyvalid when settingin 1Hz.|0.0%|○|
|P03.29|Compensation<br>coefficient of<br>dynamic friction|<br>0.0–100.0%<br>AdjustP03.29to compensate the coefficient of<br>static friction. Onlyvalid when settingin 1Hz.|0.0%|○|



###### **P04 Group SVPWM control** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P04.00|Motor 1 V/F<br>curve setting|These function codes define the V/F curve of<br>Goodrive200A motor 1, and meet the need of<br>different loads.<br>0: Straight line V/F curve; applying to the constant<br>torque load<br>1: Multi-dots V/F curve<br>2: 1.3<sup>th</sup>power low torque V/F curve<br>3: 1.7<sup>th</sup>power low torque V/F curve<br>4: 2.0<sup>th</sup>power low torque V/F curve<br>Curves 2–4 apply to the torque loads such as fans<br>and water pumps. Users can adjust according to<br>the features of the loads to achieve a best<br>energy-saving effect.<br>5: Customized V/F (V/F separation); in this mode,<br>V can be separated from f and f can be adjusted<br>through the frequency reference channel set by<br>P00.06or the voltage reference channel set by<br>P04.27to change the feature of the curve.<br>**Note:**Vbin the below picture is the motor rated<br>voltage and fbis the motor rated frequency.|0|◎|



-52- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||Output voltage<br>Output frequency<br>Linear type<br>Square type<br>Torque-down V/F curve (power of 1.3)<br>Torque-down V/F curve (power of 1.7)<br>Torque-down V/F curve (power of 2.0)|||
|P04.01|Motor 1 torque<br>boost|Torque boost is used for the compensation of low<br>frequency torque.P04.01is relative to the max.<br>output voltage Vb.<br>P04.02defines the percentage of closing<br>frequency of manual torque to fb.<br>Torque boost should be selected according to the<br>load. The bigger the load is, the bigger the torque<br>is. Too big torque boost is inappropriate because<br>the motor will run with over magnetic, and the<br>current of the VFD will increase to add the<br>temperature of the VFD and decrease the<br>efficiency.|0.0%|○|
|P04.02|Motor 1 torque<br>boost close|When the torque boost is set to 0.0%, the VFD is<br>automatic torque boost.<br>Torque boost threshold: below this frequency<br>point, the torque boost is effective, but over this<br>frequency point, the torque boost is invalid.<br>Output voltage<br>Output<br>frequency<br>Cut-off<br>boost<br>b<br>f<br>f<br>v<br>v<br>Setting range ofP04.01: 0.0%: (automatic)<br>0.1%–10.0%<br>Settingrange ofP04.02: 0.0%–50.0%|20.0%|○|
|P04.03|V/F frequency<br>1 of motor 1|Output voltage<br><br>|0.00Hz|○|
|P04.04|V/F voltage 1 of<br>motor 1|V3<br>100.0%<br>b<br>V<br>|00.0%|○|
|P04.05|V/F frequency<br>2 of motor 1|Output<br>freuenc<br>V1<br>V2|00.00Hz|○|
|P04.06|V/F voltage 2 of<br>motor 1|qy<br><br>f1<br>f2<br>f3<br>fb<br>|00.0%|○|



-53- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P04.07|V/F frequency<br>3 of motor 1|WhenP04.00=1, the user can set V/F curve<br>throughP04.03–P04.08.|00.00Hz|○|
|P04.08|V/F voltage 3 of<br>motor 1|V/F is generally set according to the load of the<br>motor.<br>**Note:**V1＜V2＜V3, f1＜f2＜f3. Too high low<br>frequency voltage will heat the motor excessively<br>or damage. The overcurrent speed or overcurrent<br>protection may occur to the VFD.<br>Setting range ofP04.03: 0.00Hz–P04.05<br>Setting range ofP04.04: 0.0%–110.0%<br>Setting range ofP04.05:P04.03–P04.07<br>Setting range ofP04.06: 0.0%–110.0%<br>(the rated voltage of motor 1)<br>Setting range ofP04.07:P04.05–P02.02<br>(the rated frequency of motor 1)<br>Setting range ofP04.08: 0.0%–110.0%<br>(the rated voltage of motor 1)<br>|00.0%|○|
|P04.09|V/F slip<br>compensation<br>gain of motor 1|<br>This function code is used to compensate the<br>change of the rotation speed caused by load<br>during compensation SVPWM control to improve<br>the rigidity of the motor. It can be set to the rated<br>slip frequency of the motor which is counted as<br>below:<br>△f=fb-n*p/60<br>Of which, fbis the rated frequency of the motor, its<br>function code isP02.02; n is the rated rotating<br>speed of the motor and its function code is<br>P02.03; p is the pole pair of the motor. 100.0%<br>corresponds to the rated slip frequency△f.<br>Settingrange: 0.0–200.0%|100.0%|○|
|P04.10|Motor 1 low<br>frequency<br>vibration<br>control factor|<br>In the SVPWM control mode, current fluctuation<br>may occur to the motor on some frequency,<br>especially the motor with big power. The motor<br>cannot run stably or overcurrent may occur. These|10|○|
|P04.11|Motor 1 high<br>frequency<br>vibration<br>control factor|phenomena can be canceled by adjusting this<br>parameter.<br>Setting range ofP04.10: 0–100<br>Settingrange ofP04.11: 0–100|10|○|



-54- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P04.12|Motor 1<br>vibration<br>control<br>threshold|Setting range ofP04.12: 0.00Hz–P00.03<br>(the max. frequency)|30.00<br>Hz|○|
|P04.26|Energy-saving<br>operation<br>selection|0: No action<br>1: Automatic energy-saving operation<br>Motor on the light load conditions, automatically<br>adjusts the output voltage to save energy|0|◎|
|P04.27|Voltage setting<br>channel|Select the output setting channel at V/F curve<br>separation.<br>0: Keypad setting voltage: the output voltage is<br>determined byP04.28.<br>1: AI1 setting voltage (implemented through the<br>analog potentiometer on the keypad for the<br>0150G/018P and lower models; not available for<br>the 018G/022P and higher models.)<br>2: AI2 setting voltage;<br>3: AI3 setting voltage;<br>4: HDI setting voltage;<br>5: Multi-step speed setting voltage;<br>6: PID setting voltage;<br>7: MODBUS communication setting voltage;<br>**Note:**100% corresponds to the rated voltage of<br>the motor.|0|○|
|P04.28|Keypad setting<br>voltage|The function code is the voltage digital set value<br>when the voltage setting channel is selected as<br>"keypad selection"<br>The settingrange: 0.0%–100.0%|100.0%|○|
|P04.29|Voltage<br>increasingtime|<br>Voltage increasing time is the time when the VFD<br>accelerates from the output minimum voltage to|5.0s|○|
|P04.30|Voltage<br>decreasing<br>time|the output maximum voltage.<br>Voltage decreasing time is the time when the VFD<br>decelerates from the output maximum voltage to<br>the output minimum voltage.<br>The settingrange: 0.0–3600.0s|5.0s|○|
|P04.31|Maximum<br>output voltage|Set the upper and low limit of the output voltage.<br>Setting range ofP04.31:P04.32–100.0%|100.0%|◎|
|P04.32|Minimum<br>output voltage|(the rated voltage of the motor)<br>Settingrange ofP04.32: 0.0%–P04.31|0.0%|◎|



-55- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||(the rated voltage of the motor)<br>Vmax<br>Vmin<br>Vset<br>t1<br>t2<br>T<br>t1=P04.29<br>t2=P04.30|||
|P04.33|Flux weakening<br>coefficient at<br>constant power|<br> <br>Used to adjust the output voltage of VFD in<br>SVPWM mode during flux weakening.<br>Note: Invalid in constant-torque mode.<br>Output Voltage<br>Output frequency<br>(P04.33-1.00)*Vb<br>out<br>b<br>V<br>V<br>f<br>2f<br>b<br>b<br>Settingrange ofP04.33: 1.00–1.30|1.00|●|
|P04.34|Reserved||||



###### **P05 Group Input terminals** 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P05.00|HDI input|0: HDI is high pulse input. SeeP05.50–P05.54<br>1: HDI is switch input|0|◎|
|P05.01|S1 terminal<br>function<br>selection|0: No function<br>1: Forward rotation<br>2: Reverse rotation<br>|1|◎|
|P05.02|S2 terminal<br>function<br>selection|3: 3-wire control<br>4: Forward jogging<br>5: Reverse jogging<br>6: Coast to stop|4|◎|
|P05.03|S3 terminal<br>function<br>selection|7: Fault reset<br>8: Operation pause<br>9: External fault input<br>|7|◎|
|P05.04|S4 terminal<br>function<br>selection|10: Increasing frequency setting(UP)<br>11: Decreasing frequency setting(DOWN)<br>12: Cancel the frequency change setting<br>13: Shift between A setting and B setting|0|◎|
|P05.05|S5 terminal<br>function<br>selection|14: Shift between combination setting and A<br>setting<br>15: Shift between combination settingand B|0|◎|



-56- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P05.06|S6 terminal<br>function<br>selection|setting<br>16: Multi-step speed terminal 1<br>17: Multi-step speed terminal 2<br>|0|◎|
|P05.07|S7 terminal<br>function<br>selection|18: Multi-step speed terminal 3<br>19: Multi- step speed terminal 4<br>20: Multi- step speed pause<br>21: ACC/DEC time option terminal 1|0|◎|
|P05.08|S8 terminal<br>function<br>selection|<br>22: ACC/DEC time option terminal 2<br>23: Simple PLC stop reset<br>24: Simple PLC pause|0|◎|
|P05.09|HDI terminal<br>function<br>selection|25: PID control pause<br>26: Traverse Pause(stop at the current frequency)<br>27: Traverse reset(return to the center frequency)<br>28: Counter reset<br>29: Torque control prohibition<br>30: ACC/DEC prohibition<br>31: Counter trigger<br>32: Length reset<br>33: Cancel the frequency change setting<br>temporarily<br>34: DC brake<br>36: Shift the command to the keypad<br>37: Shift the command to the terminals<br>38: Shift the command to the communication<br>39: Pre-exciting command<br>40: Clear the power consumption<br>41: Keep the power consumption<br>61: PID pole switching<br>When the terminal acts as acceleration/<br>deceleration time selection function, it is required<br>to select four groups of acceleration/deceleration<br>time via state combination of these two terminal<br>(while terminal 1 choose 21,terminal 2 choose 22)|0|◎|
|||**Terminal1**<br>**(21)**<br>**Terminal2**<br>**(22)**<br>**ACC/DEC time**<br>**selection**<br>**Parameters**|||
|||OFF<br>OFF<br>ACC/DEC time 1<br>P00.11/P00.12|||
|||ON<br>OFF<br>ACC/DEC time 2<br>P08.00/P08.01|||
|||OFF<br>ON<br>ACC/DEC time 3<br>P08.02/P08.03|||
|||ON<br>ON<br>ACC/DEC time 4<br>P08.04/P08.05|||
|P05.10|Polarity<br>selection of the<br>input terminals|<br>The function code is used to set the polarity of the<br>input terminals.<br>Set the bit to 0,the input terminal is anode.|0x000|○|



-57- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||Set the bit to 1,the input terminal is cathode.<br><br><br><br><br>|||
|||BIT0<br>BIT1<br>BIT2<br>BIT3<br>BIT4<br>S1<br>S2<br>S3<br>S4<br>S5|||
|||BIT5<br>BIT6<br>BIT7<br>BIT8|||
|||S6<br>S7<br>S8<br>HDI|||
|||The settingrange: 0x000–0x1FF|||
|P05.11|ON-OFF filter<br>time|Set the sample filter time of S1–S8 and HDI<br>terminals. If the interference is strong, increase<br>the parameter to avoid the disoperation.<br>0.000–1.000s|0.010s|○|
|P05.12|Virtual<br>terminals<br>setting|0x000–0x1FF(0: Disabled, 1: Enabled )<br>BIT0: S1 virtual terminal<br>BIT1: S2 virtual terminal<br>BIT2: S3 virtual terminal<br>BIT3: S4 virtual terminal<br>BIT4: S5 virtual terminal<br>BIT5: S6 virtual terminal<br>BIT6: S7 virtual terminal<br>BIT7: S8 virtual terminal<br>BIT8: HDI virtual terminal<br>**Note:**After a virtual terminal is enabled, the<br>terminal status can be changed only through<br>communication, and the communication address<br>is 0x200A.|0x000|◎|
|||Set the operation mode of the terminals control<br>0: 2-wire control 1, comply the enable with the<br>direction. This mode is widely used. It determines<br>the rotation direction by the defined FWD and<br>REV terminals command.|||
||Terminals|FWD<br>K1<br>Running<br>command<br>FWD<br>REV<br>OFF<br>OFF<br>Stopping|||
|P05.13|control running<br>mode|REV<br><br>K2<br>OFF<br>OFF<br>ON<br>ON<br>Forward<br>running<br>Reverse<br>running|0|◎|
|||COM<br>ON<br>ON<br>Hold on<br>1: 2-wire control 2; Separate the enable from the<br>direction. FWD defined by this mode is the<br>enabling ones. The direction depends on the state<br>of the defined REV.|||



-58- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|**Name**|**Descript**|**ion**|||**Default**<br>**value**|**Modify**|
|---|---|---|---|---|---|---|---|
|||FWD<br>|FWD|REV|Running<br>command|||
|||K1<br>|OFF|OFF|Stopping|||
|||REV<br><br>K2<br>|OFF<br>ON|OFF<br>ON|Stopping<br>Forward<br>running|||
|||COM<br>2: 3-wire control 1; Sin is th<br>this mode, and the running c<br>FWD and the direction is co<br>is natural closed.|ON<br>e en<br>om<br>ntro|ON<br>ablin<br>man<br>lled|Reverse<br>running<br>g terminal on<br>d is caused by<br>by REV.  Sin|||





<!-- Start of picture text -->
SB1<br>FWD<br>SB2<br>SIn<br>REV<br>K<br>COM<br><!-- End of picture text -->

|The direction|control is as below duringoperation:<br> <br>|
|---|---|
||<br>|
|**Sln**|**REV**<br> <br>**direction**<br> <br>**direction**|
|ON|OFFON<br>Forward<br>Reverse|
||→<br>Reverse<br>Forward|
|ON|ONOFF<br>Reverse<br>Forward|
||→<br>Forward<br>Reverse|
|ON→OFF|ON<br>Decelerate to stop<br>OFF|
|3: 3-wire con<br>this mode, a<br>SB1 or SB3<br>direction. NC|trol 2; Sin is the enabling terminal on<br>nd the running command is caused by<br>and both of them control the running<br>SB2 generates the stop command.|





<!-- Start of picture text -->
SB1<br>FWD<br>SB2<br>SIn<br>REV<br>SB3<br>COM<br><!-- End of picture text -->

-59- 

GD200A series VFD Function parameters 

|**Function**<br>**code**|**Name**||**Des**|**cription**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|---|---|
|||**Sln**|**FWD**|**REV**<br>**Direction**|||
|||ON|OFF→|ON<br>Forward|||
||||ON|OFF<br>Reverse|||
||||ON|OFF→<br>Forward|||
|||ON|OFF|ON<br>Reverse|||
|||ON→|/|/<br>Decelerate|||
|||OFF|/|to stop<br>/|||
|||**Note**: for th<br>FWD/REVt<br>of the stopp<br>even the co<br>the VFD wo<br>is canceled.<br>the VFD ca<br>STOP/RST <br>fixed-length<br>P07.04).|e 2-wire run<br>erminal is v<br>ing comma<br>ntrol termin<br>n’t work wh<br>Only when<br>n start again<br>stop when<br>stop and te|ning mode, when<br>alid, the VFD stop because<br>nd from other sources,<br>alFWD/REVkeeps valid;<br>en the stopping command<br> FWD/REVis relaunched,<br>. For example, the valid<br>PLC signal cycles stop,<br>rminal control (see|||
|P05.14|S1 terminal<br>switching-on<br>delaytime||||0.000s|○|
|P05.15|S1 terminal<br>switching-off<br>delaytime||||0.000s|○|
|P05.16|S2 terminal<br>switching-on<br>delaytime|The function<br>delay time o|code defin<br>f electrical|es the corresponding<br>level of the programmable|0.000s|○|
||S2 terminal|terminals fro|m switchin|g on to switching off.|||
|P05.17|switching-off|Si electri|cal level||0.000s|○|
||delatime||||||
||y|Si valid|invalid|invalid<br>valid|||
|P05.18|S3 terminal<br>switching-on<br>delaytime|Setting rang|Switcn-on<br>delay<br>e: 0.000–5|Switcn-off<br>delay<br>0.000s|0.000s|○|
|P05.19|S3 terminal<br>switching-off<br>delaytime||||0.000s|○|
||S4 terminal||||||
|P05.20|switching-on<br>delaytime||||0.000s|○|



-60- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P05.21|S4 terminal<br>switching-off<br>delaytime||0.000s|○|
|P05.22|S5 terminal<br>switching-on<br>delaytime||0.000s|○|
|P05.23|S5 terminal<br>switching-off<br>delaytime||0.000s|○|
||S6 terminal||||
|P05.24|switching-on<br>delaytime||0.000s|○|
|P05.25|S6 terminal<br>switching-off<br>delaytime||0.000s|○|
||S7 terminal||||
|P05.26|switching-on<br>delaytime||0.000s|○|
|P05.27|S7 terminal<br>switching-off<br>delaytime||0.000s|○|
|P05.28|S8 terminal<br>switching-on<br>delaytime||0.000s|○|
|P05.29|S8 terminal<br>switching-off<br>delaytime||0.000s|○|
||HDI terminal||||
|P05.30|switching-on<br>delaytime||0.000s|○|
||HDI terminal||||
|P05.31|switching-off<br>delaytime||0.000s|○|
|P05.32|Lower limit of<br>AI1|AI1 setting is implemented through the analog<br>potentiometer on the keypad for the 0150G/018P|0.00V|○|
|P05.33|Corresponding<br>setting of the<br>lower limit of<br>AI1|and lower models but is not available for the<br>018G/022P and higher models. AI2 setting is<br>implemented through the control terminal AI2. AI3<br>settingis implemented through the control<br>|0.0%|○|



-61- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P05.34|Upper limit of<br>AI1|terminal AI3.<br>The function code defines the relationship|10.00V|○|
|P05.35|Corresponding<br>setting of<br>the upper limit<br>of AI1|between the analog input voltage and its<br>corresponding set value. If the analog input<br>voltage beyond the set minimum or maximum<br>input value, the VFD will count at the minimum or|100.0%|○|
|P05.36|AI1 input filter<br>time|maximum one.<br>When the analog input is the current input, the|0.100s|○|
|P05.37|Lower limit of<br>AI2|corresponding voltage of 0–20mA is 0–10V.<br>In different cases, the corresponding rated value<br>|0.00V|○|
|P05.38|Corresponding<br>setting of the<br>lower limit of<br>AI2|of 100.0% is different. See the application for<br>detailed information.<br>The figure below illustrates different applications:<br>Corresponding<br>|0.0%|○|
|P05.39|Upper limit of<br>AI2|setting<br>100%|10.00V|○|
|P05.40|Corresponding<br>setting of<br>the upper limit<br>of AI2|-10V<br>Al3<br>AI1/AI2<br>20mA<br>AI<br>10V|100.0%|○|
|P05.41|AI2 input filter<br>time|-100%|0.100s|○|
|P05.42|Lower limit of<br>AI3|Input filter time: this parameter is used to adjust<br>the sensitivity of the analog input. Increasing the<br>|-10.00V|○|
|P05.43|Corresponding<br>setting of the<br>lower limit of<br>AI3|value properly can enhance the anti-interference<br>of the analog, but weaken the sensitivity of the<br>analog input<br>**Note:**Analog AI1 and AI2 can support 0 (2)–10V|-100.0%|○|
|P05.44|Middle value of<br>AI3|or 0 (4)–20mA input, when AI1 and AI2 selects 0<br>(4)–20mA input, the corresponding voltage of<br>|0.00V|○|
|P05.45|Corresponding<br>middle setting<br>of AI3|20mA is 10V. AI3 can support the input of<br>-10V–+10V.<br>Setting range ofP05.32: 0.00V–P05.34|0.0%|○|
|P05.46|Upper limit of<br>AI3|Setting range ofP05.33: -100.0%–100.0%<br>Setting range ofP05.34:P05.32–10.00V<br>|10.00V|○|
|P05.47|Corresponding<br>setting of<br>the upper limit<br>of AI3|Setting range ofP05.35: -100.0%–100.0%<br>Setting range ofP05.36: 0.000s–10.000s<br>Setting range ofP05.37: 0.00V–P05.39<br>Setting range ofP05.38: -100.0%–100.0%|100.0%|○|



-62- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P05.48|AI3 input filter<br>time|Setting range ofP05.39:P05.37–10.00V<br>Setting range ofP05.40: -100.0%–100.0%<br>Setting range ofP05.41: 0.000s–10.000s<br>Setting range ofP05.42: -10.00V–P05.44<br>Setting range ofP05.43: -100.0%–100.0%<br>Setting range ofP05.44:P05.42–P05.46<br>Setting range ofP05.45: -100.0%–100.0%<br>Setting range ofP05.46:P05.44–10.00V<br>Setting range ofP05.47: -100.0%–100.0%<br>Settingrange ofP05.48: 0.000s–10.000s|0.100s|○|
|P05.50|Lower limit<br>frequency of<br>HDI|0.000kHz–P05.52|0.000<br>kHz|○|
|P05.51|Corresponding<br>setting of HDI<br>low frequency<br>setting|-100.0%–100.0%|0.0%|○|
|P05.52|Upper limit<br>frequency of<br>HDI|P05.50–50.00kHz|50.00<br>kHz|○|
|P05.53|Corresponding<br>setting of upper<br>limit frequency<br>of HDI|<br>-100.0%–100.0%|100.0%|○|
|P05.54|HDI frequency<br>input filter time|0.000s–10.000s|0.100s|○|



###### **P06 Group Output terminals** 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P06.00|HDO output|<br>The function selection of the high-speed pulse<br>output terminals.<br>0: Open collector pole high speed pulse output:<br>The max. pulse frequency is 50.0kHz. See<br>P06.27–P06.31for detailed information of the<br>related functions.<br>1: Open collector pole output. SeeP06.02for<br>detailed information of the related functions.|0|◎|



-63- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P06.01|Y1 output|0: Invalid|0|○|
|P06.02|HDO output|1: In operation<br> <br>|0|○|
|P06.03|Relay RO1<br>output|2: Forward rotation<br>3: Reverse rotation<br>|1|○|
|P06.04|Relay RO2<br>output|4: Jogging<br>5: The VFD fault<br>6: Frequency degree test FDT1<br>7: Frequency degree test FDT2<br>8: Frequency arrival<br>9: Zero speed running<br>10: Upper limit frequency arrival<br>11: Lower limit frequency arrival<br>12: Ready for operation<br>13: Pre-magnetizing<br>14: Overload pre-alarm<br>15: Underload pre-alarm<br>16: Completion of simple PLC step<br>17: Completion of simple PLC cycle<br>18: Setting count value arrival<br>19: Defined count value arrival<br>20: External fault valid<br>22: Running time arrival<br>23: MODBUS communication virtual terminals output<br>26: DC bus voltage establishment<br>27: Auxiliary motor 1<br>|5|○|
|||28: Auxiliarymotor 2|||
|P06.05|Polarity<br>selection of<br>output<br>terminals|The function code is used to set the pole of the<br>output terminal.<br>When the current bit is set to 0, output terminal is<br>positive.<br>When the current bit is set to 1, output terminal is<br>negative.|0|○|
|||BIT0<br>BIT1<br>BIT2<br>BIT3|||
|||Y<br>HDO<br>RO1<br>RO2|||
|||Settingrange: 0–F|||
|P06.06|Y1<br>switching-on<br>delaytime|The function code defines the corresponding<br>delay time of the electrical level change during the|0.000s|○|
||Y1||||
|P06.07|<br>switching-off<br>delaytime|programmable terminal switching on and off.|0.000s|○|



-64- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
||HDO<br>|Y electric level|||
|P06.08|switching-on<br>delaytime|Y valid<br>Invalid<br>Switch on<br>dl<br>invalid<br>Valid<br>Switch off<br>dl|0.000s|○|
|P06.09|HDO<br>switching-off<br>delaytime|eay<br>eay<br>The setting range: 0.000–50.000s<br>**Note:**P06.08andP06.09are valid only when|0.000s|○|
||RO1|P06.00=1.|||
|P06.10|switching-on<br>delaytime||0.000s|○|
||RO1||||
|P06.11|switching-off<br>delaytime||0.000s|○|
||RO2||||
|P06.12|switching-on<br>delaytime||0.000s|○|
||RO2||||
|P06.13|switching-off<br>delaytime||0.000s|○|
|P06.14|AO1 output|0: Running frequency|0|○|
|P06.15|AO2 output|1: Setting frequency|0|○|
|P06.16|HDO<br>high-speed<br>pulse output<br>selection|2: Ramp reference frequency<br>3: Running rotation speed (relative to twice the<br>motor synchronization rotation speed)<br>4: Output current<br>(relative to twice the VFD rated current)<br>5: Output current<br>(relative to twice the motor rated current)<br>6: Output voltage (relative to 1.5 times the rated<br>voltage of the VFD)<br>7: Output power (relative to twice the rated power<br>of the motor)<br>9: Output torque (relative to twice the rated torque<br>of the motor)<br>10: Analog AI1 input value (implemented through<br>the analog potentiometer on the keypad for the<br>0150G/018P and lower models; not available for<br>the 018G/022P and higher models.)<br>11: Analog AI2 input value<br>12: AnalogAI3 input value|0|○|



-65- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||13: High speed pulse HDI input value<br>14: MODBUS communication set value 1<br>15: MODBUS communication set value 2<br>22: Torque current (relative to triple the motor<br>rated current)<br>23: Rampreference frequency(with sign)|||
|P06.17|Lower limit of<br>AO1 output|The above function codes define the relative|0.0%|○|
|P06.18|Corresponding<br>AO1 output to<br>the lower limit|relationship between the output value and analog<br>output. When the output value exceeds the range<br>of set maximum or minimum output, it will count|0.00V|○|
|P06.19|Upper limit of<br>AO1 output|according to the low-limit or upper-limit output.<br>When the analog output is current output, 1mA|100.0%|○|
||Corresponding|equals to 0.5V.|||
|P06.20|AO1 output to<br>the upper limit|In different cases, the corresponding analog<br>output of 100% of the output value is different. For|10.00V|○|
|P06.21|AO1 output<br>filter time|details, see section 7.10 PID control.<br>**10V(20mA)**<br>**A**<br>**O**|0.000s|○|
|P06.22|Lower limit of<br>AO2 output||0.0%|○|
|P06.23|Corresponding<br>AO2 output to<br>the lower limit||0.00V|○|
||U lii f|**0.0%**<br>**100.0%**|||
|P06.24|pper mt o<br>AO2 output|Setting range of P06.17: -100.0%–P06.19<br>|100.0%|○|
|P06.25|Corresponding<br>AO2 output to<br>the upper limit|Setting range ofP06.18: 0.00V–10.00V<br>Setting range of P06.19: P06.17–100.0%<br>Setting range ofP06.20: 0.00V–10.00V|10.00V|○|
|P06.26|AO2 output<br>filter time|Setting range ofP06.21: 0.000s–10.000s<br>Setting range ofP06.22: 0.0%–P06.24|0.000s|○|
|P06.27|Lower limit of<br>HDO output|Setting range ofP06.23: 0.00V–10.00V<br>Setting range ofP06.24:P06.22–100.0%|0.00%|○|
||Corresponding|Setting range ofP06.25: 0.00V–10.00V|||
|P06.28|<br>HDO output to<br>the lower limit|<br>Setting range ofP06.26: 0.000s–10.000s<br>Setting range ofP06.27: 0.000s–10.000s|0.00kHz|○|
|P06.29|Upper limit of<br>HDO output|Setting range ofP06.28: 0.00–50.00kHz<br>Setting range ofP06.29:P06.27–100.0%|100.0%|○|
|P06.30|Corresponding<br>HDO output to<br>the upper limit|Setting range ofP06.30: 0.00–50.00kHz<br>Setting range ofP06.31: 0.000s–10.000s|50.00<br>kHz|○|



-66- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P06.31|HDO output<br>filter time||0.000s|○|



###### **P07 Group Human-Machine Interface** 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P07.00|User’s<br>password|0–65535<br>The password protection will be valid when setting<br>any non-zero number.<br>00000: Clear the previous user’s password, and<br>make the password protection invalid.<br>After the user’s password becomes valid, if the<br>password is incorrect, users cannot enter the<br>parameter menu. Only correct password can<br>make the user check or modify the parameters.<br>Please remember all users’ passwords.<br>Retreat editing state of the function codes and the<br>password protection will become valid in 1 minute.<br>If the password is available, pressPRG/ESCto<br>enter into the editing state of the function codes,<br>and then "0.0.0.0.0" will be displayed. Unless input<br>right password, the operator cannot enter into it.<br>**Note:**Restoring to the default value can clear the<br>password, please use it with caution.|0|○|
|P07.01|Parameter<br>copy|The function code determines the mode of<br>parameters copy.<br>0: No operation<br>1: Upload the local function parameter to the<br>keypad<br>2: Download the keypad function parameter to<br>local address(including the motor parameters)<br>3: Download the keypad function parameter to<br>local address (excluding the motor parameter of<br>P02 group)<br>4: Download the keypad function parameters to<br>local address (only for the motor parameter of P02<br>group)<br>**Note:**After completing the 1–4 operations, the<br>parameter will come back to 0 automatically. The<br>function of upload and download excludes the<br>factory parameters of P29.|0|◎|



-67- 

|GD200A series VFD|Functionparameters|
|---|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P07.02|QUICK/JOG<br>function<br>selection|Ones: Function of QUICK/JOG key<br>0: No function<br>1: Jogging. PressQUICK/JOGto begin the<br>jogging running.<br>2: Shift the display state by the shifting key. Press<br>QUICK/JOGto shift the displayed function code<br>from right to left.<br>3: Shift between forward rotations and reverse<br>rotations. PressQUICK/JOGto shift the direction<br>of the frequency commands. This function is only<br>valid in the keypad commands channels.<br>4: Clear UP/DOWN settings. PressQUICK/JOG<br>to clear the set value of UP/DOWN.<br>5: Coast to stop. PressQUICK/JOGto coast to<br>stop.<br>6: Shift the running commands source. Press<br>QUICK/JOGto shift the running commands<br>source.<br>7: Quick commission mode(committee according<br>to the non-factory parameter)<br>**Note:**PressQUICK/JOGto shift between forward<br>rotation and reverse rotation, the VFD does not<br>record the state after shifting during powering off.<br>The VFD will run according to parameterP00.13<br>during next powering on.<br>Tens: Keypad lock selection<br>0: Do not lock keypad buttons<br>1: Lock all the keypad buttons<br>2: Lock part of the keypad buttons (lock PRG/ESC<br>key only)<br>Note: If the tens is 1, press PRG+DAT keys three<br>times, and all the keypad buttons will be locked;<br>Keep DAT key pressed down while pressing V key<br>three times can unlock keypad buttons.<br>Settingrange: 0x00–0x27|0x01|◎|
|P07.03|Shifting<br>sequence<br>selection of<br>QUICK/JOG|WhenP07.02=6, set the shifting sequence of<br>running command channels.<br>0: Keypad control→terminals control<br>→communication control|0|○|



-68- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
||commands|1: Keypad control←→terminals control<br>2: Keypad control←→communication control<br>3: Terminals control←→communication control|||
|P07.04|STOP/RST<br>stop function|<br>STOP/RSTis valid for stop function.STOP/RST<br>is valid in any state for the fault reset.<br>0: Only valid for the keypad control<br>1: Both valid for keypad and terminals control<br>2: Both valid for keypad and communication<br>control<br>3: Valid for all control modes|0|○|
|P07.05|Parameters<br>state 1|0x0000–0xFFFF<br>BIT0: running frequency (Hz on)<br>BIT1: set frequency (Hz flickering)<br>BIT2: bus voltage (Hz on)<br>BIT3: output voltage (V on)<br>BIT4: output current (A on)<br>BIT5: running rotation speed (rpm on)<br>BIT6: output power (% on)<br>BIT7: output torque (% on)<br>BIT8: PID reference (% flickering)<br>BIT9: PID feedback value (% on)<br>BIT10: input terminals state<br>BIT11: output terminals state<br>BIT12: torque set value (% on)<br>BIT13: pulse counter value<br>BIT14: length value<br>BIT15: PLC and the current stage in multi-step<br>speed|0x03FF|○|
|P07.06|Parameters<br>state 2|0x0000–0xFFFF<br>BIT0: AI1 (V on) (implemented through the analog<br>potentiometer on the keypad for the 0150G/018P<br>and lower models; not available for the<br>018G/022P and higher models.)<br>BIT1: AI2 (V on)<br>BIT2: AI3 (V on)<br>BIT3: HDI frequency<br>BIT4: motor overload percentage (% on)<br>BIT5: the VFD overload percentage (% on)<br>BIT6: rampfrequency given value(Hz on)|0x0000|○|



-69- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||BIT7: linear speed<br>BIT8: AC inlet current (A on)<br>BIT9: upper limit frequency (Hz on)|||
|P07.07|The parameter<br>in the stop state|<br>0x0000–0xFFFF<br>BIT0: set frequency<br>(Hz on, frequency flickering slowly)<br>BIT1: bus voltage (V on)<br>BIT2: input terminals state<br>BIT3: output terminals state<br>BIT4: PID reference (% flickering)<br>BIT5: PID feedback value (% flickering)<br>BIT6: reserved<br>BIT7: analog AI1 value (V on) (implemented<br>through the analog potentiometer on the keypad<br>for the 0150G/018P and lower models; not<br>available for the 018G/022P and higher models.)<br>BIT8: analog AI2 value (V on)<br>BIT9: analog AI3 value (V on)<br>BIT10: high speed pulse HDI frequency<br>BIT11: PLC and the current step in multi-step<br>speed<br>BIT12: pulse counters<br>|0x00FF|○|
|||BIT14: upper limit frequency (Hz on)|||
|P07.08|Frequency<br>coefficient|0.01–10.00<br>Displayed frequency=runningfrequency*P07.08|1.00|○|
|P07.09|Rotation speed<br>coefficient|<br>0.1–999.9%<br>Mechanical rotation speed =120*displayed<br>runningfrequency×P07.09/motorpolepairs|100.0%|○|
|P07.10|Linear speed<br>coefficient|0.1–999.9%<br>Linear speed= Mechanical rotation speed×P07.10|1.0%|○|
|P07.11|Rectifier bridge<br>module<br>temperature|0–100.0°C|/|●|
|P07.12|IGBT module<br>temperature|0–100.0°C|/|●|
|P07.13|Software<br>version|1.00–655.35|/|●|
|P07.14|Local<br>accumulative<br>runningtime|0–65535h|/|●|



-70- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P07.15|High bit of<br>power<br>consumption|<br>Display the power used by the VFD.<br>The power consumption of the VFD<br>P0715*1000P0716|/|●|
|P07.16|Low bit of<br>power<br>consumption|=.+.<br>Setting range ofP07.15: 0–65535 kWh (*1000)<br>Setting range ofP07.16: 0.0–999.9 kWh|/|●|
|P07.17|VFD type|0: G type<br>1: P type|/|●|
|P07.18|Rated power of<br>the VFD|<br>0.4–3000.0kW|/|●|
|P07.19|Rated voltage<br>of the VFD|50–1200V|/|●|
|P07.20|Rated current<br>of the VFD|0.1–6000.0A|/|●|
|P07.21|Factory bar<br>code 1|0x0000–0xFFFF|/|●|
|P07.22|Factory bar<br>code 2|0x0000–0xFFFF|/|●|
|P07.23|Factory bar<br>code 3|0x0000–0xFFFF|/|●|
|P07.24|Factory bar<br>code 4|0x0000–0xFFFF|/|●|
|P07.25|Factory bar<br>code 5|0x0000–0xFFFF|/|●|
|P07.26|Factory bar<br>code 6|0x0000–0xFFFF|/|●|
|P07.27|Type of present<br>fault|<br>0: No fault<br>1: IGBT U phase protection (OUt1)|/|●|
|P07.28|Type of the last<br>fault|2: IGBT V phase protection (OUt2)<br>3: IGBT W phase protection (OUt3)<br>|/|●|
|P07.29|Type of the last<br>but one fault|4: OC1<br>5: OC2<br>|/|●|
|P07.30|Type of the last<br>but two fault|6: OC3<br>7: OV1<br>|/|●|
|P07.31|Type of the last<br>but three fault|8: OV2<br>9: OV3<br>|/|●|
|P07.32|Type of the last<br>but four fault|10: UV<br>11: Motor overload (OL1)<br>12: The VFD overload(OL2)<br>|/|●|



-71- 

|GD200A series VFD|Functionparameters|
|---|---|



|**Function**<br>**code**|<br>**Name**<br>**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|
||13: Input side phase loss (SPI)<br>14: Output side phase loss (SPO)<br>15: Overheat of the rectifier module (OH1)<br>16: Overheat fault of the inverter module (OH2)<br>17: External fault (EF)<br>18: 485 communication fault (CE)<br>19: Current detection fault (ItE)<br>20: Motor autotune fault (tE)<br>21: EEPROM operation fault (EEP)<br>22: PID response offline fault (PIDE)<br>23: Braking unit fault (bCE)<br>24: Running time arrival (END)<br>25: Electrical overload (OL3)<br>26: Panel communication fault (PCE)<br>27: Parameter uploading fault (UPE)<br>28: Parameter downloading fault (DNE)<br>32: Grounding short circuit fault 1 (ETH1)<br>33: Grounding short circuit fault 2 (ETH2)|||
||36: Undervoltage fault(LL)|||
|P07.33|Runningfrequencyatpresent fault|0.00Hz|●|
|P07.34|Rampreference frequencyatpresent fault|0.00Hz|●|
|P07.35|Output voltage at thepresent fault|0V|●|
|P07.36|Output current atpresent fault|0.0A|●|
|P07.37|Bus voltage atpresent fault|0.0V|●|
|P07.38|The max. temperature atpresent fault|0.0°C|●|
|P07.39|Input terminals state atpresent fault|0|●|
|P07.40|Output terminals state atpresent fault|0|●|
|P07.41|Runningfrequencyat the last fault|0.00Hz|●|
|P07.42|Rampreference frequencyat the last fault|0.00Hz|●|
|P07.43|Output voltage at the last fault|0V|●|
|P07.44|The output current at the last fault|0.0A|●|
|P07.45|Bus voltage at the last fault|0.0V|●|
|P07.46|The max. temperature at the last fault|0.0°C|●|
|P07.47|Input terminals state at the last fault|0|●|
|P07.48|Output terminals state at the last fault|0|●|
|P07.49|Runningfrequencyat the last but one fault|0.00Hz|●|
|P07.50|Output voltage at the last but one faults|0.00Hz|●|
|P07.51|Output current at the last but one faults|0V|●|
|P07.52|Output current at the last but one fault|0.0A|●|



-72- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**<br>**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|
|P07.53|Bus voltage at the last but one fault|0.0V|●|
|P07.54|The max. temperature at the last but one fault|0.0°C|●|
|P07.55|Input terminals state at the last but one fault|0|●|
|P07.56|Output terminals state at the last but one fault|0|●|



###### **P08 Group Enhanced function** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P08.00|ACC time 2||Depend<br>on<br>model|○|
|P08.01|DEC time 2||Depend<br>on<br>model|○|
|P08.02|ACC time 3|Refer toP00.11andP00.12for detailed definition.<br>Goodrive200A series define four groups of<br>ACC/DEC time which can be selected by P5|Depend<br>on<br>model|○|
|P08.03|DEC time 3|group. The first group of ACC/DEC time is the<br>factory default one.<br>Setting range: 00–36000s|Depend<br>on<br>model|○|
|P08.04|ACC time 4|..|Depend<br>on<br>model|○|
|P08.05|DEC time 4||Depend<br>on<br>model|○|
|P08.06|Jogging<br>frequency|This parameter is used to define the reference<br>frequency during jogging.<br>Setting range: 0.00Hz –P00.03 (the max.<br>frequency)|5.00Hz|○|
|P08.07|Jogging ACC<br>time|The jogging ACC time means the time needed if<br>the VFD runs from 0Hz to the max. frequency.<br>The jogging DEC time means the time needed if|Depend<br>on<br>model|○|
|P08.08|Jogging DEC<br>time|the VFD goes from the max. frequency (P00.03) to<br>0Hz.<br>Settingrange: 0.0–3600.0s|Depend<br>on<br>model|○|
|P08.09|Jumping<br>frequency1|When the set frequency is in the range of jumping<br>frequency, the VFD will run at the edge of the|0.00Hz|○|
|P08.10|Jumping<br>frequency<br>range 1|jumping frequency.<br>The VFD can avoid the mechanical resonance<br>point bysettingthejumpingfrequency. The VFD|0.00Hz|○|



-73- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P08.11|Jumping<br>frequency2|can set three jumping frequency. But this function<br>will be invalid if all jumping points are 0.|0.00Hz|○|
|P08.12|Jumping<br>frequency<br>range 2|Set frequency f<br>Jump<br>frequency 3<br>1/2*Jump<br>~~fre~~quency range 3<br>1/2*Jump<br>~~frequency r~~ange 3|0.00Hz|○|
|P08.13|Jumping<br>frequency3|Jump<br>frequency 2<br>1/2*Jump<br>frequency range 2<br>1/2*Jump<br>~~freq~~uency range 2|0.00Hz|○|
||Jumping|Jump<br>frequency 1<br>1/2*Jump<br>frequency range1<br>1/2*Jump<br>~~fre~~quency range 1|||
|P08.14|frequency<br>range 3|Time t<br>Setting range: 0.00Hz –P00.03 (the max.|0.00Hz|○|
|||frequency)|||
|P08.15|Traverse range|<br>This function applies to the industries where|0.0%|○|
|P08.16|Sudden<br>jumping<br>frequency<br>range|traverse and convolution function are required<br>such as textile and chemical fiber.<br>The traverse function means that the output<br>frequency of the VFD is fluctuated with the set|0.0%|○|
|P08.17|Traverse boost<br>time|frequency as its center. The route of the running<br>frequency is illustrated as below, of which the|5.0s|○|
|P08.18|Traverse<br>declining time|traverse is set byP08.15and whenP08.15is set<br>as 0, the traverse is 0 with no function.<br>Output frequency<br>Jumping frequency<br>Accelerate<br>Decelerate per<br>dec. time<br>Wobble frequency amplitude<br>Fall time of<br>wobble frequency<br>Rise time of<br>wobble frequency<br>Center<br>frequency<br>Lower limit of<br>wobble frequency<br>Traverse range: The traverse running is limited by<br>upper and low frequency.<br>The traverse range relative to the center<br>frequency: traverse range AW = center<br>frequency×traverse rangeP08.15.<br>Sudden jumping frequency = traverse range<br>AW×sudden jumping frequency rangeP08.16.<br>When run at the traverse frequency, the value<br>which is relative to the sudden jumping frequency.<br>The raising time of the traverse frequency: The<br>time from the lowest point to the highest one.<br>The decliningtime of the traverse frequency: The|<br>5.0s|○|



-74- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||time from the highest point to the lowest one.<br>Setting range ofP08.15: 0.0–100.0%<br>(relative to the set frequency)<br>Setting range ofP08.16: 0.0–50.0%<br>(relative to the traverse range)<br>Setting range ofP08.17: 0.1–3600.0s<br>Settingrange ofP08.18: 0.1–3600.0s|||
|P08.19|Number of the<br>displayed<br>decimal points|Ones: Number of decimal points of linear speed<br>0: No decimal point<br>1: One decimal point<br>2: Two decimal points<br>3: Three decimal points<br>Tens: Number of decimal points of frequency<br>0: Two decimal points<br>1: One decimal point<br>Range: 0x00–0x13|0x00|○|
|P08.20|Correcting<br>analog input<br>and output|0: Correct<br>1: Not correct<br>Settingrange: 0–1|0|◎|
|P08.25|Setting<br>countingvalue|The counter counts the input pulse signals through<br>the S terminals (with the counter triggering|0|○|
|P08.26|Reference<br>counting value|function) or HDI (P05.00=1).<br>When the counter achieves a fixed number, the<br>multi-function output terminals will output the<br>signal of "fixed counting number arrival" and the<br>counter go on working; when the counter achieves<br>a setting number, the multi-function output<br>terminals will output the signal of "setting counting<br>number arrival", the counter will clear all numbers<br>and stop to recount before the next pulse.<br>The setting counting valueP08.26should be no<br>more than the setting counting valueP08.25.<br>The function is illustrated as below:<br>S terminal/HDI<br>HDO, RO1, RO2<br>HDO, RO1, RO2<br>The set<br>count value<br>is reached.<br>The specified<br>count value<br>is reached.<br>Setting range ofP08.25:P08.26–65535<br>Settingrange ofP08.26: 0–P08.25|0|○|



-75- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P08.27|Set running<br>time|Pre-set running time of the VFD. When the<br>accumulative running time achieves the set time,<br>the multi-function digital output terminals will<br>output the signal of "running time arrival".<br>Settingrange: 0–65535 min|0m|○|
|P08.28|Fault reset<br>times|The time of the fault reset: set the fault reset time<br>by selecting this function. If the reset time exceeds|0|○|
|P08.29|Interval time of<br>automatic fault<br>reset|this set value, the VFD will stop for the fault and<br>wait to be repaired.<br>The interval time of the fault reset: The interval<br>between the time when the fault occurs and the<br>time when the reset action occurs.<br>Setting range ofP08.28: 0–10<br>Settingrange ofP08.29: 0.1–3600.0s|1.0s|○|
|P08.30|Frequency<br>decreasing<br>ratio of the<br>dropping<br>control|The output frequency of the VFD changes as the<br>load. And it is mainly used to balance the power<br>when several VFDs drive one load.<br>Setting range: 0.00–10.00Hz|0.00Hz|○|
|P08.32|FDT1 electrical<br>level detection<br>value|<br>When the output frequency exceeds the<br>corresponding frequency of FDT electrical level,<br>the multi-function digital output terminals will|50.00<br>Hz|○|
|P08.33|FDT1 retention<br>detection value|output the signal of "frequency level detect FDT"<br>until the output frequency decreases to a value<br>|5.0%|○|
|P08.34|FDT2 electrical<br>level detection<br>value|lower than (FDT electrical level—FDT retention<br>detection value) the corresponding frequency, the<br>signal is invalid. Below is the waveform diagram:<br> <br>|50.00<br>Hz|○|
|P08.35|FDT2 retention<br>detection value|Output frequency<br>FDT level<br>Y,<br>RO1, RO2<br>FDT lag<br>Setting range ofP08.32: 0.00Hz–P00.03<br>(the max. frequency)<br>Setting range ofP08.33: 0–100.0%<br>(FDT1 electrical level)<br>Setting range ofP08.34: 0.00 Hz –P00.03<br>(the max. frequency)|5.0%|○|



-76- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||Setting range ofP08.35: 0.0–100.0%<br>(FDT2 electrical level)|||
|P08.36|Amplitude<br>value for<br>frequency<br>arrival<br>detection|When the output frequency is among the below or<br>above range of the set frequency, the<br>multi-function digital output terminal will output the<br>signal of "frequency arrival", see the diagram<br>below for detailed information:<br>Y<br>RO1, RO2<br>,<br>Output frequency<br>Detecting range<br>T<br>T<br>The setting range: 0.00Hz–P00.03<br>|0.00 Hz|○|
|||(the max. frequency)|||
|P08.37|Energy braking<br>enable|<br>This parameter is used to control the internal<br>braking unit.<br>0: Disable<br>1: Enable<br>**Note:**Only applicable to the models with internal<br>brakingunits.|0|○|
|P08.38|Threshold<br>voltage|After setting the original bus voltage, adjust this<br>parameter to break the load appropriately. The<br>factory value changes with voltage level.<br>Setting range: 200.0–2000.0V|For 220V:<br>380.0V<br>For 380V:<br>700.0V<br>For 660V:<br>1120.0V|<br>○<br> <br>|
|P08.39|Cooling fan<br>running mode|Set the operation mode of the cooling fan.<br>0: Normal mode, after the rectifier receives<br>operation command or the detected temperature<br>of module is above 45°C or the module current is<br>above 20% of the rated current, the fan rotates.<br>1: The fan keeps on running after power on<br>(generally for the site with high temperature and<br>humidity)<br>2: The fan will start when the ramp frequency of<br>the VFD is larger than 0Hz; if the running<br>frequency is 0Hz or changes from running state to<br>stop state, the fan will stop after one minute.<br>Settingrange: 0–2|0|○|



-77- 

|GD200A se|ries VFD||Function|parameters|
|---|---|---|---|---|
|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|P08.40|PWM selection|<br>0x00–0x21<br>LED ones: PWM mode selection<br>0: PWM mode 1, three-phase modulation and<br>two-modulation<br>1: PWM mode 2, three-phase modulation<br>LED tens: low-speed carrier frequency limit mode<br>0: Low-speed carrier frequency limit mode 1, the<br>carrier frequency will limit to 2k if it exceeds 2k at<br>low speed<br>1: Low-speed carrier frequency limit mode 2, the<br>carrier frequency will limit to 4k if it exceeds 4k at<br>low speed<br>2: No limit|00|◎|
|P08.41|Over<br>modulation<br>selection|0x00–0x11<br>LED ones<br>0: Invalid<br>1: Valid<br>LED tens<br>0: Light overmodulation<br>1: Heavyovermodulation|0x01|◎|
|P08.42|Keypad data<br>control|0x000–0x1223<br>LED ones: frequency enable selection<br>0: Both∧/∨keys and digital potentiometer<br>adjustments are valid<br>1: Only∧/∨keys adjustment is valid<br>2: Only digital potentiometer adjustments is valid<br>3: Neither∧/∨keys nor digital potentiometer<br>adjustments are valid<br>LED tens: frequency control selection<br>0: Only valid whenP00.06=0 orP00.07=0<br>1: Valid for all frequency setting manner<br>2: Invalid for multi-step speed when multi-step<br>speed has the priority<br>LED hundreds: action selection during stopping<br>0: Setting is valid<br>1: Valid during running, cleared after stopping<br>2: Valid during running, cleared after receiving the<br>stop command<br>LED thousands:∧/∨keys and digital|0x0000|○|



-78- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||potentiometer integral function<br>0: The integral function is valid<br>1: The integral function is invalid|||
|P08.43|Integral ratio of<br>the keypad<br>potentiometer|<br>0.01–10.00s|0.10s|○|
|P08.44|UP/DOWN<br>terminals<br>control|0x00–0x221<br>LED ones: frequency control selection<br>0: UP/DOWN terminals setting valid<br>1: UP/DOWN terminals setting valid<br>LED tens: frequency control selection<br>0: Only valid whenP00.06=0 orP00.07=0<br>1: All frequency means are valid<br>2: When the multi-step are priority, it is invalid to<br>the multi-step<br>LED hundreds: action selection when stop<br>0: Setting valid<br>1: Valid in the running, clear after stop<br>2: Valid in the running, clear after receiving the<br>stopcommands|0x000|○|
|P08.45|UP terminals<br>frequency<br>incremental<br>change rate|0.01–50.00Hz/s|0.50<br>Hz/s|○|
|P08.46|DOWN<br>terminals<br>frequency<br>incremental<br>change rate|0.01–50.00 Hz/s|0.50<br>Hz/s|○|
|P08.47|Action when<br>the frequency<br>setting is off|0x000–0x111<br>LED ones: Action selection when power off.<br>0: Save when power off<br>1: Clear when power off<br>LED tens: Action selection when MODBUS set<br>frequency off<br>0: Save when power off<br>1: Clear when power off<br>LED hundreds: The action selection when other<br>frequencyset frequencyoff|0x000|○|



-79- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||0: Save when power off<br>1: Clear whenpower off|||
|P08.48|High bit of initial<br>power<br>consumption|<br>This parameter is used to set the original value of<br>the power consumption.<br>The original value of the power consumption|0|○|
|P08.49|Low bit of initial<br>power<br>consumption|=P08.48*1000+P08.49(kWh)<br>Setting range ofP08.48: 0–59999 <br>Settingrange ofP08.49: 0.0–999.9<br>|0.0|○|
|P08.50|Magnetic flux<br>braking|This function code is used to enable magnetic flux.<br>0: Invalid.<br>100–150: The bigger the coefficient, the stronger<br>the braking is.<br>This VFD is used to increase the magnetic flux to<br>decelerate the motor. The energy generated by<br>the motor during braking can be converted into<br>heat energy by increasing the magnetic flux.<br>The VFD monitors the state of the motor<br>continuously even during the magnetic flux period.<br>So the magnetic flux can be used in the motor<br>stop, as well as to change the rotation speed of<br>the motor. Its other advantages are:<br>Brake immediately after the stop command. It<br>does not need to wait the magnetic flux weaken.<br>Better cooling for motors. The current of the stator<br>other than the rotor increases during magnetic flux<br>braking, while the cooling of the stator is more<br>effective than the rotor.|0|●|
|P08.51|Current<br>regulation<br>coefficient on<br>input side|This function code is used to adjust the displayed<br>current of the AC input side.<br>Setting range: 0.00–1.00|0.56|○|



|**P09 Group PID control**|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P09.00|PID reference<br>source|When the frequency command selection (P00.06,<br>P00.07) is 7 or the voltage setting channel<br>selection (P04.27) is 6, the running mode of the<br>VFD isprocedure PID controlled.|0|○|



-80- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||The parameter determines the target reference<br>channel during the PID procures.<br>0: Keypad digital reference (P09.01)<br>1: Analog channel AI1 reference (implemented<br>through the analog potentiometer on the keypad<br>for the 0150G/018P and lower models; not<br>available for the 018G/022P and higher models.)<br>2: Analog channel AI2 reference<br>3: Analog channel AI3 set<br>4: High speed pulse HDI set<br>5: Multi-step speed set<br>6: MODBUS communication set<br>The setting target of procedure PID is a relative<br>one, 100% of the setting equals to 100% of the<br>response of the controlled system.<br>The system is calculated according to the relative<br>value (0–100.0%).<br>**Note:**<br>Multi-step speed reference, it is realized by setting<br>P10group parameters.|||
|P09.01|Keypad PID<br>preset|WhenP09.00=0, set the parameter whose basic<br>value is the feedback value of the system.<br>The settingrange: -100.0%–100.0%|0.0%|○|
|P09.02|PID feedback<br>source|Select the PID channel by the parameter.<br>0: Analog channel AI1 feedback (implemented<br>through the analog potentiometer on the keypad<br>for the 0150G/018P and lower models; not<br>available for the 018G/022P and higher models.)<br>1: Analog channel AI2 feedback<br>2: Analog channel AI3 feedback<br>3: High speed HDI feedback<br>4: MODBUS communication feedback<br>5: MAX(AI2,AI3)<br>**Note:**The reference channel and the feedback<br>channel cannot coincide, otherwise, PID cannot<br>control effectively.|0|○|



-81- 

|GD200A s<br>**Function**<br>**code**|eries VFD<br> <br>**Name**|**Description**|Function<br>**Default**<br>**value**|parameters<br>**Modify**|
|---|---|---|---|---|
|P09.03|PID output<br>feature|0: PID output is positive: When the feedback<br>signal exceeds the PID reference value, the<br>output frequency of the VFD will decrease to<br>balance the PID. For example, the strain PID<br>control during wrap-up<br>1: PID output is negative: When the feedback<br>signal is stronger than the PID reference value,<br>the output frequency of the VFD will increase to<br>balance the PID. For example, the strain PID<br>control during wrap-down|0|○|
|P09.04|Proportional<br>gain (Kp)|The function is applied to the proportional gain P<br>of PID input.<br>P determines the strength of the whole PID<br>adjuster. The parameter of 100 means that when<br>the offset of PID feedback and reference value is<br>100%, the adjusting range of PID adjustor is the<br>max. frequency (ignoring integral function and<br>differential function).<br>The settingrange: 0.00–100.00|1.00|○|
|P09.05|Integral time<br>(Ti)|This parameter determines the speed of PID<br>adjustor to carry out integral adjustment on the<br>deviation of PID feedback and reference.<br>When the deviation of PID feedback and<br>reference is 100%, the integral adjustor works<br>continuously after the time (ignoring the<br>proportional effect and differential effect) to<br>achieve the max. frequency (P00.03) or the max.<br>voltage (P04.31). Shorter the integral time,<br>stronger is the adjustment<br>Settingrange: 0.01–10.00s|0.10s|○|
|P09.06|Differential time<br>(Td)|<br>This parameter determines the strength of the<br>change ratio when PID adjustor carries out<br>integral adjustment on the deviation of PID<br>feedback and reference.<br>If the PID feedback changes 100% during the<br>time, the adjustment of integral adjustor (ignoring<br>the proportional effect and differential effect) is the<br>max. frequency (P00.03) or the max. voltage<br>(P04.31). Longer the integral time,stronger is the|0. 00s|○|



-82- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||adjusting.<br>Settingrange: 0.00–10.00s|||
|P09.07|Sampling cycle<br>(T)|<br>This parameter means the sampling cycle of the<br>feedback. The modulator calculates in each<br>sampling cycle. The longer the sapling cycle is,<br>the slower the response is.<br>Settingrange: 0.000–10.000s|0.100s|○|
|P09.08|PID control<br>deviation limit|The output of PID system is relative to the<br>maximum deviation of the close loop reference. As<br>shown in the diagram below, PID adjustor stops to<br>work during the deviation limit. Set the function<br>properly to adjust the accuracy and stability of the<br>system.<br> Output frequency<br>T<br>T<br>Feedback value<br>Bias limit<br>Reference value|0.0%|○|
|||Settingrange: 0.0–100.0%|||
|P09.09|Output upper<br>limit of PID|These parameters are used to set the upper and<br>lower limit of the PID adjustor output.|100.0%|○|
|P09.10|Output lower<br>limit of PID|100.0 % corresponds to max. frequency or the<br>max. voltage of (P04.31)<br>Setting range ofP09.09:P09.10–100.0%<br>Settingrange ofP09.10: -100.0%–P09.09|0.0%|○|
|P09.11|Feedback<br>offline detection<br>value|<br>Set the PID feedback offline detection value, when<br>the detection value is smaller than or equal to the<br>feedback offline detection value, and the lasting|0.0%|○|
|P09.12|Feedback<br>offline detection<br>time|time exceeds the set value inP09.12, the VFD will<br>report "PID feedback offline fault" and the keypad<br>will displayPIDE.<br>|1.0s|○|



-83- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|
||T<br>Output frequency<br>t1<br>t2<br>P09.11<br>T1＜T2, so the VFD<br>continues to work<br>t2=P09.12<br>Running<br>Fault output PIDE<br>PIDE<br>Setting range ofP09.11: 0.0–100.0%<br>Settingrange ofP09.12: 0.0–3600.0s|||
|P09.13<br>PID adjustment|<br>0x0000–0x1111<br>LED ones:<br>0: Keep on integral adjustment when the<br>frequency achieves the upper and low limit; the<br>integration shows the change between the<br>reference and the feedback unless it reaches the<br>internal integral limit. When the trend between the<br>reference and the feedback changes, it needs<br>more time to offset the impact of continuous<br>working and the integration will change with the<br>trend.<br>1: Stop integral adjustment when the frequency<br>achieves the upper and low limit. If the integration<br>keeps stable, and the trend between the reference<br>and the feedback changes, the integration will<br>change with the trend quickly.<br>LED tens: P00.08 is 0<br>0: The same with the setting direction; if the output<br>of PID adjustment is different from the current<br>running direction, the internal will output 0<br>forcedly.<br>1: Opposite to the setting direction<br>LED hundreds: P00.08 is 0<br>0: Limit to the maximum frequency<br>1: Limit to frequency A<br>LED thousands:<br>0: A+B frequency, the buffer of A frequency is<br>invalid<br>1: A+B frequency, the buffer of A frequency is<br>valid<br>ACC/DEC is determined byACC time 4 ofP08.04.|0x0001|○|



-84- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P09.14|Proportional<br>gain at low<br>frequency (Kp)|0.00–100.00|1.00|○|
|P09.15|PID command<br>of ACC/DEC<br>time|0.0–1000.0s|0.0s|○|
|P09.16|PID output filter<br>time|<br>0.000–10.000s|0.000s|○|



###### **P10 Group Simple PLC and multi-step speed control** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P10.00|Simple PLC|0: Stop after running once. The VFD has to be<br>commanded again after finishing a cycle.<br>1: Run at the final value after running once. After<br>finish a signal, the VFD will keep the running<br>frequency and direction of the last run.<br>2: Cycle running. The VFD will keep on running<br>until receiving a stop command and then, the<br>ill|0|○|
|||system w stop.|||
|P10.01|Simple PLC<br>memory|0: Power loss without memory<br>1: Power loss memory; PLC record the running<br>stepand frequencywhenpower loss.|0|○|
|P10.02|Multi-step<br>speed 0|100.0% of the frequency setting corresponds to<br>the max frequency P0003|0.0%|○|
|P10.03|Running time of<br>step0|.  ..<br>When selecting simple PLC running, set<br>P10.02–P10.33to define the running frequency<br>|0.0s|○|
|P10.04|Multi-step<br>speed 1|<br>and direction of all steps.<br>**Note:**The symbol of multi-step determines the|0.0%|○|
|P10.05|Running time of<br>step1|<br>running direction of simple PLC. The negative<br>value means reverse rotation<br>|0.0s|○|
|P10.06|Multi-step<br>speed 2|.<br>P10.04<br>DEC time<br>2 stages<br>P10.30<br>P10.28|0.0%|○|
|P10.07|Running time of<br>step2|P10.02<br>P10.32<br>|0.0s|○|
|P10.08|Multi-step<br>speed 3|P10.06<br>ACC time<br>2 stages|0.0%|○|
|P10.09|Running time of<br>step3|P10.03<br>P10.05<br>P10.07<br>P10.31<br>P10.33<br>Multi-step speeds are in the range of --f–f<br>|0.0s|○|
|P10.10|Multi-step<br>speed 4|maxmax<br>and it can be set continuously.|0.0%|○|



-85- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P10.11|Running time of<br>step4|<br>Goodrive200A series VFDs can set 16 steps<br>speed, selected by the combination of multi-step|0.0s|○|
|P10.12|Multi-step<br>speed 5|terminals 1–4, corresponding to the speed 0 to<br>speed 15.|0.0%|○|
|P10.13|Running time of<br>step5|Output frequency<br>|0.0s|○|
|P10.14|Multi-step<br>speed 6||0.0%|○|
|P10.15|Running time of<br>step6|Terminal 1<br>16<br>|0.0s|○|
|P10.16|Multi-step<br>|()<br>Terminal 2<br>(17)|0.0%|○|
||speed 7||||
|P10.17|Running time of<br>step7|Terminal 3<br>(18)<br>Terminal 4<br>(19)<br>|0.0s|○|
|P10.18|Multi-step<br>speed 8|When terminal1= terminal 2= terminal 3= terminal<br>|0.0%|○|
|||4=OFF the frequency input manner is selected via|||
|P10.19|Running time of<br>step8|,<br>codeP00.06orP00.07. When all terminals aren’t<br>off, it runs at multi-step which takes precedence of<br>|0.0s|○|
|P10.20|Multi-step<br>speed 9|<br>keypad, analog value, high-speed pulse, PLC,<br>communication freuenc inut Select at most 16|0.0%|○|
|P10.21|Running time of<br>step9|qy p.<br>steps speed via the combination code of terminal<br>1 terminal 2 terminal 3 and terminal 4<br>|0.0s|○|
|P10.22|Multi-step<br>speed 10|,  ,  ,   .<br>The start and stopping of multi-step running is<br>|0.0%|○|
|P10.23|Running time of<br>step10|determined by function codeP00.06, the<br>relationship between<br> <br>|0.0s|○|
|P10.24|Multi-step<br>speed 11|terminal 1 (16), terminal 2 (17), terminal 3 (18),<br>terminal 4 (19) and multi-step speed is as|0.0%|○|
||Running time of|following:|||
|P10.25|<br>step11|Trminal 1<br>OFF<br>ON<br>OFF<br>ON<br>OFF<br>ON<br>OFF<br>ON|0.0s|○|
|||Terminal 2<br>OFF<br>OFF<br>ON<br>ON<br>OFF<br>OFF<br>ON<br>ON|||
|P10.26|Multi-step<br>speed 12|<br> <br> <br> <br> <br> <br> <br> <br> <br>Terminal 3<br>OFF<br>OFF<br>OFF<br>OFF<br>ON<br>ON<br>ON<br>ON|0.0%|○|
|P10.27|Running time of<br>step12|Terminal 4<br>OFF<br>OFF<br>OFF<br>OFF<br>OFF<br>OFF<br>OFF<br>OFF<br>Step<br>0<br>1<br>2<br>3<br>4<br>5<br>6<br>7<br>|0.0s|○|
||Multi-step|Terminal 1<br>OFF<br>ON<br>OFF<br>ON<br>OFF<br>ON<br>OFF<br>ON|||
|P10.28|<br>speed 13|Terminal 2<br>OFF<br>OFF<br>ON<br>ON<br>OFF<br>OFF<br>ON<br>ON|0.0%|○|
|P10.29|Running time of<br>|Terminal 3<br>OFF<br>OFF<br>OFF<br>OFF<br>ON<br>ON<br>ON<br>ON<br>|0.0s|○|
||step13|Terminal 4<br>ON<br>ON<br>ON<br>ON<br>ON<br>ON<br>ON<br>ON|||
|P10.30|Multi-step<br>speed 14|Step<br>8<br>9<br>10<br>11<br>12<br>13<br>14<br>15|0.0%|○|



-86- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Des**|**criptio**|**n**||**Default**<br>**value**|**Modify**|
|---|---|---|---|---|---|---|---|
|P10.31|Running time of<br>step14|<br>Setting range of P10.(2<br>Setting range of P10.(2|n,1<n<br>n+1,1|<17): -100.0–1<br><n<17):|00.0%|0.0s|○|
|P10.32|Multi-step<br>speed 15|0.0–6553.5s(min)||||0.0%|○|
|P10.33|Running time of<br>step15|||||0.0s|○|
||Simple PLC|Below is the detailed in|structi|on:||||
|P10.34|0–7 step|**Function**<br>**Binar bit**<br>**Ste**<br>|**ACC/DEC**|<br>**ACC/DEC**<br>**ACC/DEC**<br>|**ACC/DEC**|0x0000|○|
|||**code**<br>**y**<br>**p**|**0**|**1**<br>**2**|**3**|||
||ACC/DEC time|||<br>||||
|||BIT1<br>BIT0<br>0|00|01<br>10|11|||
|||BIT3<br>BIT2<br>1|00|01<br>10|11|||
|||BIT5<br>BIT4<br>2|00|01<br>10|11|||
|||BIT7<br>BIT6<br>3|00|01<br>10|11|||
|||P10.34<br>BIT9<br>BIT8<br>4|00|01<br>10|11|||
|||BIT11<br>BIT10<br>5|00|01<br>10|11|||
|||BIT13<br>BIT12<br>6|00|01<br>10|11|||
|||BIT15<br>BIT14<br>7|00|01<br>10|11|||
|||BIT1<br>BIT0<br>8|00|01<br>10|11|||
||Simple PLC|BIT3<br>BIT2<br>9|00|01<br>10|11|||
|||BIT5<br>BIT4<br>10|00|01<br>10|11|||
|P10.35|8–15 step<br>|<br>BIT7<br>BIT6<br>11|<br>00|<br> <br>01<br>10|11|0x0000|○|
||ACC/DEC time|P10.35<br>BIT9<br>BIT8<br>12|00|01<br>10|11|||
|||BIT11<br>BIT10<br>13|00|01<br>10|11|||
|||BIT13<br>BIT12<br>14|00|01<br>10|11|||
|||BIT15<br>BIT14<br>15|00|01<br>10|11|||
|||After the users select t<br>ACC/DEC time, the co<br>change into decimal bit<br>corresponding function<br>|he corr<br>mbined<br>, and t<br>codes<br>|esponding<br>16 binary bits<br>hen set the<br>.<br>|will|||
|||Settingrange: 0x0000–|0xFF|F||||
|P10.36|PLC restart|0: Restart from the first<br>(cause by the stop com<br>run from the first step a<br>1: Continue to run from<br>during running (cause<br>fault), the VFD will reco<br>automatically, enter int<br>keep the remaining run<br>frequency.|step;<br>mand,<br>fter re<br>the st<br>by stop<br>rd the<br>o the s<br>ning a|stop during run<br>fault or power<br>start.<br>op frequency;<br>command an<br>running time<br>tep after resta<br>t the setting|ning<br>loss),<br>stop<br>d<br>rt and|0|◎|



-87- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P10.37|Multi-step time<br>unit|0: Seconds; the running time of all steps is<br>counted by second<br>1: Minutes; the running time of all steps is counted<br>byminute|0|◎|



###### **P11 Group Protective parameters** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P11.00|Phase loss<br>protection|0x00–0x11<br>LED ones:<br>0: Input phase loss protection disable<br>1: Input phase loss protection enable<br>LED tens:<br>0: Output phase loss protection disable<br>1: Output phase loss protection enable<br>LED hundreds:<br>0: Input phase loss hardware protection disable<br>1: Inputphase loss hardwareprotection enable|111|○|
|P11.01|Sudden power<br>loss frequency<br>decrease|0: Disable<br>1: Enable|0|○|
||Frequency<br>|Setting range: 0.00Hz/s–P00.03 (max. frequency)<br>After the power loss of the grid, the bus voltage<br>drops to the sudden frequency-decreasing point,<br>the VFD begin to decrease the running frequency<br>atP11.02, to make the VFD generate power<br>again. The returning power can maintain the bus<br>voltage to ensure a rated running of the VFD until<br>power recovery.|||
|P11.02|decrease ratio<br>of sudden<br>power loss|**Voltage degree**<br>**220V**<br>**380V**<br>**660V**<br>Frequency decrease point<br>at suddenpower loss<br>260V<br>460V<br>800V<br>**Note:**<br>1. Adjust the parameter properly to avoid the<br>stopping caused by VFD protection during the<br>switching of the grid.<br>2. Disable input phase loss protection to enable<br>this function.|10.00<br>Hz/s|○|



-88- 

Function parameters 

|GD200A s<br>**Function**<br>**code**|eries VFD<br> <br>**Name**|**Description**|Function<br>**Default**<br>**value**|parameters<br>**Modify**|
|---|---|---|---|---|
|P11.03|Overvoltage<br>stall protection|0: Disable<br>1: Enable<br>DC bus voltage<br>Overvoltage stall<br>point<br>Output frequency|1|○|
||Protection<br>voltage at|120–150%(standard bus voltage) (380V)|136%||
|P11.04|overvoltage<br>stall|120–150%(standard bus voltage) (220V)|120%|○|
|P11.05|Current limit<br>action selection|<br>The actual increasing ratio is less than the ratio of<br>output frequency because of the big load during|01|◎|
|P11.06|Automatic<br>current limit|ACC running. It is necessary to take measures to<br>avoid overcurrent fault and the VFD trips.<br>During the running of the VFD, this function will<br>detect the output current and compare it with the|G type:<br>160.0%<br>P type:<br>120.0%|<br>◎<br>|
|P11.07|The decreasing<br>ratio during<br>current limit|limit defined inP11.06. If it exceeds the level, the<br>VFD will run at stable frequency in ACC running,<br>or the VFD will derate to run during the constant<br>running. If it exceeds the level continuously, the<br>output frequency will keep on decreasing to the<br>lower limit. If the output current is detected to be<br>lower than the limit level, the VFD will accelerate<br>to run.<br>Output frequency<br>Output current<br>Limiting<br>point<br>Setting<br>frequency<br>ACC<br>Constant<br>speed<br>T<br>T<br>Setting range ofP11.05:<br>0x00–0x11<br>LED ones: current limit<br>0: Invalid<br>1: Always valid<br>LED tens: overload alarm<br>|10.00<br>Hz/s|◎|



-89- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||0: Valid<br>1: Invalid<br>Setting range ofP11.06: 50.0–200.0%<br>Settingrange ofP11.07: 0.00–50.00Hz/s|||
|P11.08|Overload<br>pre-alarm of<br>the motor/VFD|The output current of the VFD or the motor is<br>aboveP11.09and the lasting time is beyond<br>P11.10, overload pre-alarm will be output.|0x000|○|
|P11.09|Overload<br>pre-alarm test<br>level|Output current<br>Overload<br>pre-alarm<br>point<br>T|G type:<br>150%<br>P type:<br>120%|○|
|P11.10|Overload<br>pre-alarm<br>detection time|T<br>Y,<br>RO1, RO2<br>Pre-alarm<br>time<br>Pre-alarm<br>time<br>Setting range ofP11.08:<br>Enable and define the overload pre-alarm of the<br>VFD or the motor.<br>LED ones:<br>0: Overload pre-alarm of the motor, comply with<br>the rated current of the motor<br>1: Overload pre-alarm of the VFD, comply with the<br>rated current of the VFD<br>LED tens:<br>0: The VFD continues to work after underload<br>pre-alarm<br>1: The VFD continues to work after underload<br>pre-alarm and the VFD stops running after<br>overload fault<br>2: The VFD continues to work after overload<br>pre-alarm and the VFD stops running after<br>underload fault<br>3. The VFD stops when overload or underload.<br>LED hundreds :<br>0: Detection all the time<br>1: Detection in constant running<br>LED thousands: Overload integral selection<br>0: Overload integral is invalid|0x0000|○|



-90- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||1: Overload integral is valid<br>Settingrange: 0000–1131|||
|P11.11|Detection level<br>of underload<br>pre-alarm|If the VFD current or the output current is lower<br>thanP11.11, and its lasting time is beyond<br>|50%|○|
|P11.12|Detection time<br>of underload<br>pre-alarm|P11.12, the VFD will output underload pre-alarm.<br>Setting range ofP11.11: 0–P11.09<br>Setting range ofP11.12: 0.1–3600.0s|1.0s|○|
|P11.13|Output terminal<br>action during<br>fault|<br>Select the action of fault output terminals on<br>undervoltage and fault reset.<br>0x00–0x11<br>LED ones:<br>0: Action under fault undervoltage<br>1: No action under fault undervoltage<br>LED tens:<br>0: Action during the automatic reset<br>1: No action duringthe automatic reset|0x00|○|
|P11.16|Extension<br>functions<br>selection|0x00–0x11<br>LED ones: Voltage drop frequency-decreasing<br>selection<br>0: Voltage drop frequency-decreasing selection<br>disable<br>1: Voltage drop frequency-decreasing selection<br>enable<br>LED tens: Step 2 ACC/DEC time option<br>0: Step 2 ACC/DEC time option disable<br>1: Step 2 ACC/DEC time option enable，when<br>running frequency more thanP08.36, ACC/DEC<br>time switch to step2 ACC/DEC time|00|○|



###### **P13 Group Enhanced function parameters** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P13.13|Braking current<br>of short-circuit|<br>WhenP01.00=0 during the starting of the VFD, set<br>P13.14to a non-zero value to enter the short|0.0%|○|
|P13.14|Braking<br>retention time<br>before starting|circuit braking.<br>When the running frequency is lower thanP01.09<br>during the stopping of the VFD, setP13.15to a|0.00s|○|
|P13.15|Braking<br>retention time<br>when stopping|non-zero value to enter into stopping short<br>circuited braking and then carry out the DC<br>braking at the time set byP01.12(refer to the<br>instruction ofP01.09–P01.12).|0.00s|○|



-91- 

GD200A series VFD 

|GD200A series VFD|Functionparameters|
|---|---|
|Setting range ofP13.13: 0.0–150.0% (the VFD)||
|Setting range ofP13.14: 0.00–50.00s||
|Settingrange ofP13.15: 0.00–50.00s||



###### **P14 Group Serial communication** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P14.00|Local<br>communication<br>address|<br>The setting range: 1–247<br>When the master is writing the frame, the<br>communication address of the slave is set to 0; the<br>broadcast address is the communication address.<br>All slaves on the MODBUS fieldbus can receive<br>the frame, but the salve doesn’t answer.<br>The communication address of the drive is unique<br>in the communication net. This is the fundamental<br>for the point to point communication between the<br>upper monitor and the drive.<br>**Note:**The address of the slave cannot set to 0.|1|○|
|P14.01|Communication<br>baud ratio|<br>Set the digital transmission speed between the<br>upper monitor and the VFD.<br>0: 1200BPS<br>1: 2400BPS<br>2: 4800BPS<br>3: 9600BPS<br>4: 19200BPS<br>5: 38400BPS<br>6: 57600BPS<br>7: 115200BPS<br>**Note:**The baud rate between the upper monitor<br>and the VFD must be the same. Otherwise, the<br>communication is not applied. The bigger the<br>baud rate,thequicker the communication speed.|4|○|
|P14.02|Digital bit<br>checkout|The data format between the upper monitor and<br>the VFD must be the same. Otherwise, the<br>communication is not applied.<br>0: No check (N,8,1) for RTU<br>1: Even check (E,8,1) for RTU<br>2: Odd check (O,8,1) for RTU<br>3: No check (N,8,2) for RTU<br>4: Even check (E,8,2) for RTU<br>5: Odd check(O,8,2) for RTU<br>6: No check(N,7,1)for ASCII|1|○|



-92- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||7: Even check (E,7,1) for ASCII<br>8: Odd check (O,7,1) for ASCII<br>9: No check (N,7,2) for ASCII<br>10: Even check (E,7,2) for ASCII<br>11: Odd check (O,7,2) for ASCII<br>12: No check (N,8,1) for ASCII<br>13: Even check (E,8,1) for ASCII<br>14: Odd check (O,8,1) for ASCII<br>15: No check (N,8,2) for ASCII<br>16: Even check (E,8,2) for ASCII<br>17: Odd check(O,8,2)for ASCII|||
|P14.03|Response<br>delay|0–200ms<br>It means the interval time between the interval<br>time when the drive receive the data and sent it to<br>the upper monitor. If the answer delay is shorter<br>than the system processing time, then the answer<br>delay time is the system processing time, if the<br>answer delay is longer than the system processing<br>time, then after the system deal with the data,<br>waits until achieving the answer delay time to<br>send the data to the upper monitor.|5|○|
|P14.04|Fault time of<br>communication<br>overtime|<br>0.0 (invalid), 0.1–60.0s<br>When the function code is set as 0.0, the<br>communication overtime parameter is invalid.<br>When the function code is set as non-zero, if the<br>interval time between two communications<br>exceeds the communication overtime, the system<br>will report "485 communication faults" (CE).<br>Generally, set it as invalid; set the parameter in<br>the continuous communication to monitor the<br>communication state.|0.0s|○|
|P14.05|Transmission<br>fault processing|0: Alarm and stop freely<br>1: No alarm and continue to run<br>2: No alarm and stop according to the stop means<br>(only under the communication control)<br>3: No alarm and stop according to the stop means<br>(under all control modes)|0|○|
|P14.06|Communication<br>processing|<br>LED ones place:<br>0: Operation with response: the drive will respond|0x00|○|



-93- 

GD200A series VFD 

|Functionparameters|
|---|



|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||to all reading and writing commands of the upper<br>monitor.<br>1: Operation without response; The drive only<br>responds to the reading command other than the<br>writing command of the drive. The communication<br>efficiency can be increased by this method.<br>LED tens place:<br>0: Communication encrypting invalid<br>1: Communication encrypting valid<br>LED hundreds place, indicating RS485<br>communication device type<br>0: GD200A<br>1: GD200A user-defined address<br>2: CHF100A<br>Note: When the LED hundreds place is 1, P14.07<br>and P14.08 are valid.|||
|P14.07|User-defined<br>address of<br>running<br>commands|0x0000–0xffff|0x1000|○|
|P14.08|User-defined<br>address of<br>frequency<br>setting|0x0000–0xffff|0x2000|○|



###### **P17 Group Monitoring function** 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P17.00|Setting<br>frequency|Display current set frequency of the VFD<br>Range: 0.00Hz–P00.03|/|●|
|P17.01|Output<br>frequency|Display current output frequency of the VFD<br>Range: 0.00Hz–P00.03|/|●|
|P17.02|Ramp<br>reference<br>frequency|Display current ramp reference frequency of the<br>VFD<br>Range: 0.00Hz–P00.03|/|●|
|P17.03|Output voltage|Display current output voltage of the VFD<br>Range: 0–1200V|/|●|
|P17.04|Output current|Display current output current of the VFD<br>Range: 0.0–3000.0A|/|●|



-94- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P17.05|Motor speed|Display the rotation speed of the motor.<br>Range: 0–65535RPM|/|●|
|P17.08|Motor power|Display current motor power<br>Range: -300–300%|/|●|
|P17.09|Output torque|Display the current output torque of the VFD.<br>Range: -250.0–250.0%|/|●|
|P17.10|Evaluated<br>motor<br>frequency|Evaluated frequency of motor rotor<br>Range: 0.00Hz–P00.03|/|●|
|P17.11|DC bus voltage|<br>Display current DC bus voltage of the VFD<br>Range: 0.0–2000.0V|/|●|
|||Display current Switch input terminals state of the<br>VFD<br>Range: 0000–00FF|||
|P17.12|ON-OFF input<br>|BIT8<br>BIT7<br>BIT6<br>BIT5|/|●|
||terminals state|HDI<br>S8<br>S7<br>S6|||
|||BIT4<br>BIT3<br>BIT2<br>BIT1<br>BIT0|||
|||S5<br>S4<br>S3<br>S2<br>S1|||
||ON-OFF outut|<br>Display current Switch output terminals state of<br>the VFD|||
|P17.13|p<br>il|<br>BIT3<br>BIT2<br>BIT1<br>BIT0|/|●|
||termnas state|RO2<br>RO1<br>HDO<br>Y|||
|||Range: 0000–000F|||
|P17.14|Digital<br>adjustment|Display the adjustment through the keypad of the<br>VFD.<br>Range : 0.00Hz–P00.03|/|●|
|P17.15|Torque<br>reference|Display the torque given, the percentage to the<br>current rated torque of the motor.<br>Setting range: -300.0%–300.0%<br>(motor rated current)|/|●|
|P17.16|Linear speed|<br>Display the current linear speed of the VFD.<br>Range: 0–65535|/|●|
|P17.17|Length|Display the current length of the VFD.<br>Range: 0–65535|/|●|
|P17.18|Counting value|Display the current counting number of the VFD.<br>Range: 0–65535|/|●|
|P17.19|AI1 input<br>voltage|It is implemented through the analog<br>potentiometer on the keypad for the 0150G/018P<br>and lower models;not available for the|/|●|



-95- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||018G/022P and higher models.<br>Display analog AI1 input signal<br>Range: 0.00–10.00V|||
|P17.20|AI2 input<br>voltage|Display analog AI2 input signal<br>Range: 0.00–10.00V|/|●|
|P17.21|AI3 input<br>voltage|Display analog AI2 input signal<br>Range: -10.00–10.00V|/|●|
|P17.22|HDI input<br>frequency|Display HDI input frequency<br>Range: 0.000–50.000kHz|/|●|
|P17.23|PID reference<br>value|Display PID reference value<br>Range: -100.0–100.0%|/|●|
|P17.24|PID feedback<br>value|Display PID response value<br>Range: -100.0–100.0%|/|●|
|P17.25|Power factor of<br>the motor|<br>Display the current power factor of the motor.<br>Range: -1.00–1.00|/|●|
|P17.26|Current running<br>time|<br>Display the current running time of the VFD.<br>Range: 0–65535min|/|●|
|P17.27|Simple PLC<br>and the current<br>step of<br>multi-step<br>speed|<br>Display simple PLC and the current step of the<br>multi-step speed<br>Range: 0–15|/|●|
|P17.35|AC input<br>current|Display the input current in AC side.<br>Range: 0.0–5000.0A|/|●|
|P17.36|Output torque|Display the output torque. Positive value is in the<br>electromotion state, and negative is in the power<br>generating state.<br>Range: -3000.0Nm–3000.0Nm|/|●|
|P17.37|Counting of the<br>motor overload|<br>0–100 (100 is OL1 fault)|/|●|
|P17.38|PID output|-100.00–100.00%|0.00%|●|
|P17.39|Wrong<br>download of<br>parameters|0.00–99.99|0.00|●|



###### **P24 Group Water supply** 

|**Function**<br>**code**|<br>**Name**||**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|---|
|P24.00|Water supply<br>selection|0: Disabled<br>1: Enabled||0|◎|



-96- 

|GD200A s|eries VFD||Function|parameters|
|---|---|---|---|---|
|**Function**<br>**code**|<br>**Name**|**Description**|**Default**<br>**value**|**Modify**|
|P24.01|Press feedback<br>source|<br>0: AI1 setting value (implemented through the<br>analog potentiometer on the keypad for the<br>0150G/018P and lower models; not available for<br>the 018G/022P and higher models.)<br>1: AI2 setting value<br>2: AI3 setting value<br>3: HDI settingvalue|0|○|
|P24.02|Hibernation<br>check|0: Hibernate as the setting frequency﹤P24.03<br>1: Hibernate as the feedbackpressure﹥P24.04|0|◎|
|P24.03|Starting<br>frequency of<br>the hibernation|0.00–P00.03(the max. frequency)|10.00<br>Hz|○|
|P24.04|Starting<br>pressure of<br>hibernation|0.00–100.0%|50.0%|○|
|P24.05|Hibernation<br>delaytime|0.0–3600.0s|5.0s|○|
|P24.06|Hibernation<br>awake|0: Awake as the setting frequency﹥P24.07<br>1: Awake as the feedbackpressure﹤P24.08|0|◎|
|P24.07|Awake<br>frequency|0.00–P00.03(the max. frequency)|20.00<br>Hz|○|
|P24.08|Setting value of<br>hibernation<br>awake|<br>0.00–100.0%|10.0%|○|
|P24.09|Min.<br>hibernation<br>time|0.0–3600.0s|5.0s|○|
|P24.10|Valid auxiliary<br>motor||0|○|
||Start/stop delay||||
|P24.11|time of auxiliary<br>motor 1|P24.10–P24.12can make three motors to form a<br>simple system of water supply.<br>|5.0s|○|
||Start/stop delay||||
|P24.12|time of auxiliary<br>motor 2||5.0s|○|



-97- 

GD200A series VFD 

Function parameters 

|**Function**<br>**code**|**Name**|**Description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|||Output frequency<br>of the motor<br>=the upper<br>frequency ?<br>Aauxiliary motor start ,<br>begin delay counting<br>Y<br>Reach the<br>start delay<br>time<br>Start the auxiliary<br>motor 1 and 2<br>=the lower<br>frequency ?<br>N<br>Y<br>Aauxiliary motor stop ,<br>begin delay counting<br>Reach the<br>stop delay<br>time<br>Stop the auxiliary<br>motor 1 and 2<br>Y<br>Y<br>End<br>N<br>N<br>N|||
|||P24.10is used to select the valid auxiliary motor.<br>0: No auxiliary motor<br>1: Auxiliary motor 1 valid<br>2: Auxiliary motor 2 valid<br>3: Auxiliary motor 1 and 2 valid<br>Setting range ofP24.11: 0.0–3600.0s<br>Settingrange ofP24.12: 0.0–3600.0s|||



-98- 

e e e e fe} [e} fe} fe) e 6 Io oo Go ee ee 







GD200A series VFD 

Basic operation instruction 



<!-- Start of picture text -->
Start<br>Power on after right wiring<br>Restore to the factory<br>parameters (P00.18=1)<br>G/P selection(P00.17)<br>Set  P02.01~P02.05<br>Press QUICK/JOG to jog<br>If the rotation direction is<br>wrong, power off to change<br>the wires and repower on<br>Autotuning mode<br>P00.15=1 P00.15=2 P00.15=3<br>Press RUN to autotune<br>and then stop<br>Set (P00.01,P00.02)<br>Set running frequency<br>P00.00<br>P00.00=1 P00.00=2<br>Set P03 Set P04<br>Set P01<br>Run<br>Stop<br>End<br><!-- End of picture text -->

**Note:** If fault occurs, please do as the "Fault Tracking". Estimate the fault reason and settle the issue. 

-100- 

GD200A series VFD 

Basic operation instruction 

Besides P00.01 and P00.02, terminal command setting can also be used to set the running command channel. 

|**Current running**<br>**command**<br>**channel**<br>**P00.01**|**Multi-function**<br>**terminal 36**<br>**Shifting the**<br>**command to keypad**|**Multi-function**<br>**terminal 37**<br>**Shifting the**<br>**command to**<br>**communication**|**Multi-function terminal**<br>**38**<br>**Shifting the command**<br>**to communication**|
|---|---|---|---|
|Keypad running<br>command channel|/|Terminal running<br>command channel|Communication running<br>command channel|
|Terminal running<br>command channel|Keypad running<br>command channel|/|Communication running<br>command channel|
|Communication<br>running command<br>channel|Keypad running<br>command channel|Terminal running<br>command channel|/|



**Note: "/"** means the multi-function terminal is invalid on the current reference channel. 

###### **7.3 Vector control** 

Because asynchronous motors have the characteristics of high stage, nonlinear, strong coupling and various variables, the actual control of the asynchronous motor is very difficult. Vector control is mainly used to settle this problem with the theme of that divide the stator current vector into exciting current (the current heft generating internal magnetic field of the motor) and torque current (the current heft generating torque) by controlling and measuring the stator current vector according to the principles of beamed magnetic field to control the range and phase of these two hefts. This method can realize the decoupling of exciting current and torque current to adjust the high performance of asynchronous motors. 

Goodrive200A series VFDs are embedded speed sensor-less vector control calculation. Because the core calculation of vector control is based on exact motor parameter models, the accuracy of motor parameter will impact on the performance of vector control. It is recommended to input the motor parameters and carry out autotune before vector running. 

Because the vector control calculation is very complicated, high technical theory is needed for the user during internal autotune. It is recommended to use the specific function parameters in vector control with cautions. 

-101- 

GD200A series VFD 

Basic operation instruction 



<!-- Start of picture text -->
Rectifier<br>bridge<br>Calculation ExcitingACR Park PWM<br>current rmationTransfo Pulse Convertingbridge<br>Calculation ACR<br>Torque<br>current<br>Position<br>observing Voltage<br>detection<br>Flux<br>observing<br>Park Clark<br>Transfo Transfo Current<br>rmation rmation detection<br>Motor<br>Speed<br>detection<br><!-- End of picture text -->

###### **7.4 Torque control** 

Goodrive200A series VFDs support two kinds of control mode: torque control and rotation speed control. The core of rotation speed is that the whole control focuses on the stable speed and ensures the setting speed is the same as the actual running speed. The max. load should be in the range of the torque limit. The core of torque control is that the whole control focus on the stable torque and ensures the setting torque is the same as the actual output torque. At the same time, the output frequency is among the upper limit or the lower limit. 





<!-- Start of picture text -->
P00.00(speed control mode)<br>Speed control  2<br>1 Starting<br>invalid<br>Keypad setting torque P03.12 Keypad<br>AI1AI2AI3 0123 Torque control disabling Terminal function 29 Torque given filter time P03.13 Setting upper limit  Electromotion  Torque control limit  Output torque P17.09<br>Multi-stage speed MODBUSHDI 4567 Invalid Valid  Speed control  braking limit of torque Upper  Upper limit of the electromotion torque  Torque control<br>P17.15 P03.14<br>Torque setting method selection P03.11 Torque given  Braking  0 Keypad  P03.16<br>Keypad  P03.19 1 AI1<br>Braking torque upper limit keypad setting P03.21 AI1HDIAI2AI3 01234 234567 Multi-stage speed PROFIBUSMODBUS HDI AI2AI3<br>MODBUS 5 8 Erthernet<br>9 CAN<br>P03.18 P03.15<br>Keypad<br>P03.20 AI1 0 0 Keypad  P03.17<br>AI2 1 1 AI1<br>AI3 23 23 AI2AI3<br>HDI 4 4 HDI<br>MODBUS 5 5 Multi-stage speed<br>6 MODBUS<br><!-- End of picture text -->

-102- 

GD200A series VFD 

Basic operation instruction 

###### **7.5 Parameters of the motor** 

-  Physical accident may occur if the motor starts up suddenly during autotune. Please check the safety of surrounding environment of the motor and the load before autotune. 

-  The power is still applied even the motor stops running during static autotune. Please do not touch the motor until the autotune is completed, otherwise there would be electric shock. 

-  Do not carry out the rotation autotune if the motor is coupled with the load, please 

do not operate on the rotation autotune. Otherwise misacts or damage may occur to the VFD or the mechanical devices. When carry out autotune on the motor which is coupled with load, the motor parameter won’t be counted correctly and misacts may occur. It is proper to de-couple the motor from the load during autotune when necessary. 



<!-- Start of picture text -->
Ready<br>P00.01=0<br>P02.01~P02.05<br>P00.15<br>P00.15=1 P00.15=2 P00.15=3<br>Press “RUN” to begin<br>autotuning<br>Autotuning<br>Display“-END-”<br>End<br><!-- End of picture text -->

The control performance of the VFD is based on the established accurate motor model. The user has to carry out the motor autotune before first running (take motor 1 as the example). 

###### **Note:** 

1. Set the motor parameters according to the nameplate of the motor. 

2. During the motor autotune, de-couple the motor form the load if rotation autotune is selected to make the motor is in a static and empty state, otherwise the result of autotune is incorrect. The asynchronous motors can autotune the parameters of P02.06–P02.10. 

3. During the motor autotune 1, do not to de-couple the motor form the load if static autotune is selected. Because only some parameters of the motor are involved, the control performance is not as better as the rotation autotune. The asynchronous motors can autotune the parameters of P02.06–P02.10. 

-103- 

GD200A series VFD 

Basic operation instruction 

4. During the motor autotune 2, do not to de-couple the motor form the load if static autotune is selected. Because only some parameters of the motor are involved, the control performance is not as better as the rotation autotune. The asynchronous motors can autotune the parameters of P02.06 – P02.08. It is suitable in the cases which SVPWM control is applied. 

###### **7.6 Start and stop control** 

The start and stop control of the VFD includes three states: start after the running command during normal powering on, start after the restarting function becomes valid during normal powering on and start after the automatic fault reset. Below is the detailed instruction for three starting. 

There are three starting modes for the VFD: start from the starting frequency directly, start after the DC braking and start after the rotation speed tracking. The user can select according to different situations to meet their needs. 

For the load with big inertia, especially in the cases where the reverse rotation may occur, it is better to select starting after DC braking and then starting after rotation speed tracking. 

1. The starting logic figure of starting after the running command during the normal powering on: 



<!-- Start of picture text -->
Start directly<br>1f Linear ACC/DEC<br>P00.03<br>Starting running P01.00 The starting frequencyStart directly<br>The starting frequency The retention time 1t<br>0 Start after DC braking  0 P00.11 P00.12 1f<br>ACC time DEC time  Jumping  1/2*jumping range 3<br>Jogging running ？ N 1 ACC/DEC method selectionP01.05 frequency3Jumping  1/2*jumping range 21/2*jumping range 3<br>Y 2 The  braking current before starting  1 frequency 2Jumping  1/2*jumping range 11/2*jumping range 2<br>frequency1 1/2*jumping range 1<br>The braking time before starting  1t<br>Reserved<br>Start after rotation speed tracking<br>1f<br>P08.06<br>Jogging  frequency<br>1t<br>P08.07 P08.08<br>ACC time  DEC time<br>ACC DEC<br>ACC DEC<br><!-- End of picture text -->

2. The starting logic figure of starting after the restarting function becomes valid during the normal powering on: 



<!-- Start of picture text -->
Run<br>Stand  Run<br>by<br>0 Keypad  Running state  Stop<br>Restart  0 N before power off Stop<br>after<br>power off 1 Waiting time>P01.22 Y 2<br>Communication  N<br>P01.21 0<br>1 Terminal s Operation command is FWD/REV Y<br>valid or not 1<br>P00.01 Run<br>P01.18<br><!-- End of picture text -->

-104- 

GD200A series VFD 

Basic operation instruction 

###### 3. The starting logic figure of starting after the automatic fault reset: 



<!-- Start of picture text -->
In running<br>VFD fault<br>The fault reset times of the  N<br>VFD<P08.28<br>Y<br>The interval time of the fault  N<br>reset time of the VFD >P08.29<br>Y<br>Fault reset and the VFD  Display the fault code<br>starts to run. and the VFD stops<br><!-- End of picture text -->

###### **7.7 Frequency setting** 

Goodrive200A series VFDs can set the frequency by various means. The reference channel can be divided into main reference channel and assistant reference channel. 

There are two main reference channels: A frequency reference channel and B frequency reference channel. These two reference channels can carry out mutual simple math calculation between each other. And the reference channels can be shifted dynamically through set multi- function terminals. 

There are three assistant reference channels: keypad UP/DOWN input, terminals UP/DOWN switch input and digital potentiometer input. The three ways equal to the effect of input UP/DOWN reference in internal assistant reference of the VFD. The user can enable the reference method and the effect of the method to the frequency reference by setting function codes. 

The actual reference of the VFD is consisted of main reference channel and assistant reference channel. 

-105- 

GD200A series VFD 

Basic operation instruction 



<!-- Start of picture text -->
P00.10 Keypad<br>P00.06<br>Keypad setting frequency  (A frequency command selection)<br>AI1<br>0<br>AI2<br>1<br>AI3 2<br>3<br>HDI<br>4 P17.00Setting  Ramp given P17.02<br>Simple PLC 5 frequency frequency<br>6<br>Multi-stage speed<br>7 A<br>PID 8 B 0 P00.04 (the upper limit of the running frequency)<br>MODBUS 1<br>A+B 2 +<br>3<br>A-B 4 +<br>A frequency<br>command Max （ A ， B ） 5 P00.05 (the lower limit of the running<br>frequency)<br>P00.09<br>Min （ A ， B ） (the setting source combination)<br>P00.10 Keypad<br>P00.07 1<br>Keypad setting frequency  （ B frequency command selection ）<br>AI1 0<br>   P00.03<br>AI2 0 (the Max. output frequency)<br>1<br>AI3 2 P00.08 (B frequency command reference<br>selection)<br>3<br>HDI<br>4<br>Simple PLC 5<br>6<br>Multi-stage speed<br>7<br>PID 8<br>MODBUS<br>Frequency increasing/decreasing setting temporal clearTerminal function 33  Keypad digital adjustmentP17.13 increasing/decreasing setting Terminal function 12  temporal clearFrequency<br>valid valid<br>0 0<br>invalid Invalid<br>UP terminal<br>DOWN terminal  Digital potentiometer P08.42 unit place UP/DOWN UP/DOWN enabling0, 1 (UP/DOWN terminal valid P08.44 unit placeselection) UP/DOWN enabling  0 P08.44 tens place setting (frequency control selection) +<br>enabling<br>Digital  Digital potentiometer enabling P08.42 tens place setting (frequency control  +<br>potentiometer  selection)<br><!-- End of picture text -->

Goodrive200A series VFDs support the shifting between different reference channels and the detailed shifting rules is as below: 

|**Current**<br>**reference**<br>**channel**<br>**P00.09**|**Multi-function**<br>**terminal function 13**<br>**Shifting from A**<br>**channel to B channel**|**Multi-function**<br>**terminal function 14**<br>**Shifting from**<br>**combination setting**<br>**to A channel**|**Multi-function terminal**<br>**function 15**<br>**Shifting from**<br>**combination setting to**<br>**B channel**|
|---|---|---|---|
|A|B|/|/|
|B|A|/|/|
|A+B|/|A|B|
|A-B|/|A|B|
|Max(A,B)|/|A|B|
|Min(A,B)|/|A|B|



**Note:** "/" means the multi-function terminal is invalid under the current reference channel. 

-106- 

GD200A series VFD 

Basic operation instruction 

When multi-function terminals UP (10) and DOWN (11) are used to set the internal assistant frequency, P08.45 and P08.46 can be set to increase or decrease the set frequency quickly. 



<!-- Start of picture text -->
UP terminal frequency increasing integral rate  P08.45<br>F DOWNterminal frequency increasing integral rate  P08.46<br>T<br>Up terminal function selection=10 UP terminal state<br>Sx<br>T<br>DOWN terminal function<br>selection=11 DOWN terminal state<br>Sy<br>T<br><!-- End of picture text -->

###### **7.8 Simple PLC** 

Simple PLC function is also a multi-step speed generator. The VFD can change the running frequency, direction to meet the need of processing according to the running time automatically. In the past, this function needs to be assisted by external PLC, but now the VFD can realize this function by itself. 

The series VFDs can control 16-step speed with 4 groups of ACC/DEC time. 

The multi-function digital output terminals or multi-function relay output an ON signal when the set PLC finishes a circle (or a step). 



<!-- Start of picture text -->
P10.01 （ simple PLC memory seleciton ）<br>P10.00 （ simle PLC ）<br>0 Power off<br>without memory<br>01 Stop after running value after running Run at the final for one timeone time Running parameter setting in all stages in PLC Power off during running 1 Power off with memory 0 Restart from the first stage Set frequency<br>0<br>2 Cycle  Normal running 1 1 frequency of the pauseRestart form the  P17.00<br>stage<br>PLC method P10.36 Terminal function 23<br>(PLC restart selection) Simple PLC stop reset<br>Digital output 15<br>Simple PLC stage completion<br>Digital output 20 200ms<br>Simple PLC cycle completion<br>200ms<br><!-- End of picture text -->

###### **7.9 Multi-step speed running** 

Set the parameters when the VFD carries out multi-step speed running. Goodrive200A series VFDs can set 16 step speed which can be selected by the combination code of multi-step speed terminals 1–4. They correspond to multi-step speed 0 to 15. 

-107- 

GD200A series VFD 

Basic operation instruction 



<!-- Start of picture text -->
Terminal function 16 P10.02 multi-stage speed 0P10.03 the running time of stage 0 BIT0BIT1 P10.34<br>Multi-stage speed  OFF ON OFF ON OFF ON OFF ON The ACC/DEC time selection<br>terminal 1<br>Terminal function 17Multi-stage speed terminal 21 OFF OFF ON ON ON OFF OFF ON P10.04  multi-stage speed 1P10.05 the running time of stage 1 BIT2BIT3 of Stage 0~7 of PLC<br>Terminal function 18Terminal function 19Multi-stage speed Multi-stage speed terminal 3 OFFOFF OFFOFF OFFOFF OFFOFF OFFON OFFON OFFON OFFON P10.06  multi-stage speed 2P10.07 the running time of stage 2 BIT4BIT5 00 P00.11  ACC time 1P00.12  DEC time 1<br>terminal 4<br>Multi-stage speed  0 1 2 3 4 5 6 7 P10.08  multi-stage speed 3P10.09 the running time of stage 3 BIT6BIT7 01 P08.00   ACC time 2P08.01 DEC time 2<br>Multi-stage speed 15 P10.10  multi-stage speed 4P10.11 the running time of stage 4 BIT8BIT9 10 P08.02   ACC time 3P08.03  DEC time 3<br>11 P08.04   ACC time 4<br>P10.12  multi-stage speed 5 BIT10 P08.05  DEC time 4<br>P10.13 the running time of stage 5 BIT11<br>Multi-stage<br>speed 0<br>Multi-stage speed 1 P10.14  multi-stage speed 6P10.15 the running time of stage 6 BIT12BIT13<br>P10.16  multi-stage speed 7P10.17 the running time of stage 7 BIT14BIT15 Valid  Frequency retention<br>ON OFF<br>Running commandTerminal function 16 Multi-stage speed 1 P10.18  multi-stage speed 8P10.19 the running time of stage 8 BIT0BIT1 The ACC/DEC time selection P10.35 Invalid  Multi-stage speed output<br>of Stage 8~15 of PLC<br>Terminal function 17Multi-stage speed 2 P10.20  multi-stage speed 9P10.21 the running time of stage 9 BIT2BIT3<br>Terminal function 18<br>Terminal function 19 Multi-stage speed Multi-stage speed terminal 3 P10.22  multi-stage speed 10P10.23 the running time of stage 10 BIT4BIT5 00 P00.11  ACC time 1P00.12  DEC time 1<br>terminal 1<br>P10.24  multi-stage speed 11P10.25 the running time of stage 11 BIT6BIT7 01 P08.00 ACC time 2P08.01 DEC time 2<br>Terminal function 16Terminal function 17Multi-stage speed terminal 1 OFF ON OFF ON OFF ON OFF ON P10.26  multi-stage speed 12P10.27 the running time of stage 12 BIT8BIT9 10 P08.02  ACC time 3P08.03  DEC time 3<br>Multi-stage speed  OFF OFF ON ON ON OFF OFF ON<br>Terminal function 18Multi-stage speed terminal 2terminal 3 OFF OFF OFF OFF ON ON ON ON P10.28  multi-stage speed 13P10.29 the running time of stage 13 BIT10BIT11 11 P08.04  ACC time 4P08.05 DEC time 4<br>Terminal function 19Multi-stage speed terminal 4Multi-stage speed ON8 ON9 ON10 ON11 ON12 ON13 ON14 ON15 P10.30  multi-stage speed 14P10.31 the running time of stage 14 BIT12BIT13<br>P10.32  multi-stage speed 15 BIT14<br>P10.33 the running time of stage 15 BIT15<br><!-- End of picture text -->

###### **7.10 PID control** 

PID control is commonly used to control the procedure. Adjust the output frequency by proportional, integral, differential operation with the dispersion of the target signals to stabilize the value on the target. It is possible to apply to the flow, pressure and temperature control. Figure of basic control is as below: 



<!-- Start of picture text -->
Keypad setting PID given  P09.00<br>P09.01 Keypad  ？PID given source selection？ adjustmentPID stop<br>AI1 PID given value<br>AI2 01 P17.23 Y  Terminal function 25PID control pause  ？the upper limit of PID output ？P09.09 Set frequency P17.00<br>AI3 2 Valid  Keep the current frequency<br>Multi-stage HDI 34 + feedback<P09.08？Given - N Inval id  0<br>speed  5 1 PID output<br>MODBUS 6 - P09.08？PID control deviation limit？ (the chrematistic of PID P09.03<br>？PID feedback source selection？P09.02 (lower limit of PID P09.10output) output)<br>AI1  Kp P09.04(proportional gain)<br> Ti  P09.05(integral time)<br>0 AI2  Td P09.06(differential time)<br>1<br>2 AI3<br>3 HDI<br>4<br>P17.24 MODBUS<br>PID feedback<br>value<br><!-- End of picture text -->

When P00.06, P00. 07=7 or P04.27=6, the running mode of the VFD is procedure PID control. 

-108- 

GD200A series VFD 

Basic operation instruction 

###### **7.10.1  General steps of PID parameters setting:** 

###### **a Ensure the gain P** 

When ensure the gain P, firstly cancel the PID integration and derivation (set Ti=0 and Td=0, see the PID parameter setting for detailed information) to make proportional adjustment is the only method to PID. Set the input as 60%–70% of the permitted max. value and increase gain P from 0 until the system vibration occurs, vice versa, and record the PID value and set it to 60%–70% of the current value. Then the gain P commission is finished. 

###### **b Ensure the integration time** 

After ensuring the gain P, set an original value of a bigger integration time and decrease it until the system vibration occurs, vice versa, until the system vibration disappear. Record the Ti and set the integration time to 150%–180% of the current value. Then integration time commission is finished. 

###### **c Ensure the derivation time** 

Generally, it is not necessary to set Td which is 0. 

If it needs to be set, set it to 30% of the value without vibration via the same method with P and Ti. 

**d** Commission the system with and without load and then adjust the PID parameter until it is available. 

###### **7.10.2 PID inching** 

After setting the PID control parameters, inching is possible by following means: 

###### **Control the overshoot** 

Shorten the derivation time and prolong the integration time when overshoot occurs. 



<!-- Start of picture text -->
Before adjustment<br>Response<br>After adjustment<br>Time<br><!-- End of picture text -->

###### **Achieve the stable state as soon as possible** 

Shorten the integration time (Ti) and prolong the derivation time (Td) even the overshoot occurs, but the control should be stable as soon as possible. 

-109- 

GD200A series VFD 

Basic operation instruction 



<!-- Start of picture text -->
After adjustment<br>Response<br>Before adjustment<br>Time<br><!-- End of picture text -->

###### **Control long vibration** 

If the vibration periods are longer than the set value of integration time (Ti), it is necessary to prolong the integration time (Ti) to control the vibration for the strong integration. 



<!-- Start of picture text -->
Before adjustment<br>Response<br>After adjustment<br>Time<br><!-- End of picture text -->

###### **Control short vibration** 

Short vibration period and the same set value with the derivation time (Td) mean that the derivation time is strong. Shortening the derivation time (Td) can control the vibration. When setting the derivation time as 0.00(ire no derivation control) is useless to control the vibration, decrease the gain. 



<!-- Start of picture text -->
After adjustment<br>Response<br>Before adjustment<br>Time<br><!-- End of picture text -->

###### **7.11 Pulse counter** 

Goodrive200A series VFDs support pulse counter which can input counting pulse through HDI terminal. When the actual length is longer than or equal to the set length, the digital output terminal can output length arrival pulse signal and the corresponding length will be cleared automatically. 

-110- 

GD200A series VFD 

Basic operation instruction 



<!-- Start of picture text -->
Counting value<br>P17.18 Set counting value Digital output 18 Given counting value Digital output 19<br>arrival arrival<br>Terminal function<br>28 0<br>Counter reset  Y Y<br>valid<br>0<br>Terminal functionP05.01 – P05.09 invalid Counting value >P08.26 ？ N Counting value >P08.25 ？ N Running<br>P08.26 P08.25<br>Given counting value Set counting value<br>Counting value<br>P17.18 Set counting value Digital output 18 Given counting value Digital output 19<br>arrival arrival<br>Terminal function<br>28 0<br>Counter reset  Y Y<br>Valid<br>0<br>Counting value  N Counting value  N<br>0 Invalid  >P08.26 ？ >P08.25 ？ Running<br>1<br>P08.26 P08.25<br>Given counting value  Set counting value<br>Terminal function<br>31 Counter stop<br>Counter triggering<br>S terminal/HDI<br>Set counting value arrival<br>HDO, RO1 and RO2 output<br>Given counting value arrival<br>HDO, RO1 and RO2 output<br><!-- End of picture text -->

-111- 

GD200A series VFD 

Fault tracking 

##### **8 Fault tracking** 

###### **8.1 What this chapter contains** 

This chapter describes how to reset faults and view fault history. It also lists all alarm and fault messages including the possible cause and corrective actions. 

 Only qualified electricians are allowed to maintain the VFD. Read the safety instructions in chapter Safety precautions before working on the VFD. 

###### **8.2 Alarm and fault indications** 

Fault is indicated by LEDs. See 5 Keypad operation procedure. When <mark>TRIP</mark> light is on, an alarm or fault message on the panel display indicates abnormal VFD state. Using the information reference in this chapter, most alarm and fault cause can be identified and corrected. If not, contact INVT office.. 

###### **8.3 How to reset** 

The VFD can be reset by pressing the keypad key <u><mark>STOP/RST</mark> , through digital input, or by switching</u> the power light. When the fault has been removed, the motor can be restarted. 

###### **8.4 Fault history** 

– – Function codes P07.27–P07.32 store 6 recent faults. Function codes P07.33 P07.40, P07.41 – P07.48 and P07.49 P07.56 show drive operation data when the latest 3 faults occurs. 

###### **8.5 Fault instruction and solution** 

Do as the following after the VFD fault: 

1. Check to ensure there is nothing wrong with the keypad. If not, please contact local INVT office. 

2. If there is nothing wrong, please check P07 and ensure the corresponding recorded fault parameters to confirm the real state when the current fault occurs by all parameters. 

3. See the following table for detailed solution and check the corresponding abnormal state. 

4. Eliminate the fault and ask for relative help. 

5. Check to eliminate the fault and carry out fault reset to run the VFD. 

|**Fault code**|**Fault type **|**Possible cause**|**What to do**|
|---|---|---|---|
|OUt1|IGBT Ph-U fault|The acceleration is too fast||
|OUt2|IGBT Ph-V fault|IGBT module fault|Increase acceleration time|
|OUt3|IGBT Ph-W fault|Misacts caused by<br>interference<br>The connection of the<br>driving wires is not good,<br>Groundingis notproperly|Change the power unit<br>Check the driving wires<br>Inspect external equipment<br>and eliminate interference|



-112- 

GD200A series VFD 

Fault tracking 

|**Fault code**|<br>**Fault type **|**Possible cause**|**What to do**|
|---|---|---|---|
|OC1|Over-current when<br>acceleration|The acceleration or<br>deceleration is too fast<br>The voltage of the grid is<br>too low<br>The power of the VFD is too|<br>Increase the ACC time<br>Check the input power<br>Select the VFD with a larger<br>power<br>Check if the load is short|
|OC2|Over-current when<br>deceleration|low<br>The load transients or is<br>abnormal<br>The grounding is short<br>circuited or the output is|circuited (the grounding short<br>circuited or the wire short<br>circuited) or the rotation is not<br>smooth<br>Check the output|
|OC3|Over-current when<br>constant speed<br>running|phase loss<br>There is strong external<br>interference<br>The overvoltage stall<br>protection is not open|configuration.<br>Check if there is strong<br>interference<br>Check the setting of relative<br>function codes|
|OV1|Over-voltage when<br>acceleration||Check the input power<br>Check if the DEC time of|
|OV2|Over-voltage when<br>deceleration|The input voltage is<br>abnormal|the load is too short or the<br>VFD starts during the rotation|
|OV3|Over-voltage when<br>constant speed<br>running|<br>There is large energy<br>feedback<br>No braking components<br>Braking energy is not open|of the motor or it needs to add<br>the dynamic braking<br>components<br>Install the braking<br>components<br>Check the setting of relative<br>|
||||function codes|
|UV|DC bus<br>Under-voltage|The voltage of the power<br>supply is too low<br>The overvoltage stall<br>protection is not open|Check the input power of<br>the supply line<br>Check the setting of relative<br>function codes|
|OL1|Motor overload|The voltage of the power<br>supply is too low<br>The motor setting rated<br>current is incorrect<br>The motor stall or load<br>transients is too strong|Check the power of the<br>supply line<br>Reset the rated current of<br>the motor<br>Check the load and adjust<br>the torque lift|
|OL2|VFD overload|The acceleration is too fast<br>Reset the rotating motor<br>The voltage of the power<br>supplyis too low|Increase the ACC time<br>Avoid the restarting after<br>stopping<br>Check thepower of the|



-113- 

GD200A series VFD 

Fault tracking 

|**Fault code**|<br>**Fault type **|**Possible cause**|**What to do**|
|---|---|---|---|
|||The load is too heavy<br>The motor power is too<br>small|supply line<br>Select a VFD with bigger<br>power<br>Select aproper motor|
|OL3|Electrical overload|<br>The VFD will report<br>overload pre-alarm according<br>to the set value|Check the load and the<br>overload pre-alarm point.|
|SPI|Input phase loss|Phase loss or fluctuation of<br>input R,S,T|Check input power<br>Check installation<br>distribution|
|SPO|Output phase loss|U,V,W phase loss input(or<br>serious asymmetrical three<br>phase of the load)|Check the output<br>distribution<br>Check the motor and cable|
|OH1|Rectifyoverheat|Air duct jam or fan damage||
|OH2|IGBT overheat|Ambient temperature is too<br>high<br>The time of overload<br>runningis too long|Clean the air duct or the fan<br>Reduce the ambient<br>temperature|
|EF|External fault|SI external fault input<br>terminals action|Check the external device<br>input|
|CE|Communication<br>error|The baud rate setting is<br>incorrect<br>Fault occurs to the<br>communication wiring.<br>The communication<br>address is wrong<br>There is strong interference<br>to the communication|Set proper baud rate<br>Check the communication<br>connection distribution<br>Set proper communication<br>address<br>Chang or replace the<br>connection distribution or<br>improve the anti-interference<br>capability|
|ItE|Current detection<br>fault|The connection of the<br>control board is not good<br>Hall components is broken<br>The modifying circuit is<br>abnormal|Check the connector and<br>re-plug<br>Change the hall<br>Change the main control<br>panel|
|tE|Autotuning fault|The motor capacity does<br>not comply with the VFD<br>capability<br>The rated parameter of the<br>motor does not set correctly.<br>The offset between the|Change the VFD model<br>Set the rated parameter<br>according to the motor<br>nameplate<br>Empty the motor load and<br>re-identify|



-114- 

GD200A series VFD 

Fault tracking 

|**Fault code**|<br>**Fault type **|**Possible cause**|**What to do**|
|---|---|---|---|
|||parameters autotuning and<br>the standard parameter is<br>huge<br>Autotune overtime|Check the motor connection<br>and set the parameter.<br>Check if the upper limit<br>frequency is above 2/3 of the<br>rated frequency.|
|EEP|EEPROM fault|Error of controlling the write<br>and read of the parameters<br>Damage to EEPROM|PressSTOP/RSTto reset<br>Change the main control<br>panel|
|PIDE|PID feedback fault|<br>PID feedback offline<br>PID feedback source<br>disappear|Check the PID feedback<br>signal<br>Check the PID feedback<br>source|
|bCE|Braking unit fault|Braking circuit fault or<br>damage to the braking pipes<br>The external braking<br>resistor is not sufficient|<br>Check the braking unit and<br>change new braking pipe<br>Increase the braking<br>resistor|
|ETH1|Grounding shortcut<br>fault 1|The output of the VFD is<br>short circuited with the|Check if the connection of<br>th t i l  t|
|ETH2|Grounding shortcut<br>fault 2|ground<br>There is fault in the current<br>detection circuit<br>The actual motor power<br>sharply differs from the VFD<br>power.|e moor s norma or no<br>Change the hall<br>Change the main control<br>panel<br>Set motor parameters<br>correctly.|
|dEu|Velocity deviation<br>fault|The load is too heavy or<br>stalled|Check the load and ensure<br>it is normal<br>Increase the detection time<br>Check whether the control<br>parameters are normal|
|STo|Maladjustment fault|The control parameters of<br>the synchronous motors not<br>set properly<br>The autotune parameter is<br>not right<br>The VFD is not connected<br>to the motor|Check the load and ensure<br>it is normal<br>Check whether the control<br>parameter is set properly or<br>not<br>Increase the maladjustment<br>detection time|
|END|Time reach of<br>factory setting|The actual running time of<br>the VFD is above the internal<br>settingrunningtime|Ask for the supplier and<br>adjust the setting running<br>time|



-115- 

GD200A series VFD 

Fault tracking 

|**Fault code**|<br>**Fault type **|**Possible cause**|**What to do**|
|---|---|---|---|
|PCE|Keypad<br>communication<br>fault|The connection of the<br>keypad wires is not good or<br>broken<br>The keypad wire is too long<br>and affected by strong<br>interference<br>There is circuit fault on the<br>communication of the keypad<br>and main board|Check the keypad wires<br>and ensure whether there is<br>mistake<br>Check the environment and<br>avoid the interference source<br>Change the hardware and<br>ask for service|
|DNE|Parameters<br>downloading fault|<br>The connection of the<br>keypad wires is not good or<br>broken<br>The keypad wire is too long<br>and affected by strong<br>interference<br>There is mistake on the<br>data storage of the keypad|Check the keypad wires<br>and ensure whether there is<br>mistake<br>Change the hardware and<br>ask for service<br>Repack-up the data in the<br>keypad|
|LL|Electronic<br>underload fault|The VFD will report the<br>underload pre-alarm<br>accordingto the set value|Check the load and the<br>underload pre-alarm point|



###### **8.5.1 Other states** 

|**Fault code**|**Fault type **|**Possible cause**|**What to do**|
|---|---|---|---|
|PoFF|System power off|System power off or the<br>bus voltage is too low|<br>Check the grid|
||Communication failure between<br>the keypad and main control board|<br>The<br>keypad<br>is<br>not<br>connected correctly|<br>Check the installation<br>environment|



-116- 

GD200A series VFD 

Fault tracking 

###### **8.6 Common fault analysis** 

###### **8.6.1 The motor does not work** 



<!-- Start of picture text -->
The  motor does not rotate<br>If there is displaying on the keypadIf the POWER is on or not? No  If the contactor switches on the input side  No  Switch on the air contactor<br>Yes<br>Yes<br>Normal running  Settle the fault according to the fault information  Yes  If the keypad displays the information or not Check the voltage of RST with multimeter Normal   VFD fault<br>No<br>Normal  Communication  Abnormal<br>Reset the parameters If it is normal running  No  If the communication parameter is right or not?  Ensure the running command channel Terminal  Check the voltage of the power supply Normal running<br>Abnormal  Yes<br>Keypad  Normal<br>Normal<br>Normal  Normal If the communication configuration  Normal running  Press RUN to run Check the state of the input terminal  No  If the running is normal or not after switching on<br>running  is right or not   the terminal<br>Yes  Abnormal<br>Abnormal  Abnormal<br>If the speed command setting is right or not  No  If the running is normal after setting a rigcommand ht speed  Normal  Normal running<br>Yes<br>Abnormal<br>Check the voltage of UVW VFD fault<br>Normal<br>If the motor configuration is right  No  Set a right motor<br>or not  configuration<br>Yes<br>No  Yes  Reduce the load if the motor<br>Motor fault  If the load is too heavy is locked caused by heavy<br>load<br><!-- End of picture text -->

###### **8.6.2 Motor vibration** 



<!-- Start of picture text -->
Motor vibration or<br>abnormal noise<br>Check the motor parameter  No  Please set right<br>motor type and<br>or motor type is right or not<br>parameters<br>Yes<br>Perform parameter  No  Perform right<br>autotune or not  parameter autotune<br>Yes<br>If set right V/F vibration  No  Set right<br>parameter or not  parameters<br>Yes<br>Check if there is abnormal  Yes  Check the<br>vibration to the reference  reference<br>frequency frequency<br>No<br>Check if there is abnormal  Yes<br>Check the load<br>vibration to the load<br>No<br>If a VFD fault occurs,<br>please contact INVT<br><!-- End of picture text -->

-117- 

GD200A series VFD 

Fault tracking 

###### **8.6.3 Overvoltage** 



<!-- Start of picture text -->
OV fault<br>No<br>Check if the voltage range is in  Ensure the power supply<br>the standard one or not ? meets the need<br>Yes<br>circuited to to the earth and Check If UVW is short  Yes  Settle the short circuit<br>the configuration of the output  and confabulate rightly<br>side is right or not?<br>Yes<br>Check if the ACC/DEC  Yes Check if the ACC/DEC  Yes  Prolong the ACC/DEC<br>time is too short time can be prolonged time<br>No  No<br>Check the load and  Yes  Check if the load  Check if it  Yes<br>motor is in abnormal  needs to use  Add braking optionds<br>adjust<br>reverse running  the options<br>No  No<br>If the it is the VFD fault,<br>Adjust the braking<br>please contact the<br>options and the resistor<br>company<br><!-- End of picture text -->

###### **8.6.4 Undervoltage fault** 



<!-- Start of picture text -->
UV fault<br>If the voltage of the power  Yes Ensure the power supply<br>supply is in the standard range  meet the need<br>No<br> Check if the air switch and  Yes   Switch on the air switch<br>contactor on the inside is off or  and contactor and settle<br>abnormal  or not  the abnormal<br>No<br>Check if there is big power  Yes<br>Adjust the power supply<br>device in the same power supply<br>No<br>Check that if there is  Yes  Ensure the power off<br>powering off during the  reason and settle the<br>running of the VFD abnormal<br>No<br>If the it is the VFD fault,<br>please contact INVT<br><!-- End of picture text -->

-118- 

GD200A series VFD 

Fault tracking 

###### **8.6.5 Abnormal motor heat** 

|Abnormal heat|N|Set right|
|---|---|---|
|<br>Yes<br>Check if the parameter<br>is right or not|o<br>|<br>motor<br>parameters|
|Check if it needs to<br>carry out parameter<br>autotune<br>Yes|No|Parameter<br>autotune|
|Check if the VFD<br>runs at low speed<br>all the time<br>Yes<br>No|||
|Check if it is frequency-<br>inverting motor|No|Select right<br>motor|
|Yes|Yes||
|Check if the load is too<br>heavy||Low the load|
|No|||
|Check if the 3-phase<br>motor is balance|No|Change the<br>motor|
|Yes|||
|Check if the carrier<br>frequency is too low|Yes|Set proper<br>carrier<br>frequency|
|No|||
|Check if the motor wire<br>is too long|Yes|Add output<br>filter|
|No|||
|If the it is the VFD fault,<br>please contact INVT|||



###### **8.6.6 VFD overheating** 



<!-- Start of picture text -->
VFD overheating<br>Check if the load is too heavy  Yes  Reduce the load and<br>or the capacity of  increase the capacity of<br>the VFD is too low the VFD<br>No<br>Check if the ambient  Yes Install heat-releasing<br>temperature is too  device or derate the VFD<br>high<br>No<br>Check if there is  Yes If the it is the VFD fault,<br>abnormal noise to the  please contact the<br>fan of the VFD company<br>No<br>Check if the heat sink  Yes Clean the heat sink and<br>is jammed improve the condition<br>No<br>Check if the carrier  Yes Reduce the carrier<br>frequency is too high frequency<br>No<br>If the it is the VFD fault,<br>please contact INVT<br><!-- End of picture text -->

-119- 

GD200A series VFD 

Fault tracking 

###### **8.6.7 Stall during the acceleration of the motor** 



<!-- Start of picture text -->
Stall during ACC<br>Check if the ACC time  Yes<br>Increase the ACC time<br>is too short<br>No<br>Yes  Thicken the motor cables and shorten<br>Check if the voltage between the  the configuration distance and adjust the<br>terminals is among the range  voltage of the reactor<br>No<br>Check if the load and  Yes  Check if the motor is  Yes  Contact the<br>inertia is too big special  company<br>No  No<br>Reduce the torque of the  Yes  Check if the load  Reduce the inertia of the<br>load and increase the  过电流 load and increase the<br>torque is too big<br>capacity of the VFD capacity of the VFD<br>No<br>Yes  Check if the torque<br>Modify the torque boost<br>boost is too high<br>No<br>Check if it performs  No  Overcurrent<br>parameter  autotune<br>Yes<br>If the it is the VFD fault or<br>interference, please contact<br>INVT<br><!-- End of picture text -->

-120- 

GD200A series VFD 

Fault tracking 

###### **8.6.8 Overcurrent** 



<!-- Start of picture text -->
Overcurrent<br>Check if UVW is short circuited  Yes Settle the short circuit<br>to the earth. Remove the motor  problem and configure<br>cable and ensure if there is  the motor cables rightly<br>connected with the earth.<br>No<br>Check if the motor is  Yes<br>short circuited to the  Change the motor<br>earth<br>No<br>Check if the motor type and  No Set right motor type and<br>parameters are right  parameters<br>Yes<br>Check if it needs  No<br>Parameters autotune<br>parameters autotune<br>Yes<br>Check if the ACC/DEC  Yes Adjust the ACC/DEC<br>time is too short time<br>No<br>Check if the load is  Yes Reduce the load and<br>increase the capacity of<br>too heavy the VFD<br>No<br>Check if there is  Yes Clear the interference<br>interference source  source<br>No<br>Check if the multi-dots  Yes<br>Adjust the V/F curve<br>V/F curve is set rightly<br>No<br>Check if there is abnormal  No Set right<br>V/F vibration control<br>vibration to the motor<br>parameters<br>No<br>If the it is the VFD fault,<br>please contact INVT<br><!-- End of picture text -->

###### **8.7 VFD system interference troubleshooting** 

If sensitive devices (PLC, PC, sensors, test equipment, etc.) exist interference problems when the system is running, you can troubleshoot by the following means: 

1. Try plugging in or unplugging the jumper pins of C3 filter to verify whether the interference has been eliminated. 

2. Check whether the drive power lines and the signal/ communication lines of sensitive equipment go down the same trough, if there is, it should be again separated from the wiring. 

3. If the sensitive equipment and drive to take power from the same grid, it is recommended to install isolation transformer and filter to the distribution of sensitive equipment side. 

4. The relative shield wire of sensitive equipment try to ground at both ends 、 single-grounded 、 ungrounded respectively; to verify whether the interference has been eliminated. 

5. Try to make the interfered sensitive equipment and the drive have no common ground, or floating processing; to verify whether the interference has been eliminated. 

-121- 

GD200A series VFD 

Fault tracking 

###### **8.8 Maintenance and hardware diagnostics** 

###### **8.8.1 Overcurrent** 

If installed in an appropriate environment, the VFD requires very little maintenance. The table lists the recommended routine maintenance intervals recommended by INVT. 

|**Checking part**|**Checking item**|**Checking**<br>**method**|**Criterion**|
|---|---|---|---|
|Ambient environment|Check<br>the<br>ambient<br>temperature,<br>humidity<br>and<br>vibration and ensure there is<br>no dust, gas, oil fog and water<br>drop.|<br> <br> <br> <br>Visual<br>examination<br>and instrument<br>test|Conforming<br>to<br>the<br>manual|
||Ensure there are no tools or<br>other foreign or dangerous<br>objects|<br> <br>Visual<br>examination|There are no tools or<br>dangerous objects.|
|Voltage|Ensure the main circuit and<br>control circuit are normal.|<br>Measurement by<br>millimeter|<br>Conforming<br>to<br>the<br>manual|
||Ensure the display is clear<br>enough|<br>Visual<br>examination|The characters are<br>displayed normally.|
|Keypad|Ensure the characters are<br>displayed totally|<br>Visual<br>examination|Conforming<br>to<br>the<br>manual|
||Ensure<br>the<br>screws<br>are<br>tightened up|<br>Tighten up|NA|
|For public|Ensure there is no distortion,<br>crackles,<br>damage<br>or<br>color-changing<br>caused<br>by<br>overheating and aging to the<br>machine and insulator.|<br> <br> <br> <br>Visual<br>examination|NA|
|Main<br>circuit<br> <br>use|Ensure there is no dust and<br>dirtiness|<br>Visual<br>examination|NA<br>**Note:**If the color of<br>the<br>copper<br>blocks<br>change, it does not<br>mean that there is<br>something wrong with<br>the features.|
|The lead of<br>the|Ensure<br>that<br>there<br>is<br>no<br>distortion or color-changing of<br>the<br>conductors caused<br>by<br>overheating.|<br> <br> <br>Visual<br>examination|NA|
|conductors|Ensure that there are no<br>crackles or color-changing of<br>theprotective layers.|<br> <br>Visual<br>examination|NA|



-122- 

GD200A series VFD 

Fault tracking 

|**Chec**|**king part**|**Checking item**|**Checking**<br>**method**|**Criterion**|
|---|---|---|---|---|
||Terminals<br>seat|Ensure<br>that<br>there<br>is<br>no<br>damage|<br>Visual<br>examination|NA|
|||Ensure<br>that<br>there<br>is<br>no<br>weeping,<br>color-changing,<br>crackles and cassis expansion.|<br> <br> <br>Visual<br>examination|NA|
||Filter<br>capacitors|Ensure the safety valve is in<br>the right place.|<br>Estimate<br>the<br>usage<br>time<br>according to the<br>maintenance<br>or<br>measure the static<br>capacity.|<br> <br> <br> <br> <br>NA|
|||If necessary, measure the<br>static capacity.|<br>Measure<br>the<br>capacity<br>by<br>instruments.|<br> <br>The static capacity is<br>above or equal to the<br>original value *0.85.|
|||Ensure<br>whether<br>there<br>is<br>replacement<br>and<br>splitting<br>caused byoverheating.|<br> <br>Smelling<br>and<br>visual<br>examination|<br>NA|
||Resistors|Ensure that there is no offline.|Visual<br>examination<br>or<br>remove<br>one<br>ending<br>to<br>coagulate<br>or<br>measure<br>with<br>multimeters|<br> <br> <br> <br> <br>The resistors are in<br>±10% of the standard<br>value.|
||Transformers<br>and reactors|<br>Ensure there is no abnormal<br>vibration, noise and smelling,|<br>Hearing, smelling<br>and<br>visual<br>examination|<br> <br>NA|
||Electromag-<br>netism<br>|Ensure<br>whether<br>there<br>is<br>vibration<br>noise<br>in<br>the<br>workrooms.|<br> <br>Hearing|NA|
||contactors<br>and relays|Ensure the contactor is good<br>enough.|<br>Visual<br>examination|NA|
|||Ensure there are no loose<br>screws and contactors.|<br>Fasten up|NA|
|Control<br>circuit|PCB and<br>plugs|Ensure there is no smelling<br>and color-changing.|<br>Smelling<br>and<br>visual<br>examination|<br>NA|
|||Ensure there are no crackles,<br>damage distortion and rust.|<br>Visual<br>examination|NA|



-123- 

GD200A series VFD 

Fault tracking 

|**Checking part**|**Checking item**|**Checking**<br>**method**|**Criterion**|
|---|---|---|---|
||Ensure there is no weeping<br>and distortion to the capacitors.|<br> <br>Visual<br>examination<br>or<br>estimate<br>the<br>usage<br>time<br>according to the<br>maintenance<br>information|<br> <br> <br> <br>NA|
||Estimate<br>whether<br>there<br>is<br>abnormal noise and vibration.|<br>Hearing<br>and<br>Visual<br>examination<br>or<br>rotate with hand|<br> <br>Stable rotation|
||Estimate there is no losses<br>screw.|<br>Tighten up|NA|
|Cooling<br>system<br>Cooling fan|Ensure<br>there<br>is<br>no<br>color-changing<br>caused<br>by<br>overheating.|<br> <br>Visual<br>examination<br>or<br>estimate<br>the<br>usage<br>time<br>according to the<br>maintenance<br>information|<br> <br> <br> <br>NA|
|Ventilating<br>duct|Ensure whether there is stuff or<br>foreign objection in the cooling<br>fan,air vent.|<br> <br>Visual<br>examination|NA|



Consult the local service representative for more details on the maintenance. Visit the official website of INVT http: //www.invt.com and choose **Service** . 

###### **8.8.2 Cooling fan** 

The VFD's cooling fan has a minimum life span of 25,000 operating hours. The actual life span depends on the VFD usage and ambient temperature. 

The operating hours can be found through P07.14 (accumulative hours of the VFD). 

Fan failure can be predicted by the increasing noise from the fan bearings. If the VFD is operated in a critical part of a process, fan replacement is recommended once these symptoms appear. Replacement fans are available from INVT. 

###### **8.8.2.1 Replacing the cooling fan** 

-  Read and follow the instructions in chapter 1 Safety precautions. Ignoring the instructions would cause physical injury or death, or damage to the equipment. 

-124- 

GD200A series VFD 

Fault tracking 

1. Stop the VFD and disconnect it from the AC power source and wait for at least the time designated on the VFD. 

2. Lever the fan holder off the drive frame with a screwdriver and lift the hinged fan holder slightly upward from its front edge. 

3. Loose the fan cable from the clip. 

4. Disconnect the fan cable. 

5. Remove the fan holder from the hinges. 

6. Install the new fan holder including the fan in reverse order. Keep the wind direction of the fan consistent with that of the VFD, as shown below: 



<!-- Start of picture text -->
Wind<br>Rotation  Wind<br>direction<br>direction direction<br>Wind<br>direction<br>Rotation  Wind<br>direction direction<br><!-- End of picture text -->

Figure 8-1 Fan maintenance diagram for VFDs 

7. Restore power. 

###### **8.8.3 Capacitors** 

###### **8.8.3.1 Reforming the capacitors** 

The DC bus capacitors must be reformed according to the operation instruction if the VFD has been stored for a long time. The storing time is counted form the producing date other than the delivery data which has been marked in the serial number of the VFD. 

|**Time**|**Operationalprinciple**|
|---|---|
|Storingtime less than 1year|Operation without charging|
|Storingtime 1-2years|Connect with thepower for 1 hour before first ON command|
|Storing time 2-3 years|Use power surge to charge for the VFD<br> Apply 25% rated voltage for 30 minutes<br> Apply 50% rated voltage for 30 minutes<br> Apply 75% rated voltage for 30 minutes<br> Apply100% rated voltage for 30 minutes|
|Storing time more than 3 years|Use power surge to charge for the VFD<br> Apply 25% rated voltage for 2 hours<br> Apply 50% rated voltage for 2 hours<br> Apply 75% rated voltage for 2 hours<br> Apply100% rated voltage for 2 hours|



-125- 

GD200A series VFD 

Fault tracking 

The method of using power surge to charge for the VFD: 

The right selection of power surge depends on the supply power of the VFD. Single phase 220V AC/2A power surge applied to the VFD with single/three-phase 220V AC as its input voltage. The VFD with single/three-phase 220V AC as its input voltage can apply Single phase 220V AC/2A power surge. All DC bus capacitors charge at the same time because there is one rectifier. 

High-voltage VFD needs enough voltage (for example, 380V) during charging. The small capacitor power (2A is enough) can be used because the capacitor nearly does not need current when charging. 

The operation method of VFD charging through resistors (LEDs): 

The charging time is at least 60 minutes if charge the DC bus capacitor directly through supply power. This operation is available on normal temperature and no-load condition and the resistor should be serially connected in the 3-phase circuits of the power supply(the distance between resistors of each phase≥5.5mm): 

380V drive device: 1k/100W resistor. LED of 100W can be used when the power voltage is no more than 380V. But if used, the light may be off or weak during charging. 



<!-- Start of picture text -->
Resistor 1K    100W Ω/ R U<br>Power supply<br>AC 380V Resistor 1K    100W Ω/ S VFD V<br>Resistor 1K    100W Ω/ T W<br><!-- End of picture text -->

Figure 8-2 380V charging illustration of the driven device 

###### **8.8.3.2 Change electrolytic capacitors** 

 Read and follow the instructions in chapter 1 Safety precautions. Ignoring the instructions may cause physical injury or death, or damage to the equipment. 

Change electrolytic capacitors if the working hours of electrolytic capacitors in the VFD are above 35000. Please contact the local INVT offices or dial our national service hotline (400-700-9997) for detailed operation. 

###### **8.8.4 Power cable** 

 Read and follow the instructions in chapter 1 Safety precautions. Ignoring the instructions may cause physical injury or death, or damage to the equipment. 

1. Stop the drive and disconnect it from the power line. Wait for at least the time designated on the VFD. 

2. Check the tightness of the power cable connections. 

3. Restore power. 

-126- 

GD200A series VFD 

Communication protocol 

##### **9 Communication protocol** 

###### **9.1 What this chapter contains** 

This chapter describes the communication protocol of Goodrive200A series VFDs. 

The Goodrive200A series VFDs provide RS485 communication interface. It adopts international standard MODBUS communication protocol to perform master-slave communication. The user can realize centralized control through PC/PLC, upper control PC, etc. (set the control command, running frequency of the VFD, modify relevant function codes, monitor and control the operating state and fault information of the VFD and so on) to adapt specific application requirements. 

###### **9.2 Brief instruction to MODBUS protocol** 

MODBUS protocol is a software protocol and common language which is applied in the electrical controller. With this protocol, the controller can communicate with other devices via network (the channel of signal transmission or the physical layer, such as RS485). And with this industrial standard, the controlling devices of different manufacturers can be connected to an industrial network for the convenient of being monitored. There are two transmission modes for MODBUS protocol: ASCII mode and RTU (Remote Terminal Units) mode. On one MODBUS network, all devices should select same transmission mode and their basic parameters, such as baud rate, digital bit, check bit, and stopping bit should have no difference. 

MODBUS network is a controlling network with single-master and multiple slaves, which means that there is only one device performs as the master and the others are the slaves on one MODBUS network. The master means the device which has active talking right to send message to MODBUS network for the controlling and inquiring to other devices. The slave means the passive device which sends data message to the MODBUS network only after receiving the controlling or inquiring message (command) form the master (response). After the master sends message, there is a period of time left for the controlled or inquired slaves to response, which ensure there is only one slave sends message to the master at a time for the avoidance of singles impact. 

Generally, the user can set PC, PLC, IPC and HMI as the masters to realize central control. Setting certain device as the master is a promise other than setting by a bottom or a switch or the device has a special message format. For example, when the upper monitor is running, if the operator clicks sending command bottom, the upper monitor can send command message actively even it cannot receive the message from other devices. In this case, the upper monitor is the master. And if the designer makes the VFD send the data only after receiving the command, then the VFD is the slave. 

The master can communicate with any single slave or with all slaves. For the single-visiting command, the slave should feedback a response message; for the broadcasting message from the master, the slave does not need to feedback the response message. 

-127- 

GD200A series VFD 

Communication protocol 

###### **9.3 Application of the VFD** 

The MODBUS protocol of the VFD is RTU mode and the physical layer is 2-wire RS485. 

###### **9.3.1 RS485** 

The interface of 2-wire RS485 works on semiduplex and its data signal applies differential transmission which is called balance transmission, too. It uses twisted pairs, one of which is defined as A (+) and the other is defined as B (-). Generally, if the positive electrical level between sending drive A and B is among +2–+6V, it is logic"1", if the electrical level is among -2V–-6V; it is logic"0". 

485+ on the terminal board corresponds to A and 485- to B. 

Communication baud rate means the binary bit number in one second. The unit is bit/s (bps). The higher the baud rate is, the quicker the transmission speed is and the weaker the anti-interference is. If the twisted pairs of 0.56mm (24AWG) is applied as the communication cables, the max. transmission distance is as below: 

|**Baud rate**|**Max. transmission**<br>**distance**|**Baud rate**|**Max. transmission**<br>**distance**|
|---|---|---|---|
|2400BPS|1800m|9600BPS|800m|
|4800BPS|1200m|19200BPS|600m|



It is recommended to use shield cables and make the shield layer as the grounding wires during RS485 remote communication. 

In the cases with less devices and shorter distance, it is recommended to use 120Ω terminal resistor as the performance will be weakened if the distance increase even though the network can perform well without load resistor. 

###### **9.3.2 RTU mode** 

###### **9.3.2.1 RTU communication frame format** 

If the controller is set to communicate by RTU mode in MODBUS network every 8bit byte in the message includes two 4Bit hex characters. Compared with ACSII mode, this mode can send more data at the same baud rate. 

###### **Code system** 

- 1  start bit 

- 7 or 8 digital bit, the minimum valid bit can be sent firstly. Every 8 bit frame includes two hex characters (0...9, A...F) 

- 1  even/odd check bit . If there is no checkout, the even/odd check bit is inexistent. 

- 1  end bit (with checkout), 2 Bit(no checkout) 

###### **Error detection field** 

-  CRC 

-128- 

GD200A series VFD 

Communication protocol 

The data format is illustrated as below: 

– 11-bit character frame (BIT1 BIT8 are the digital bits) 

Start bit BIT1 BIT2 BIT3 BIT4 BIT5 BIT6 BIT7 BIT8 Check bit End bit – 10-bit character frame (BIT1 BIT7 are the digital bits) Start bit BIT1 BIT2 BIT3 BIT4 BIT5 BIT6 BIT7 Check bit End bit 

– 10-bit character frame (BIT1 BIT7 are the digital bits) 

In one character frame, the digital bit takes effect. The start bit, check bit and end bit is used to send the digital bit right to the other device. The digital bit, even/odd checkout and end bit should be set as the same in real application. 

The MODBUS minimum idle time between frames should be no less than 3.5 bytes. The network device is detecting, even during the interval time, the network bus. When the first field (the address field) is received, the corresponding device decodes next transmitting character. When the interval time is at least 3.5 byte, the message ends. 

The whole message frame in RTU mode is a continuous transmitting flow. If there is an interval time (more than 1.5 bytes) before the completion of the frame, the receiving device will renew the uncompleted message and suppose the next byte as the address field of the new message. As such, if the new message follows the previous one within the interval time of 3.5 bytes, the receiving device will deal with it as the same with the previous message. If these two phenomena all happen during the transmission, the CRC will generate a fault message to respond to the sending devices. 

The standard structure of RTU frame: 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|Communication address: 0–247(decimal system)(0 is the broadcast<br>address)|
|CMD|03H: read slave parameters<br>06H: write slaveparameters|
|DATA (N-1)<br>...<br>DATA(0)|The data of 2*N bytes are the main content of the communication as<br>well as the core of data exchanging|
|CRC CHK low bit||
|CRC CHK high bit|Detection value: CRC (16BIT）|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



###### **9.3.2.2 RTU communication frame error checkout** 

Various factors (such as electromagnetic interference) may cause error in the data transmission. For example, if the sending message is a logic "1",A-B potential difference on RS485 should be 6V, but in reality, it may be -6V because of electromagnetic interference, and then the other devices take the sent message as logic"0". If there is no error checkout, the receiving devices will not find the message is wrong and they may give incorrect response which cause serious result. So the checkout is essential to the message. 

-129- 

GD200A series VFD 

Communication protocol 

The theme of checkout is that: the sender calculate the sending data according to a fixed formula, and then send the result with the message. When the receiver gets this message, they will calculate anther result according to the same method and compare it with the sending one. If two results are the same, the message is correct. If not, the message is incorrect. 

The error checkout of the frame can be divided into two parts: the bit checkout of the byte and the whole data checkout of the frame (CRC check). 

###### **Bit checkout of the byte** 

The user can select different bit checkouts or non-checkout, which impacts the check bit setting of each byte. 

The definition of even checkout: add an even check bit before the data transmission to illustrate the number of "1" in the data transmission is odd number or even number. When it is even, the check byte is "0", otherwise, the check byte is"1". This method is used to stabilize the parity of the data. 

The definition of odd checkout: add an odd check bit before the data transmission to illustrate the number of "1" in the data transmission is odd number or even number. When it is odd, the check byte is "0", otherwise, the check byte is"1". This method is used to stabilize the parity of the data. 

For example, when transmitting "11001110", there are five "1" in the data. If the even checkout is applied, the even check bit is "1"; if the odd checkout is applied; the odd check bit is "0". The even and odd check bit is calculated on the check bit position of the frame. And the receiving devices also carry out even and odd checkout. If the parity of the receiving data is different from the setting value, there is an error in the communication. 

###### **CRC check** 

The checkout uses RTU frame format. The frame includes the frame error detection field which is based on the CRC calculation method. The CRC field is two bytes, including 16 figure binary values. It is added into the frame after calculated by transmitting device. The receiving device recalculates the CRC of the received frame and compares them with the value in the received CRC field. If the two CRC values are different, there is an error in the communication. 

During CRC, 0*FFFF will be stored. And then, deal with the continuous 6-above bytes in the frame and the value in the register. Only the 8Bit data in every character is effective to CRC, while the start bit, the end and the odd and even check bit is ineffective. 

The calculation of CRC applies the international standard CRC checkout principles. When the user is editing CRC calculation, he can refer to the relative standard CRC calculation to write the required CRC calculation program. 

Here provided a simple function of CRC calculation for the reference (programmed with C language): 

```
unsigned int crc_cal_value(unsigned char *data_value,unsigned char
data_length)
{
```

-130- 

GD200A series VFD 

Communication protocol 

###### `int i;` 

```
unsigned int crc_value=0xffff;
```

```
while(data_length--)
```

```
{   crc_value^=*data_value++;
```



```
{
```

```
if(crc_value&0x0001)crc_value=(crc_value>>1)^0xa001;
```

```
else crc_value=crc_value>>1;
}      }
```

```
return(crc_value);
```

```
}
```

In ladder logic, CKSM calculated the CRC value according to the frame with the table inquiry. The method is advanced with easy program and quick calculation speed. But the ROM space the program occupied is huge. So use it with caution according to the program required space. 

###### **9.4 RTU command code and communication data illustration** 

###### **9.4.1 RTU mode** 

###### **9.4.1.1 Command code: 03H** 

read N words (Word) (N≤16) 

Command code 03H means that if the master read data from the VFD, the reading number depends on the "data number" in the command code. Max. continuous reading number is 16 and the parameter address should be continuous. The byte length of every data is 2 (one word). The following command format is illustrated by hex (a number with "H" means hex) and one hex occupies one byte. 

The command code is used to read the working step of the VFD. 

For example, read continuous 2 data content from0004H from the VFD with the address of 01H (read the content of data address of 0004H and 0005H), the frame structure is as below: 

RTU master command message (from the master to the VFD) 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|01H|
|CMD|03H|
|High bit of the start address|00H|
|Low bit of the start address|04H|
|High bit of data number|00H|
|Low bit of data number|02H|
|CRC low bit|85H|
|CRC high bit|CAH|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



-131- 

GD200A series VFD 

Communication protocol 

T1-T2-T3-T4 between START and END is to provide at least the time of 3.5 bytes as the leisure time and distinguish two messages for the avoidance of taking two messages as one message. 

**ADDR** = 01H means the command message is sent to the VFD with the address of 01H and ADDR occupies one byte 

**CMD** =03H means the command message is sent to read data from the VFD and CMD occupies one byte 

**"Start address"** means reading data form the address and it occupies 2 bytes with the fact that the high bit is in the front and the low bit is in the behind. 

**"Data number"** means the reading data number with the unit of word. If the "start address" is 0004H and the "data number" is 0002H, the data of 0004H and 0005H will be read. 

**CRC** occupies 2 bytes with the fact that the high bit is in the front and the low bit is in the behind. 

**RTU** slave response message (from the VFD to the master) 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|01H|
|CMD|03H|
|Byte number|04H|
|Data high bit of address 0004H|13H|
|Data low bit of address 0004H|88H|
|Data high bit of address 0005H|00H|
|Data low bit of address 0005H|00H|
|CRC CHK low bit|7EH|
|CRC CHK high bit|9DH|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



The meaning of the response is that: 

**ADDR** = 01H means the command message is sent to the VFD with the address of 01H and ADDR occupies one byte 

**CMD** =03H means the message is received from the VFD to the master for the response of reading command and CMD occupies one byte 

**"Byte number"** means all byte number from the byte(excluding the byte) to CRC byte(excluding the byte). 04 means there are 4 byte of data from the "byte number" to "CRC CHK low bit", which are "digital address 0004H high bit", "digital address 0004H low bit", "digital address 0005H high bit" and "digital address 0005H low bit". 

There are 2 bytes stored in one data with the fact that the high bit is in the front and the low bit is in the behind of the message, the data of data address 0004H is 1388H, and the data of data address 0005H is 0000H. 

CRC occupies 2 bytes with the fact that the high bit is in the front and the low bit is in the behind. 

-132- 

GD200A series VFD 

Communication protocol 

###### **9.4.1.2 Command code: 06H** 

06H (correspond to binary 0000 0110), write one word (Word) 

The command means that the master write data to the VFD and one command can write one data other than multiple dates. The effect is to change the working mode of the VFD. 

For example, write 5000 (1388H) to 0004H from the VFD with the address of 02H, the frame structure is as below: 

RTU master command message (from the master to the VFD) 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|02H|
|CMD|06H|
|High bit of write data address|00H|
|Low bit of write data address|04H|
|High bit of data content|13H|
|Low bit of data content|88H|
|CRC CHK low bit|C5H|
|CRC CHK high bit|6EH|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



RTU slave response message (from the VFD to the master) 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|02H|
|CMD|06H|
|High bit of writingdata address|00H|
|Low bit of writingdata address|04H|
|High bit of data content|13H|
|Low bit of data content|88H|
|CRC CHK low bit|C5H|
|CRC CHK high bit|6EH|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



**Note:** section 9.4.1.1 and 9.4.1.2 mainly describe the command format, and the detailed application will be mentioned in 9.6 with examples. 

###### **9.4.1.3 Command code 08H for diagnosis** 

Meaning of sub-function codes 

|Sub-function Code|Description|
|---|---|
|0000|Return to inquire information data|



For example: The inquiry information string is same as the response information string when the loop detection to address 01H of driver is carried out. 

-133- 

GD200A series VFD 

Communication protocol 

The RTU request command is: 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|01H|
|CMD|08H|
|High bit of sub-function code|00H|
|Low bit of sub-function code|00H|
|High bit of data content|12H|
|Low bit of data content|ABH|
|Low bit of CRC|ADH|
|High bit of CRC|14H|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



The RTU response command is: 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|01H|
|CMD|08H|
|High bit of sub-function code|00H|
|Low bit of sub-function code|00H|
|High bit of data content|12H|
|Low bit of data content|ABH|
|Low bit of CRC|ADH|
|High bit of CRC|14H|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



###### **9.4.1.4 Command code: 10H, continuous writing** 

Command code 10H means that if the master writes data to the VFD, the data number depends on the "data number" in the command code. The max. continuous reading number is 16. 

For example, write 5000(1388H) to 0004H of the VFD whose slave address is 02H and 50(0032H) to 0005H, the frame structure is as below: 

The RTU request command is: 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|02H|
|CMD|10H|
|High bit of write data|00H|
|Low bit of write data|04H|
|High bit of data number|00H|
|Low bit of data number|02H|
|Byte number|04H|
|High bit of data 0004H|13H|



-134- 

GD200A series VFD 

Communication protocol 

|Low bit of data 0004H|88H|
|---|---|
|High bit of data 0005H|00H|
|Low bit of data 0005H|32H|
|Low bit of CRC|C5H|
|High bit of CRC|6EH|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



The RTU response command is: 

|START|T1-T2-T3-T4(transmission time of 3.5 bytes)|
|---|---|
|ADDR|02H|
|CMD|10H|
|High bit of write data|00H|
|Low bit of write data|04H|
|High bit of data number|00H|
|Low bit of data number|02H|
|Low bit of CRC|C5H|
|High bit of CRC|6EH|
|END|T1-T2-T3-T4(transmission time of 3.5 bytes)|



###### **9.4.2 ASCII mode** 

###### **9.4.2.1 Command code: 03H (0000 0011), read N words (Word) (N** ≤ **16 words)** 

For instance: As for the VFD whose slave address is 01H, the starting address of internal storage is 0004, read two words continuously, the structure of this frame is listed as below: 

|**ASCII master command**<br>**command sent from mas**|**message (the**<br>**ter to the VFD**|**ASCII slave response**<br>**message sent from VFD**|**message (the**<br>**to the master)**|
|---|---|---|---|
|START|‘: ’|START|‘: ’|
|ADDR|‘0’|ADDR|‘0’|
||‘1’||‘1’|
|CMD|‘0’|CMD|‘0’|
||‘3’||‘3’|
|High bit of starting|‘0’|Bte nmber|‘0’|
|address|‘0’|y u|‘4’|
|Low bit of starting|‘0’|High bit of data address|‘1’|
|address|‘4’|0004H|‘3’|
|Hih bit of data number|‘0’|Low bit of data address|‘8’|
|g|‘0’|0004H|‘8’|
|L bit f dt b|‘0’|High bit of data address|‘0’|
|ow  o aa numer|‘2’|0005H|‘0’|
|LRC CHK Hi|‘F’|Low bit of data address|‘0’|
|LRC CHK Lo|‘6’|0005H|‘0’|



-135- 

GD200A series VFD 

Communication protocol 

|**ASCII master command message (the**<br>**command sent from master to the VFD**|**ASCII slave respons**<br>**message sent from V**|**e message (the**<br>**FD to the master)**|
|---|---|---|
|END Hi<br>CR|LRC CHK Hi|‘5’|
|END Lo<br>LF|LRC CHK Lo|‘D’|
||END Hi|CR|
||END Lo|LF|



###### **9.4.2.2 Command code: 06H (0000 0110), write one word (Word)** 

For instance: Write 5000 (1388H) to the 0004H address of the VFD whose slave address is 02H, then the structure of this frame is listed as below: 

|**ASCII master command**<br>**command sent by the ma**|**message (the**<br>**ster to the VFD)**|**ASCII slave response mess**<br>**sent by the VFD to t**|**age (the message**<br>**he master)**|
|---|---|---|---|
|START|‘: ’|START|‘: ’|
||‘0’||‘0’|
|ADDR||ADDR||
||‘2’||‘2’|
|CMD|‘0’|CMD|‘0’|
||‘6’||‘6’|
|Hih i f i|‘0’|Hih i f i|‘0’|
|g bt o wrte data|‘0’|g bt o wrte data|‘0’|
|L i f i|‘0’|L i f i|‘0’|
|ow bt o wrte data||ow bt o wrte data||
||‘4’||‘4’|
||‘1’||‘1’|
|High bit of data content|‘3’|High bit of data content|‘3’|
||‘8’||‘8’|
|Low bit of data content|‘8’|Low bit of data content|‘8’|
|LRC CHK Hi|‘5’|LRC CHK Hi|‘5’|
|LRC CHK Lo|‘9’|LRC CHK Lo|‘9’|
|END Hi|CR|END Hi|CR|
|END Lo|LF|END Lo|LF|



###### **9.4.2.3 Command code: 08H (0000 1000), diagnose function** 

Meaning of sub function code: 

|**Sub function code**|**Instruction**|
|---|---|
|0000|Return inquirymessage data|



For instance: carry out circuit detection on drive address 01H, the content of inquiry message word string is the same with response message word string, its format is listed as below: 

|**ASCII master command message (the**<br>**command sent by the master to the VFD)**|**ASCII slave response message (the message**<br>**sent by the VFD to the master)**|
|---|---|
|START<br>‘: ’|START<br>‘: ’|



-136- 

GD200A series VFD 

Communication protocol 

|**ASCII master command**<br>**command sent by the ma**|**message (the**<br>**ster to the VFD)**|**ASCII slave response mess**<br>**sent by the VFD to t**|**age (the message**<br>**he master)**|
|---|---|---|---|
|ADDR|‘0’|ADDR|‘0’|
||‘1’||‘1’|
|CMD|‘0’|CMD|‘0’|
||‘8’||‘8’|
|High bit of write data|‘0’|High bit of write data|‘0’|
|address|‘0’|address|‘0’|
|Low bit of write data|‘0’|Low bit of write data|‘0’|
|address|‘0’|address|‘0’|
||‘1’||‘1’|
|High bit of data content|‘2’|High bit of data content|‘2’|
|L bi f d|‘A’|L bi f d|‘A’|
|ow t o ata content|‘B’|ow t o ata content|‘B’|
|LRC CHK Hi|‘3’|LRC CHK Hi|‘3’|
|LRC CHK Lo|‘A’|LRC CHK Lo|‘A’|
|END Hi|CR|END Hi|CR|
|END Lo|LF|END Lo|LF|



###### **9.4.2.4 Command code: 10H, continuous writing function** 

Command code 10H means the master write data to the VFD, the number of data being written is determined by the command "data number", the max. number of continuous writing is 16 words. 

For instance: Write 5000 (1388H) to 0004H of the VFD whose slave address is 02H, write 50 (0032H) to 0005H of the VFD whose slave address is 02H, then the structure of this frame is listed as below: 

|**ASCII master command**<br>**command sent by the ma**|**message (the**<br>**ster to the VFD)**|**ASCII slave response mess**<br>**sent by the VFD to t**|**age (the message**<br>**he master)**|
|---|---|---|---|
|START|': '|START|': '|
|ADDR|'0'|ADDR|'0'|
||'2'||'2'|
|CMD|'1'|CMD|'1'|
||'0'||'0'|
|High bit of starting|'0'|High bit of starting|'0'|
|address|'0'|address|'0'|
|Low bit of starting|'0'|Low bit of starting|'0'|
|address|'4'|address|'4'|
|Hih bit f dt b|'0'|Hih bit f dt b|'0'|
|g  o aa numer|'0'|g  o aa numer|'0'|
|L bit f dt b|'0'|L bit f dt b|'0'|
|ow  o aa numer|'2'|ow  o aa numer|'2'|



-137- 

GD200A series VFD 

Communication protocol 

|**ASCII master command**<br>**command sent by the ma**|**message (the**<br>**ster to the VFD)**|**ASCII slave response me**<br>**sent by the VFD t**|**ssage (the message**<br>**o the master)**|
|---|---|---|---|
|Bte number|'0'|LRC CHK Hi|'E'|
|y|'4'|LRC CHK Lo|'8'|
|High bit of data 0004H|'1'|END Hi|CR|
|content|'3'|END Lo|LF|
|Low bit of data 0004H|'8'|||
|content|'8'|||
|High bit of data 0005H|'0'|||
|content|'0'|||
|Low bit of data 0005H|'3'|||
|content|'2'|||
|LRC CHK Hi|'1'|||
|LRC CHK Lo|'7'|||
|END Hi|CR|||
|END Lo|LF|||



###### **9.5 The definition of data address** 

The address definition of the communication data in this part is to control the running of the VFD and get the state information and relative function parameters of the VFD. 

###### **9.5.1 The rules of parameter address of the function codes** 

The parameter address occupies 2 bytes with the fact that the high bit is in the front and the low bit is — – — – in the behind. The range of high and low byte are: high byte 00 ffH; low byte 00 ffH. The high byte is the group number before the radix point of the function code and the low byte is the number after the radix point. But both the high byte and the low byte should be changed into hex. For example P05.06, the group number before the radix point of the function code is 05, then the high bit of the parameter is 05, the number after the radix point 05, then the low bit of the parameter is 06, then the function code address is 0506H and the parameter address of P10.01 is 0A01H. 

|**Function code**|**Name**|**Parameter description**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P10.00|Simple PLC<br>means|0: Stop after running once.<br>1: Run at the final value after running<br>once.<br>2.Cyclerunning.|0|○|
|P10.01|Simple PLC<br>memory<br>selection|0: Power loss without memory<br>1: Power loss: PLC record the running<br>stage andfrequencywhenpower loss.|0|○|



**Note:** P29 group is the factory parameter which cannot be read or changed. Some parameters cannot be changed when the VFD is in the running state and some parameters cannot be changed in any state. The setting range, unit and relative instructions should be paid attention to when modifying the function code parameters. 

-138- 

GD200A series VFD 

Communication protocol 

Besides, EEPROM is stocked frequently, which may shorten the usage time of EEPROM. For users, some functions are not necessary to be stocked on the communication mode. The needs can be met on by changing the value in RAM. Changing the high bit of the function code form 0 to 1 can also realize the function. For example, the function code P00.07 is not stocked into EEPROM. Only by changing the value in RAM can set the address to 8007H. This address can only be used in writing RAM other than reading. If it is used to read, it is an invalid address. 

###### **9.5.2 The address instruction of other function in MODBUS** 

The master can operate on the parameters of the VFD as well as control the VFD, such as running or stopping and monitoring the working state of the VFD. 

The following table shows the parameter list of other functions: 

|**Function**<br>**instruction**<br>**Address**<br>**definition**|**Data meaning instruction**|**R/W**<br>**characteristics**|
|---|---|---|
||0001H: forward running<br>0002H: reverse running||
||0003H: forwardjogging||
|Communication<br>2000H|0004H: reversejogging|R/W|
|control command<br>|0005H: stop||
||0006H: coast to stop||
||0007H: fault reset||
||0008H:joggingstop||
|2001H|Communication setting frequency (0–Fmax<br>(unit: 0.01Hz))||
|2002H|PID reference, range (0–1000, 1000<br>corresponds to100.0%)|R/W|
|2003H|PID feedback, range (0–1000, 1000<br>corresponds to100.0%)|R/W|
|The address of<br> <br>2004H|Torque setting value (-3000–3000, 1000<br>corresponds to the 100.0% of the rated current<br>of the motor)|R/W|
|the<br>communication n<br>setting value<br>2005H|The upper limit frequency setting during<br>forward rotation(0–Fmax(unit: 0.01Hz))|R/W|
|<br>2006H|The upper limit frequency setting during<br>reverse rotation(0–Fmax(unit: 0.01Hz))|R/W|
|2007H|The upper limit torque of electromotion torque<br>(0–3000, 1000 corresponds to the 100.0% of<br>the rated current of the motor)|<br>R/W|
|2008H|The upper limit torque of braking torque<br>(0–3000, 1000 corresponds to the 100.0% of<br>the rated current of the motor)|R/W|



-139- 

GD200A series VFD 

Communication protocol 

|**Function**<br>**instruction**|**Address**<br>**definition**|**Data meaning instruction**|**R/W**<br>**characteristics**|
|---|---|---|---|
||2009H|Special control command word<br>Bit0–1: =00: motor 1   =01: motor 2<br>=10: motor 3   =11: motor 4<br>Bit2: =1 torque control  =0: speed control|R/W|
||200AH|Virtual input terminal command , range:<br>0x000–0x1FF|R/W|
||200BH|Virtual output terminal command , range:<br>0x00–0x0F|R/W|
||200CH|Voltage setting value(special for V/F<br>separation)<br>(0–1000, 1000 corresponds to the 100.0% of<br>the rated voltage of the motor)|R/W|
||200DH|AO output setting 1 (-1000–1000, 1000<br>corresponds to 100.0%)|R/W|
||200EH|AO output setting 2(-1000–1000, 1000<br>corresponds to 100.0%)|R/W|
|||0001H: forward running||
|||0002H: forward running||
|SW 1 of the VFD|2100H|0003H: stop<br>0004H: fault|R|
|||0005H: POFF state||
|SW 2 of the VFD|2101H|Bit0: =0: bus voltage is not established  =1:<br>bus voltage is established<br>Bi1–2: =00: motor 1   =01: motor 2<br>=10: motor 3   =11: motor 4<br>Bit3:  =0: asynchronous motor  =1:<br>synchronous motor<br>Bit4: =0: pre-alarm without overload =1:<br>overload pre-alarm<br>Bit5– Bit6: =00: keypad control<br>=01: terminal control<br>=10: communication control|R|
|Fault code of the<br>VFD|2102H|See the fault type instruction|R|
|Identifying code<br>of the VFD|2103H|GD200A -----0x0107|R|
|Operation<br>frequency|3000H|Range: 0.00Hz–P00.03|R|
|Setting<br>frequency|3001H|Range: 0.00Hz–P00.03|R|



-140- 

GD200A series VFD 

Communication protocol 

|**Function**<br>**instruction**|**Address**<br>**definition**|**Data meaning instruction**|**R/W**<br>**characteristics**|
|---|---|---|---|
|Bus voltage|3002H|Range: 0–1200V|R|
|Output voltage|3003H|Range: 0–1200V|R|
|Output current|3004H|Range: 0.0–5000.0A|R|
|Operation speed|<br>3005H|Range: 0–65535RPM|R|
|Outputpower|3006H|Range: -300.0–300.0%|R|
|Output torque|3007H|Range: 0–65535RPM|R|
|Close loop<br>setting|3008H|Range: -100.0%–100.0%|R|
|Close loop<br>feedback|3009H|Range: -100.0%–100.0%|R|
|Input IO state|300AH|Range: 0000–00FF|R|
|Output IO state|300BH|Range: 0000–00FF|R|
|AI 1|300CH|Range: 0.00–10.00V|R|
|AI 2|300DH|Range: 0.00–10.00V|R|
|AI 3|300EH|Range: 0.00–10.00V|R|
|AI 4|300FH|Reserved|R|
|Read high speed<br>pulse 1 input|3010H|Range: 0.00–50.00kHz|R|
|Read high speed<br>pulse 2 input|3011H|Reserved|R|
|Read current<br>step of multi-step<br>speed|3012H|Range: 0–15|R|
|External length|3013H|Range: 0–65535|R|
|External<br>countingvalue|3014H|Range: 0–65535|R|
|Torque setting|3015H|Range: 0–65535|R|
|VFD code|3016H||R|
|Fault code|5000H||R|



R/W characteristics means the function is with read and write characteristics. For example, "communication control command" is writing chrematistics and control the VFD with writing command (06H). R characteristic can only read other than write and W characteristic can only write other than read. 

**Note:** when operate on the VFD with the table above, it is necessary to enable some parameters. For example, the operation of running and stopping, it is necessary to set P00.01 to communication running command channel and set P00.02 to MODBUS communication channel. And when operate on "PID reference", it is necessary to set P09.00 to "MODBUS communication setting". 

The encoding rules for device codes (corresponds to identifying code 2103H of the VFD) 

-141- 

GD200A series VFD 

Communication protocol 

|**Code high 8**<br>**bit**|**Meaning**|**Code low 8 bit**|**Meaning**|
|---|---|---|---|
|||0x08|GD35 vector VFDs|
|||0x09|GD35-H1 vector VFDs|
|01|GD|0x0a|GD300 vector VFDs|
|||0x0b|GD100 simple vector VFDs|
|||0x0c|GD200Ageneral VFDs|
|||0x0d|GD10 mini VFDs|



**Note:** The code is consisted of 16 bits including high 8 bits and low 8 bits. High 8 bits mean the motor type series and low 8 bits mean the derived motor types of the series. For example, 0110H means Goodrive200A vector VFDs. 

###### **9.5.3 Fieldbus ratio values** 

The communication data is expressed by hex in actual application and there is no radix point in hex. For example, 50.12Hz cannot be expressed by hex so 50.12 can be magnified by 100 times into 5012, so hex 1394H can be used to express 50.12. 

A non-integer can be timed by a multiple to get an integer and the integer can be called fieldbus ratio values. 

The fieldbus ratio values are referred to the radix point of the setting range or default value in the 

function parameter list. If there are figures behind the radix point (n=1), then the fieldbus ratio value 

> m is 10<sup>_n_</sup> . Take the table as the example: 

|**Function**<br>**code**|**Name**|**Details**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|
|P01.20|Wake-up from sleep<br>delaytime|0.0–3600.0s (valid when P01.19=2)|0.0s|○|
|P01.21|Restart after power off|<sup>0: Disable</sup><br>1: Enable|0|○|



If there is one figure behind the radix point in the setting range or the default value, then the fieldbus ratio value is 10. If the data received by the upper monitor is 50, then the "hibernation restore delay time" is 5.0 (5.0=50÷10). 

If MODBUS communication is used to control the hibernation restore delay time as 5.0s. Firstly, 5.0 can be magnified by 10 times to integer 50 (32H) and then this data can be sent. 

VFD Write Parameters Data CRC address command address number check 

After the VFD receives the command, it will change 50 into 5 according to the fieldbus ratio value and then set the hibernation restore delay time as 5s. 

Another example, after the upper monitor sends the command of reading the parameter of 

-142- 

GD200A series VFD 

Communication protocol 

hibernation restore delay time, if the response message of the VFD is as following: 

VFD Read 2-byte Parameters CRC check address command data data 

Because the parameter data is 0032H (50) and 50 divided by 10 is 5, then the hibernation restore delay time is 5s. 

###### **9.5.4 Fault message response** 

There may be fault in the communication control. For example, some parameter can only be read. If a writing message is sent, the VFD will return a fault response message. 

The fault message is from the VFD to the master, its code and meaning is as follows: 

|**Code**|**Name**|**Meaning**|
|---|---|---|
|01H|Illegal command|<br>The command from master cannot be executed. The reason maybe:<br>1. This command is only for new version and this version cannot<br>realize.<br>2. Slave is in fault state and cannot execute it.|
|02H|Illegal data<br>address.|Some of the operation addresses are invalid or not allowed to access.<br>Especially the combination of the register and the transmitting bytes<br>are invalid.|
|03H|Illegal value|When there are invalid data in the message framed received by slave.<br>**Note:**This error code does not indicate the data value to write exceed<br>the range,but indicate the message frame is an illegal frame.|
|04H|Operation failed|<sup>The parameter setting in parameter writing is invalid. For example, the</sup><br>function input terminal cannot be set repeatedly.|
|05H|Password error|<sup>The password written to the password check address is not same as</sup><br>thepassword set byP07.00.|
|06H|Data frame error|<br>In the frame message sent by the upper monitor, the length of the<br>digital frame is incorrect or the counting of CRC check bit in RTU is<br>different from the lower monitor.|
|07H|Written not<br>allowed.|It only happen in write command, the reason maybe:<br>1. The written data exceeds the parameter range.<br>2. The parameter should not be modified now.<br>3. The terminal has alreadybeen used.|
|08H|The parameter<br>cannot be<br>changed during<br>running|The modified parameter in the writing of the upper monitor cannot be<br>modified during running.|
|09H|Password<br>protection|When the upper monitor is writing or reading and the user password is<br>set withoutpassword unlocking,it will report that the system is locked.|



-143- 

GD200A series VFD 

Communication protocol 

The slave uses functional code fields and fault addresses to indicate it is a normal response or some error occurs (named as objection response). For normal responses, the slave shows corresponding function codes, digital address or sub-function codes as the response. For objection responses, the slave returns a code which equals the normal code, but the first byte is logic 1. 

For example: when the master sends a message to the slave, requiring it to read a group of address data of the VFD function codes, there will be following function codes: 



For normal responses, the slave responds the same codes, while for objection responses, it will return: 



Besides the function codes modification for the objection fault, the slave will respond a byte of abnormal code which defines the error reason. 

When the master receives the response for the objection, in a typical processing, it will send the message again or modify the corresponding order. 

For example, set the "running command channel" of the VFD (P00.01, parameter address is 0001H) with the address of 01H to 03, the command is as following: 

**<u>01 06 00 01 00 03 98 0B</u>** VFD Write Parameters Parameters CRC check address command address data 

But the setting range of "running command channel" is 0–2, if it is set to 3, because the number is beyond the range, the VFD will return fault response message as below: 

VFD Abnormal Fault code CRC check address response code 

Abnormal response code 86H means the abnormal response to writing command 06H; the fault code is 04H. In the table above, its name is operation failed and its meaning is that the parameter setting in parameter writing is invalid. For example, the function input terminal cannot be set repeatedly. 

###### **9.6 Example of writing and reading** 

Refer to 9.4.1 and 0 for the command format. 

###### **9.6.1 Example of reading command 03H** 

Read the state word 1 of the VFD with the address of 01H (refer to the parameter list in 9.5.2). From the table 1, the parameter address of the state word 1 of the VFD is 2100H. 

-144- 

GD200A series VFD 

Communication protocol 

###### **RTU mode:** 

The command sent to the VFD: 



<!-- Start of picture text -->
VFD Read Parameters<br>Data number CRC check<br>address command address<br><!-- End of picture text -->

The response message may be as follows: 



<!-- Start of picture text -->
VFD Read Data Data content CRC check<br>address command address<br><!-- End of picture text -->

###### **ASCII mode:** 

The command sent to the VFD: 



<!-- Start of picture text -->
VFD Read Parameters Data LRC<br>address command address number check<br><!-- End of picture text -->

If the operation is successful, the response may be as follows: 



<!-- Start of picture text -->
VFD Read Byte Data LRC<br>address command number content check<br><!-- End of picture text -->

The data content is 0003H, which indicates the VFD is in the stopped state. 

###### **9.6.2 Example of writing command 06H** 

Example 1: make the VFD with the address of 03H to run forward. Refer to the table of other function parameters, the address of "communication control command" is 2000H and forward running is 0001. See the following table. 

|**Function instruction**<br>**Address**<br>**definition**|**Data meaning instruction**|**R/W characteristics**|
|---|---|---|
||0001H: forward running||
||0002H: reverse running||
||0003H: forwardjogging||
|Cmmnitin|0004H: reversejogging||
|oucao<br>control command<br>2000H|0005H: stop|R/W|
||0006H: coast to stop<br>(emergencystop)||
||0007H: fault reset||
||0008H:joggingstop||



-145- 

GD200A series VFD 

Communication protocol 

###### **RTU mode:** 

The command sent by the master: 

VFD Write Parameters Forward CRC check address command address running 

If the operation is successful, the response may be as follows (the same with the command sent by the master): 

VFD Write Parameters Forward CRC check address command address running 

###### **ASCII mode:** 

The command sent to the VFD: 

VFD Write Parameters Data LRC address command address number check 

If the operation is successful, the response may be as follows (the same with the command sent by the master): 

VFD Write Parameters Data LRC address command address number check 

Example 2: set the max. output frequency of the VFD with the address of 03H as100Hz. 

|**Function**<br>**code**|**Name**|**Details**|**Setting range**|**Default**<br>**value**|**Modify**|
|---|---|---|---|---|---|
|P00.03|Max output<br>frequency|P00.04–600.00Hz<br>(400.00Hz)|10.00–600.00|50.00Hz|◎|



See the figures behind the radix point, the fieldbus ratio value of the max. output frequency (P00.03) is 100. 100Hz timed by 100 is 10000 and the corresponding hex is 2710H. 

###### **RTU mode:** 

The command sent by the master: 

VFD Write Parameters Forward running CRC check address command address 

-146- 

GD200A series VFD 

Communication protocol 

If the operation is successful, the response may be as below (the same with the command sent by the master): 

VFD Write Parameters Forward running CRC check address command address 

###### **ASCII mode:** 

The command sent to the VFD: 



<!-- Start of picture text -->
VFD Write Parameters Data LRC<br>address command address number check<br><!-- End of picture text -->

If the operation is successful, the response may be as follows (the same with the command sent by the master): 



<!-- Start of picture text -->
VFD Write Parameters Data LRC<br>address command address number check<br><!-- End of picture text -->

###### **9.6.3 Example of continuous writing command 10H** 

Example 1: make the VFD whose address is 01H run forward at 10Hz. Refer to the instruction of 2000H and 0001. Set the address of "communication setting frequency" is 2001H and 10Hz corresponds to 03E8H. See the table below. 

|**Function**<br>**instruction**<br>**Address**<br>**definition**|**Data meaning instruction**|**R/W**<br>**characteristics**|
|---|---|---|
||0001H: forward running||
||0002H: reverse running||
||0003H: forwardjogging||
|Communication<br>l<br>2H|0004H: reversejogging|RW|
|contro<br>d<br>000|0005H: stop|/|
|comman|0006H: coast to stop||
||0007H: fault reset||
||0008H:joggingstop||
|The address of<br>mmnitin<br>2001H|Communication setting frequency(0–Fmax(unit:<br>0.01Hz))|R/W|
|coucao<br>setting<br>2002H|PID given, range(0–1000, 1000 corresponds<br>to100.0%)||



###### **RTU mode:** 

The command sent to the VFD: 

-147- 

GD200A series VFD 

Communication protocol 

VFD Continuous Parameters Data Byte Forward 10Hz address writing address number number running CRC check command 

If the operation is successful, the response may be as follows: 

VFD Continuous Parameters Data CRC check address writing address number command 

###### **ASCII mode:** 

The command sent to the VFD: 



<!-- Start of picture text -->
Continuous<br>VFD Parameters Data Byte Forward  LRC<br>address commandwriting address number number running check<br><!-- End of picture text -->

If the operation is successful, the response may be as follows: 



<!-- Start of picture text -->
VFD Continuous  Parameters Data LRC<br>address writing address number check<br>command<br><!-- End of picture text -->

Example 2: set the ACC time of 01H VFD as 10s and the DEC time as 20s 

|**Function**<br>**code**|**Name**|**Parameter description**|**Default value**|**Modify**|
|---|---|---|---|---|
|P00.11|Acceleration time 1|Setting range of P00.11 and|Dd  dl|<br>○|
|P00.12|Deceleration time 1|P00.12: 0.0–3600.0s|epen on moe|<br>○|



The corresponding address of P00.11 is 000B, the ACC time of 10s corresponds to 0064H, and the DEC time of 20s corresponds to 00C8H. 

###### **RTU mode:** 

The command sent to the VFD: 



<!-- Start of picture text -->
VFD Continuous  Parameters Data Byte 10s 20s<br>address writing address number number CRC check<br>command<br><!-- End of picture text -->

-148- 

GD200A series VFD 

Communication protocol 

If the operation is successful, the response may be as follows: 



<!-- Start of picture text -->
VFD Continuous  Parameters Data<br>CRC check<br>address writing address number<br>command<br>The command sent to the VFD:<br>VFD Continuous  Parameters Data LRC<br>address commandwriting address number check<br>If the operation is successful, the response may be as follows:<br>VFD Continuous  Parameters Data LRC<br>address commandwriting address number check<br><!-- End of picture text -->

###### **ASCII mode:** 

The command sent to the VFD: 

If the operation is successful, the response may be as follows: 

**Note:** The blank in the above command is for illustration. The blank cannot be added in the actual application unless the upper monitor can remove the blank by themselves. 

-149- 

GD200A series VFD 

Technical data 

##### **Appendix A Technical data** 

###### **A.1 What this chapter contains** 

This chapter contains the technical specifications of the VFD, as well as provisions for fulfilling the requirements for CE and other marks. 

###### **A.2 Ratings** 

###### **A.2.1 Capacity** 

VFD sizing is based on the rated motor current and power. To achieve the rated motor power reference in the table, the rated current of the VFD must be higher than or equal to the rated motor current. Also the rated power of the VFD must be higher than or equal to the rated motor power. The power ratings are the same regardless of the supply voltage within one voltage range. 

###### **Note:** 

**1.** The maximum allowed motor shaft power is limited to 1.5 · PN. If the limit is exceeded, motor torque and current are automatically restricted. The function protects the input bridge of the drive against overload. 

**2.** The ratings apply at ambient temperature of 40 °C 

**3.** It is important to check that in Common DC systems the power flowing through the common DC connection does not exceed PN. 

###### **A.2.2 Derating** 

The load capacity decreases if the installation site ambient temperature exceeds 40 °C, the altitude exceeds 1000 meters or the switching frequency is changed from 4 kHz to 8, 12 or 15 kHz. 

###### **A.2.2.1 Temperature derating** 

In the temperature range +40 °C–+50 °C, the rated output current is decreased by 1% for every additional 1 °C. Refer to the below list for the actual derating. 



<!-- Start of picture text -->
Derating coefficient (%)<br>10 0<br>90<br>80<br>60<br>40<br>20<br>Temperature ( ℃ )<br>-10 0 10 20 30 40 50<br><!-- End of picture text -->

###### **A.2.2.2 Altitude derating** 

The device can output rated power if the installation site below 1000m. The output power decreases if the altitude exceeds 1000 meters. When the installation site altitude exceeds 1000m, derate 1% for every increase of 100m; when the installation site altitude exceeds 3000m, consult the local INVT dealer or office. 

-150- 

GD200A series VFD 

Technical data 

###### **A.2.2.3 Carrier frequency derating** 

For Goodrive200A series VFDs, different power level corresponds to different carrier frequency range. The rated power of the VFD is based on the factory carrier frequency, so if it is above the factory value, the VFD needs to derate 10% for every additional 1 kHz carrier frequency. 

###### **A.3 Electric power network specification** 

|**Voltage**|AC 3PH 380(-15%)–440(+10%)|
|---|---|
|**Short-circuit capacity**|Maximum allowed prospective short-circuit current at the input power<br>connection as defined in IEC 60439-1 is 100 kA. The drive is suitable for<br>use in a circuit capable of delivering not more than 100 kA at the drive<br>maximum rated voltage.|
|**Frequency**|50/60 Hz ± 5%,maximum rate of change 20%/s|



###### **A.4 Motor connection data** 

|**Motor type **|Asynchronous inductance motor|
|---|---|
|**Voltage **|0 to U1,3-phase symmetrical,Umax at the field weakening point|
|**Short-circuit**<br>**protection**|The motor output is short-circuit proof by IEC 61800-5-1|
|**Frequency**|0...400 Hz|
|**Frequency resolution**|0.01 Hz|
|**Current**|Refer to Ratings|
|**Power limit**|1.5 · PN|
|**Field weakening point**|10...400 Hz|
|**Carrier frequency  **|4,8,12 or 15 kHz|



###### **A.4.1 EMC compatibility and motor cable length** 

To comply with the European EMC Directive (2004/108/EC), use the following maximum motor cable lengths for 4 kHz carrier frequency. 

|**All models(with external EMC filters)**|**Maximum motor cable length(m)**|
|---|---|
|Environment categoryII(categoryC3)|30|



Maximum motor cable length is determined by the drive's operational factors. Contact your local INVT representative for the exact maximum lengths when using external EMC filters. 

###### **A.5 Applicable standards** 

The VFD complies with the following standards: 

Safety of machinery-safety related parts of control systems - Part EN ISO 13849-1 1: general principles for design Safety of machinery. Electrical equipment of machines. Part 1: IEC/EN 60204-1 General requirements. 

-151- 

GD200A series VFD 

Technical data 

|IEC/EN 62061|Safety of machinery – Functional safety of safety-related electrical,<br>electronic and programmable electronic control systems|
|---|---|
|IEC/EN 61800-3|Adjustable speed electrical power drives systems. Part 3: EMC<br>requirements and specific test methods|
|IEC/EN 61800-5-1|Adjustable speed electrical power drive systems – Part 5-1: Safety<br>requirements – Electrical, thermal and energy|
|IEC/EN 61800-5-2|Adjustable speed electrical power drive systems – Part 5-2: Safety<br>requirements. Functional.|
|GB/T 30844.1|General-purpose variable-frequency adjustable-speed equipment<br>of 1 kV and lower—Part 1: Technical conditions|
|GB/T 30844.2|General-purpose variable-frequency adjustable-speed equipment<br>of 1 kV and lower—Part 2: Test methods|
|GB/T 30844.3|General-purpose variable-frequency adjustable-speed equipment<br>of 1 kV and lower—Part 3: Safety regulations|



###### **A.5.1 CE marking** 

The CE mark is attached to the drive to verify that the drive follows the provisions of the European Low Voltage (2014/35/EU) and EMC Directives (2014/30/EU). 

###### **A.5.2 Compliance with the European EMC Directive** 

The EMC Directive defines the requirements for immunity and emissions of electrical equipment used within the European Union. The EMC product standard (EN 61800-3) covers requirements stated for drives. See section EMC regulations. 

###### **A.6 EMC regulations** 

EMC product standard (EN 61800-3) contains the EMC requirements to the VFD. 

First environment: domestic environment (includes establishments connected to a low-voltage network which supplies buildings used for domestic purposes). 

Second environment includes establishments connected to a network not directly supplying domestic premises. 

Four categories of the VFD: 

VFD of category C1: VFD of rated voltage less than 1000 V and used in the first environment. 

VFD of category C2: VFD of rated voltage less than 1000 V other than pins, sockets and motion devices and intended to be installed and commissioned only by a professional electrician when used in the first environment. 

###### **Note:** 

IEC/EN 61800-3 in EMC standard doesn't limit the power distribution of the VFD, but it defines the step, installation and commission. The professional electrician has necessary skills in installing and/or commissioning power drive systems, including their EMC aspects. 

-152- 

GD200A series VFD 

Technical data 

VFD of category C3: VFD of rated voltage less than 1000 V and used in the second environment other than the first one. 

VFD of category C4: VFD of rated voltage more than 1000 V or the rated current is above or equal to 400A and used in the complicated system in second environment. 

###### **A.6.1 Category C2** 

The emission limits are complied with the following provisions: 

1. The optional EMC filter is selected according to the options and installed as specified in the EMC filter manual. 

2. The motor and control cables are selected as specified in this manual. 

3. The drive is installed according to the instructions reference in this manual. 

4. For the maximum motor cable length, see EMC compatibility and motor cable length _._ 

 In a domestic environment, this product may cause radio inference, in which case supplementary mitigation measures may be required. 

###### **A.6.2 Category C3** 

The immunity performance of the drive complies with the demands of IEC/EN 61800-3, second environment. 

The emission limits are complied with the following provisions: 

1. The optional EMC filter is selected according to the options and installed as specified in the EMC filter manual. 

2. The motor and control cables are selected as specified in this manual. 

3. The drive is installed according to the instructions reference in this manual. 

4. For the maximum motor cable length, see EMC compatibility and motor cable length _._ 

 A drive of category C3 is not intended to be used on a low-voltage public network which supplies domestic premises. Radio frequency interference is expected if the drive is used on such a network. 

-153- 

GD200A series VFD 

Dimension drawings 

##### **Appendix B Dimension drawings** 

###### **B.1 What this chapter contains** 

Dimension drawings of the Goodrive200A are shown below. The dimensions are reference in millimeters. 

###### **B.2 Keypad structure** 

###### **B.2.1 Structure chart** 



<!-- Start of picture text -->
37 .1<br>7 1 .3 1 8<br>8.6<br>1 9 2 0 .4<br>5 8<br>71 .3<br>Dotted frame is keypad outline<br>Panel Keypad<br>2-M3×10 assembly screw<br>109.3 109.3 19<br>56<br>34.4<br>6.7<br><!-- End of picture text -->

Hole dimension and diagram for keypad installation without bracket 

###### **B.2.2 Installation chart** 

**Note:** The external keypad can be fixed by M3 screws directly or the installation bracket. The installation bracket for the 0R7G–030G/037P models is optional and the installation bracket for the 037G/045P–500G models is optional or substitutive by the external standard one. 





<!-- Start of picture text -->
Keypad bracket Customer installation dimension<br><!-- End of picture text -->

Figure B-1 Keypad Installation bracket (optional) 

-154- 

GD200A series VFD 

Dimension drawings 

###### Figure B-2 Keypad Installation bracket (standard configuration) for the 037G/045P–500G models **B.3 VFD chart** 

###### **B.3.1 Wall mounting** 

Figure B-3 Wall mounting for the 0R7G–015G/018P models 

|**VFD model**|**W1**|**W2**|**H1**|**H2**|**D1**|**Installation**<br>**hole**<br>**diameter**|**Weight (kg)**|
|---|---|---|---|---|---|---|---|
|0R7G–2R2G|126|115|186|175|155|5|1.9|
|004G/5R5P–5R5G/7R5P|146|131|256|243.5|171|6|3.2|
|7R5G/011P–015G/018P|170|151|320|303.5|199.6|6|5.9|



Figure B-4 Wall mounting for the 018G/022P–030G/037P models 

|**VFD model**|**W1**|**W2**|**H1**|**H2**|**D1**|**Installation**<br>**hole**<br>**diameter**|**Weight (kg)**|
|---|---|---|---|---|---|---|---|
|018G/022P|230|210|342|311|219.4|6|7.6|
|022G/030P–030G/037P|255|237|407|384|245.6|7|13|



-155- 

GD200A series VFD 

Dimension drawings 

Figure B-5 Wall mounting for the 037G/045P–110G/132P models 

|**VFD model**|**W1**|**W2**|**H1**|**H2**|**D1**|**Installation**<br>**hole**<br>**diameter**|**Weight (kg)**|
|---|---|---|---|---|---|---|---|
|037G/045P–055G/075P|270|130|555|540|332.6|7|30|
|075G/090P–110G/132P|325|200|680|661|373.6|9.5|47|



Figure B-6 Wall mounting for the 132G/160P–200G/220P models 

|**VFD model**|**W1**|**W2**|**H1**|**H2**|**D1**|**Installation**<br>**hole**<br>**diameter**|**Weight (kg)**|
|---|---|---|---|---|---|---|---|
|132G/160P–200G/220P|500|180|870|850|368.4|11|85|



Figure B-7 Wall mounting for the 220G/250P–315G/355P models 

-156- 

GD200A series VFD 

Dimension drawings 

|**VFD model**|**W1**|**W2**|**H1**|**H2**|**D1**|**Installation**<br>**hole**<br>**diameter**|**Weight (kg)**|
|---|---|---|---|---|---|---|---|
|220G/250P–315G/355P|680|230|960|926|387.9|13|135|



###### **B.3.2 Flange mounting** 

Figure B-8 Flange mounting for the 0R7G–015G/018P models 

|**VFD model**|**W1**|**W2**<br>**W3**|**W4**|<br>**H1**<br>**H2**<br>**H3**|**H4**<br>**D1**|**D2**|**Installation**<br>**hole**<br>**diameter**|<br>**Weight**<br>**(kg)**|
|---|---|---|---|---|---|---|---|---|
|0R7G–2R2G|150.2|<br>115<br>130|7.5|234<br>220<br>190<br>|13.5<br>155|65.5|<br>5|1.9|
|004G/5R5P–5R5G/7R5P|170.2|<br>131<br>150|9.5|292<br>276<br>260|6<br>171|84.5|<br>6|3.2|
|7R5G/011P–015G/018P|191.2|<br>151<br>174|11.5|<br>370<br>351<br>324|12<br>199.6|<br>113|6|5.9|



Figure B-9 Flange mounting for the 018G/022P–030G/037P models 

|**VFD model**<br>**W1**|**W2**<br>**W3**|**W4**<br>**H1**|**H2**|**H3**<br>**H4**<br>**D1**|**D2**|**Installation**<br>**hole**<br>**diameter**|<br>**Weight**<br>**(kg)**|
|---|---|---|---|---|---|---|---|
|018G/022P<br>250|<br>210<br>234|12<br>375|356|<br>334<br>10<br>219.4|<br>108|<br>6|7.6|
|022G/030P–030G/037P<br>275|<br>237<br>259|11<br>445|426|<br>404<br>10<br>245.6|<br>119|<br>7|13|



-157- 

GD200A series VFD 

Dimension drawings 

Figure B-10 Flange mounting for the 037G/045P–110G/132P models 

|**VFD model**<br>**W1**<br>**W2**|**W3**|<br>**W4**<br>**H1**|**H2**<br>**H3**<br>**H4**<br>**D1**|**D2**|**Installation**<br>**hole**<br>**diameter**|<br>**Weight**<br>**(kg)**|
|---|---|---|---|---|---|---|
|037G/045P–055G/075P<br>270<br>130|261|<br>65.5<br>555|<br>540<br>516<br>17<br>332.6|<br>167|<br>7|30|
|075G/090P–110G/132P<br>325<br>200|317|<br>58.5<br>680|<br>661<br>626<br>23<br>373.6|<br>182|<br>9.5|47|



Figure B-11 Flange mounting for the 132G/160P–200G/220P models 

|**VFD model**<br>**W1**|**W2**<br>**W3**<br>**W4**|<br>**H1**<br>**H2**<br>**H3**|**H4**<br>**D1**|**D2**|**Installation**<br>**hole**<br>**diameter**|<br>**Weight**<br>**(kg)**|
|---|---|---|---|---|---|---|
|132G/160P–200G/220P<br>500|<br>180<br>480<br>60|870<br>850<br>796|<br>37<br>368.4|178.5|<br>11|85|



-158- 

GD200A series VFD 

Dimension drawings 

###### **B.3.3 Floor mounting** 

Figure B-12 Floor mounting for the 220G/250P–315G/355P models 

|**VFD model**|**W1**|**W2**|**W3**|**W4**|**H1**|**H2**|**D1**|**D2**|**Installation**<br>**hole**<br>**diameter**|<br>**Weight**<br>**(kg)**|
|---|---|---|---|---|---|---|---|---|---|---|
|220G/250P–315G/355P|750|230|714|680|1410|1390|380|150|13\12|135|



Figure B-13 Floor mounting for the 355G/400P–500G models 

|**VFD model**|**W1**|**W2**|**W3**|**W4**|**H1**|**H2**|**D1**|**D2**|**Installation**<br>**hole**<br>**diameter**|<br>**Weight**<br>**(kg)**|
|---|---|---|---|---|---|---|---|---|---|---|
|355G/400P–500G|620|230|573|\|1700|1678|560|240|22\12|410|



-159- 

GD200A series VFD 

Peripheral options and parts 

##### **Appendix C Peripheral options and parts** 

###### **C.1 What this chapter contains** 

This chapter describes how to select the options and parts of Goodrive200A series. 

###### **C.2 Peripheral wiring** 

Below is the peripheral wiring of Goodrive200A series VFDs. 



<!-- Start of picture text -->
Upper PC<br>LED LCD software<br>RS485<br>485+<br>to RS232<br>485-<br>adapter PC<br>Standard Optional<br>Pow er supply<br>PB + - +<br>Circuit<br>breaker<br>P1<br>+<br>DC reactor<br>Input reactor<br>Braking<br>resistor Braking<br>Earth<br>unit<br>Input filter<br>Output filter<br>Output reactor<br>Motor<br>Earth<br><!-- End of picture text -->

###### **Note:** 

1. The 015G/018P and lower models have standard film keypad and the 018G/022P and higher models have standard LED keypad. 

2. The 030G/037P and lower models are embedded with braking unit. 

3. Only the 037G/045P and higher models have P1 terminal and are connected with DC reactors. 

4. The braking units apply standard braking unit DBU series in. Refer to the instruction of DBU for detailed information. 

|**Pictures**|**Name**|**Descriptions**|
|---|---|---|
||Cables|Device to transfer the electronic signals|



-160- 

GD200A series VFD 

Peripheral options and parts 

|**Pictures**|**Name**|**Descriptions**|
|---|---|---|
||Breaker|Prevent from electric shock and protect the power supply<br>and the cables system from overcurrent when short circuits<br>occur. (Please select the breaker with the function of<br>reducing high order harmonic and the rated sensitive<br>current to 1 VFD should be above 30mA).|
||Input<br>reactor|This device is used to improve the power factor of the input<br>side of the VFD and control the higher harmonic current.|
||DC reactor|The 037G/045P and higher models can be connected with<br>DC reactor.|
||Input filter|Control the electromagnetic interference generated from<br>the VFD, please install close to the input terminal side of<br>the VFD.|
|or|Braking<br>unit or<br>resistors|Shorten the DEC time<br>The 030G/037P and lower models only need braking<br>resistors and the 037G/045P and higher models need<br>brakingunits|
||Output<br>filter|Control the interference from the output side of the VFD<br>and please install close to the output terminals of the VFD.|
||Output<br>reactor|Prolong the effective transmitting distance of the VFD to<br>control the sudden high voltage when switching on/off the<br>IGBT of the VFD.|



###### **C.3 Power supply** 

Please see Installation guidelines. 

-  Check that the voltage degree of the VFD complies with the voltage of the supply power voltage. 

###### **C.4 Cables** 

###### **C.4.1 Power cables** 

Dimension the input power and motor cables according to local regulations. 

-  The input power and the motor cables must be able to carry the corresponding load currents. 

-  The cable must be rated for at least 70 °C maximum permissible temperature of the conductor in continuous use. 

-  The conductivity of the PE conductor must be equal to that of the phase conductor (same cross-sectional area). For the 030G/037P and higher models, the cross sectional area of the PE grounding conductor can be slightly less than the recommended area. 

-161- 

GD200A series VFD 

Peripheral options and parts 

######  Refer to chapter Technical data for the EMC requirements. 

A symmetrical shielded motor cable (see the figure below) must be used to meet the EMC requirements of the CE. 

A four-conductor system is allowed for input cabling, but a shielded symmetrical cable is recommended. Compared to a four-conductor system, the use of a symmetrical shielded cable reduces electromagnetic emission of the whole drive system as well as motor bearing currents and wear. 



<!-- Start of picture text -->
Symmetrical shielded cable Four conductor cable -<br>PEconductorandshield<br>Shield<br>Conductor<br>Conductor<br>Conductor Jacket<br>Jacket P E Jacket P E Insulation<br>Insulation Insulat ion<br><!-- End of picture text -->

**Note:** A separate PE conductor is required if the conductivity of the cable shield is not sufficient for the purpose. 

To function as a protective conductor, the shield must have the same cross-sectional area as the phase conductors when they are made of the same metal. 

To effectively suppress radiated and conducted radio-frequency emissions, the shield conductivity must be at least 1/10 of the phase conductor conductivity. The requirements are easily met with a copper or aluminum shield. The minimum requirement of the motor cable shield of the drive is shown below. It consists of a concentric layer of copper wires. The better and tighter the shield is, the lower the emission level and bearing currents. 



<!-- Start of picture text -->
Insulation course Wire screen<br>Cross-section of the cable<br><!-- End of picture text -->

###### **C.4.2 Control cables** 

All analog control cables and the cable used for the frequency input must be shielded. Use a double-shielded twisted pair cable (Figure a) for analog signals. Employ one individually shielded pair for each signal. Do not use common return for different analog signals. 





<!-- Start of picture text -->
Double-shielded twisted Single-shielded twisted<br>Multi-pair cable Multi-pair cable<br><!-- End of picture text -->

A double-shielded cable is the best alternative for low-voltage digital signals, but a single-shielded or unshielded twisted multi-pair cable (Figure b) is also usable. However, for frequency input, always 

-162- 

GD200A series VFD 

Peripheral options and parts 

use a shielded cable. 

The relay cable needs the cable type with braided metallic screen. 

The keypad needs to connect with cables. It is recommended to use the screen cable on complex electrical magnetic condition. 

###### **Note: Run analog and digital signals in separate cables.** 

Do not make any voltage tolerance or insulation resistance tests (for example hi-pot or megger) on any part of the drive as testing can damage the drive. Every drive has been tested for insulation between the main circuit and the chassis at the factory. Also, there are voltage-limiting circuits inside the drive which cut down the testing voltage automatically. 

Check the insulation of the input power cable according to local regulations before connecting to the drive. 

###### **Note: Check the insulation of the input power cables according to local regulations before connecting the cables.** 

||**Rec**|**ommende**|**d cable siz**|**e(mm**<sup>**2**</sup>**)**|**S**|**crew**|
|---|---|---|---|---|---|---|
||||||**Terminal**||
|**VFD model**|**R,S,T**<br>**U,V,W**|**PE**|**P1 (+)**|**PB (+) (-)**|**screw**<br>**size**|**Tightening**<br>**torque (Nm)**|
|GD200A-0R7G-4|1.0|1.0|1.0|1.0|M4|1.2–1.5|
|GD200A-1R5G-4|1.0|1.0|1.0|1.0|M4|1.2–1.5|
|GD200A-2R2G-4|1.0|1.0|1.0|1.0|M4|1.2–1.5|
|GD200A-004G/5R5P-4|1.5/1.5|1.5/1.5|1.5/1.5|1.5/1.5|M4|1.2–1.5|
|GD200A-5R5G/7R5P-4|1.5/2.5|1.5/2.5|1.5/2.5|1.5/2.5|M5|2–2.5|
|GD200A-7R5G/011P-4|2.5/4|2.5/4|2.5/4|2.5/4|M5|2–2.5|
|GD200A-011G/015P-4|4/6|4/6|4/6|4/6|M5|2–2.5|
|GD200A-015G/018P-4|6/10|6/10|6/10|6/10|M5|2–2.5|
|GD200A-018G/022P-4|10/10|10/10|10/10|10/10|M6|4–6|
|GD200A-022G/030P-4|10/16|10/16|10/16|10/16|M6|4–6|
|GD200A-030G/037P-4|16/25|16/25|16/25|16/25|M8|9–11|
|GD200A-037G/045P-4|25/25|16/16|25/25|25/25|M8|9–11|
|GD200A-045G/055P-4|25/35|16/16|25/35|25/35|M8|9–11|
|GD200A-055G/075P-4|35/50|16/25|35/50|35/50|M10|18–23|
|GD200A-075G/090P-4|50/70|25/35|50/70|50/70|M10|18–23|
|GD200A-090G/110P-4|70/95|35/50|70/95|70/95|M10|18–23|
|GD200A-110G/132P-4|95/95|50/50|95/95|95/95|M12|31–40|
|GD200A-132G/160P-4|95/150|50/70|95/150|95/150|M12|31–40|
|GD200A-160G/185P -4|150/185|70/95|150/185|150/185|M12|31–40|
|GD200A-185G/200P-4|185/<br>185|95/95|185/<br>185|185/<br>185|M12|31–40|



-163- 

GD200A series VFD 

Peripheral options and parts 

||**Rec**<br>|**ommende**|**d cable siz**|**e(mm**<sup>**2**</sup>**)**|**S**<br>**Terminal**|**crew**<br>|
|---|---|---|---|---|---|---|
|**VFD model**|**R,S,T**<br>**U,V,W**|**PE**|**P1 (+)**|**PB (+) (-)**|**screw**<br>**size**|**Tightening**<br>**torque (Nm)**|
|GD200A-200G/220P-4|185/<br>2×95|95/95|185/<br>2×95|185/<br>2×95|M12|31–40|
|GD200A-220G/250P-4|2×95/<br>2×95|95/95|2×95/<br>2×95|2×95/<br>2×95|M12|31–40|
|GD200A-250G/280P-4|2×95/<br>2×150|95/<br>150|2×95/<br>2×150|2×95/<br>2×150|M12|31–40|
|GD200A-280G/315P-4|2×150/|150/|2×150/|2×150/|M12|31–40|
||2×150|150|2×150|2×150|||
|GD200A-315G/355P-4|2×150/|150/|2×150/|2×150/|M12|31–40|
||2×185|185|2×185|2×185|||
|GD200A-355G/400P-4|2×185/|185/|2×185/|2×185/|M12|31–40|
||3×150|2×120|3×150|3×150|||
|GD200A-400G-4|3×150|2×120|3×150|3×150|M12|31–40|
|GD200A-450G-4|3×185|2×150|3×185|3×185|M12|31–40|
|GD200A-500G-4|3×185|2×150|3×185|3×185|M12|31–40|



###### **Note:** 

1. The forward slash "/" is used to distinguish data about G-type VFDs from data about P-type VFDs. 

2. It is appropriate to use the recommended cable size under 40°C and rated current. The wiring distance should be no more than 100m. 

3. Terminals P1, (+), PB and (-) connects the DC reactor options and parts. 

###### **C.4.3 Routing the cables** 

Route the motor cable away from other cable routes. Motor cables of several drives can be run in parallel installed next to each other. It is recommended that the motor cable, input power cable and control cables are installed on separate trays. Avoid long parallel runs of motor cables with other cables to decrease electromagnetic interference caused by the rapid changes in the drive output voltage. 

Where control cables must cross power cables make sure that they are arranged at an angle as near to 90 degrees as possible. 

The cable trays must have good electrical bonding to each other and to the grounding electrodes. Aluminum tray systems can be used to improve local equalizing of potential. 

A figure of the cable routing is shown below. 

-164- 



<!-- Start of picture text -->
—_T<br>|<br>Fl Motor cable<br>jee ; min 300 mm<br>led ,<br>Input power cable | Motor cable<br>min 200 mm 90°|_| min 500 mm<br>Control cable Control cable<br><!-- End of picture text -->

GD200A series VFD 

Peripheral options and parts 

|**VFD model**|**Breaker (A)**|**Fuse (A)**|**Rated current of the**<br>**reactor (A)**|
|---|---|---|---|
|GD200A-0R7G-4|4|5|9|
|GD200A-1R5G-4|6|10|9|
|GD200A-2R2G-4|10|10|9|
|GD200A-004G/5R5P-4|20/25|20/35|18/25|
|GD200A-5R5G/7R5P-4|25/32|35/40|25/32|
|GD200A-7R5G/011P-4|32/50|40/50|32/38|
|GD200A-011G/015P-4|50/63|50/60|38/50|
|GD200A-015G/018P-4|63/63|60/70|50/65|
|GD200A-018G/022P-4|63/80|70/90|65/80|
|GD200A-022G/030P-4|80/100|90/125|80/80|
|GD200A-030G/037P-4|100/125|125/125|80/98|
|GD200A-037G/045P-4|125/140|125/150|98/115|
|GD200A-045G/055P-4|140/180|150/200|115/150|
|GD200A-055G/075P-4|180/225|200/250|150/185|
|GD200A-075G/090P-4|225/250|250/300|185/225|
|GD200A-090G/110P-4|250/315|300/350|225/265|
|GD200A-110G/132P-4|315/400|350/400|265/330|
|GD200A-132G/160P-4|400/500|400/500|330/400|
|GD200A-160G/185P-4|500/500|500/600|400/400|
|GD200A-185G/200P-4|500/630|600/600|400/500|
|GD200A-200G/220P-4|630/630|600/700|500/500|
|GD200A-220G/250P-4|630/700|700/800|500/630|
|GD200A-250G/280P-4|700/800|800/1000|630/630|
|GD200A-280G/315P-4|800/1000|1000/1000|630/800|
|GD200A-315G/355P-4|1000/1000|1000/1000|800/800|
|GD200A-355G/400P-4|1000/1000|1000/1200|800/1000|
|GD200A-400P-4|1000|1200|1000|
|GD200A-400G-4|1000|1200|1000|
|GD200A-450G-4|1250|1200|1000|
|GD200A-500G-4|1250|1400|1000|



**Note:** The forward slash "/" is used to distinguish data about G-type VFDs from data about P-type VFDs. 

###### **C.6 Reactors** 

When the distance between the VFD and motor is longer than 50 m, the parasitic capacitance between the long cable and ground may cause large leakage current, and overcurrent protection of the VFD may be frequently triggered. To prevent this from happening and avoid damage to the 

-166- 

GD200A series VFD 

Peripheral options and parts 

motor insulator, compensation must be made by adding an output reactor. When a VFD is used to drive multiple motors, take the total length of the motor cables (that is, sum of the lengths of the motor cables) into account. When the total length is longer than 50 m, an output reactor must be added on the output side of the VFD. If the distance between the VFD and motor ranges from 50 m to 100 m, select the reactor according to the following table. If the distance is longer than 100 m, contact INVT's technical support. The mapping between VFD models and reactors is as follows: 

|**VFD model**|**Input reactor**|**DC reactor**|**Output reactor**|
|---|---|---|---|
|GD200A-0R7G-4|ACL2-1R5-4|/|OCL2-1R5-4|
|GD200A-1R5G-4|ACL2-1R5-4|/|OCL2-1R5-4|
|GD200A-2R2G-4|ACL2-2R2-4|/|OCL2-2R2-4|
|GD200A-004G/5R5P-4|ACL2-004-4|/|OCL2-004-4|
|GD200A-5R5G/7R5P-4|ACL2-5R5-4|/|OCL2-5R5-4|
|GD200A-7R5G/011P-4|ACL2-7R5-4|/|OCL2-7R5-4|
|GD200A-011G/015P-4|ACL2-011-4|/|OCL2-011-4|
|GD200A-015G/018P-4|ACL2-015-4|/|OCL2-015-4|
|GD200A-018G/022P-4|ACL2-018-4|/|OCL2-018-4|
|GD200A-022G/030P-4|ACL2-022-4|/|OCL2-022-4|
|GD200A-030G/037P-4|ACL2-037-4|/|OCL2-037-4|
|GD200A-037G/045P-4|ACL2-037-4|DCL2-037-4|OCL2-037-4|
|GD200A-045G/055P-4|ACL2-045-4|DCL2-045-4|OCL2-045-4|
|GD200A-055G/075P-4|ACL2-055-4|DCL2-055-4|OCL2-055-4|
|GD200A-075G/090P-4|ACL2-075-4|DCL2-075-4|OCL2-075-4|
|GD200A-090G/110P-4|ACL2-110-4|DCL2-090-4|OCL2-110-4|
|GD200A-110G/132P-4|ACL2-110-4|DCL2-132-4|OCL2-110-4|
|GD200A-132G/160P-4|ACL2-160-4|DCL2-132-4|OCL2-160-4|
|GD200A-160G/185P-4|ACL2-160-4|DCL2-160-4|OCL2-200-4|
|GD200A-185G/200P-4|ACL2-200-4|DCL2-220-4|OCL2-200-4|
|GD200A-200G/220P-4|ACL2-200-4|DCL2-220-4|OCL2-200-4|
|GD200A-220G/250P-4|ACL2-280-4|DCL2-280-4|OCL2-280-4|
|GD200A-250G/280P-4|ACL2-280-4|DCL2-280-4|OCL2-280-4|
|GD200A-280G/315P-4|ACL2-280-4|DCL2-280-4|OCL2-280-4|
|GD200A-315G/355P-4|ACL2-350-4|DCL2-315-4|OCL2-350-4|
|GD200A-355G/400P-4|Standard|DCL2-400-4|OCL2-350-4|
|GD200A-400G-4|Standard|DCL2-400-4|OCL2-400-4|
|GD200A-450G-4|Standard|DCL2-500-4|OCL2-500-4|
|GD200A-500G-4|Standard|DCL2-500-4|OCL2-500-4|



**Note:** 

1. The rated derate voltage of the input reactor is 2%±15%. 

2. The power factor of the input side is above 90% after adding DC reactor. 

-167- 

GD200A series VFD 

Peripheral options and parts 

3. The rated derate voltage of the output reactor is 1%±15%. 

4. The preceding optional parts are externally connected. If the 220G/250P–315G/355P models use the optional bases, two reactors can be configured for each VFD. 

###### **C.7 Filters** 

J10 is not connected by default for the110G/132P and lower models. If it is needed to fulfill the requirements of C3 class, users can connect jumper J10 which is put in the same bag with the operation manual. 

The 132G/160P and higher models can satisfy C3 requirements and J10 is connected by default. 

**Note:** Disconnect J10 when either of below situations occurs: 

1. EMC filter is suitable for the neutral-grounding grid system. If it is used in IT grid system (neutral point is not grounded), disconnect J10; 

2. During configuring residual current circuit-breaker, if tripping occurred during startup, disconnect J10. 

###### Filters for Goodrive200A series VFDs 

|**VFD model**|**Input filter**|**Output filter**|
|---|---|---|
|GD200A-0R7G-4|||
|GD200A-1R5G-4|FLT-P04006L-B|FLT-L04006L-B|
|GD200A-2R2G-4|||
|GD200A-004G/5R5P-4|FLTP04016LB|FLTL04016LB|
|GD200A-5R5G/7R5P-4|--|--|
|GD200A-7R5G/011P-4|FLTP04032LB|FLTL04032LB|
|GD200A-011G/015P-4|--|--|
|GD200A-015G/018P-4|FLT-P04045L-B|FLT-L04045L-B|
|GD200A-018G/022P-4|||
|GD200A-022G/030P-4|FLTP04065LB|FLTL04065LB|
|GD200A-030G/037P-4|--|--|



-168- 

GD200A series VFD 

Peripheral options and parts 

|**VFD model**|**Input filter**|**Output filter**|
|---|---|---|
|GD200A-037G/045P-4|||
|GD200A-045G/055P-4|FLT-P04100L-B|FLT-L04100L-B|
|GD200A-055G/075P-4<br>GD200A-075G/090P-4|FLT-P04150L-B|FLT-L04150L-B|
|GD200A-090G/110P-4|||
|GD200A-110G/132P-4|FLT-P04240L-B|FLT-L04240L-B|
|GD200A-132G/160P-4|||
|GD200A-160G/185P-4|||
|GD200A-185G/200P-4|FLT-P04400L-B|FLT-L04400L-B|
|GD200A-200G/220P-4|||
|GD200A-220G/250P-4|||
|GD200A-250G/280P-4|FLT-P04600L-B|FLT-L04600L-B|
|GD200A-280G/315P-4|||
|GD200A-315G/355P-4|||
|GD200A-355G/400P-4|FLT-P04800L-B|FLT-L04800L-B|
|GD200A-400G-4|||
|GD200A-450G-4|||
|GD200A-500G-4|FLT-P041000L-B|FLT-L041000L-B|



**Note:** The input EMI meet the requirement of C2 after adding input filters. 

###### **C.8 Braking system** 

###### **C.8.1 Select the braking components** 

It is appropriate to use braking resistor or braking unit when the motor brakes sharply or the motor is driven by a high inertia load. The motor will become a generator if its actual rotating speed is higher than the corresponding speed of the reference frequency. As a result, the inertial energy of the motor and load return to the VFD to charge the capacitors in the main DC circuit. When the voltage increases to the limit, damage may occur to the VFD. It is necessary to apply braking unit/resistor to avoid this accident happens. 

|Only qualified electricians are allowed to design, install, commission and operate<br>on the VFD.|
|---|
|Follow the instructions in "warning" during working. Physical injury or death or<br>serious property may occur.|
|Only qualified electricians are allowed to wire. Damage to the VFD or braking<br>options and part may occur. Read carefully the instructions of braking resistors or<br>units before connecting them with the VFD.|
|Do not connect the braking resistor with other terminals except for PB and (-). Do<br>not connect the braking unit with other terminals except for (+) and (-). Damage to<br>the VFD or brakingcircuit or fire mayoccur.|



-169- 

GD200A series VFD 

Peripheral options and parts 

 Connect the braking resistor or braking unit with the VFD according to the diagram. Incorrect wiring may cause damage to the VFD or other devices. 

Goodrive200A series VFDs of the 030G/037P and lower models need internal braking units and the VFDs of the 037G/045P and higher models need external braking units. Please select the resistance and power of the braking resistors according to actual utilization. 

###### **Note:** 

Select the resistor and power according to the provided data. 

The braking torque may increase because of the raising of braking resistor. The below table is calculated at 100% of the braking torque, 10%, 50% and 80%of the braking usage ratio. The user can select according to the actual working. 

Refer to the operation instructions of braking units when using external units for right setting of voltage degree. Otherwise normal operation of the VFD may be impacted. 

|**VFD model**|**Braking unit**<br>|**100% of**<br>**braking**<br>|**The cons**<br>**b**<br>|**umed pow**<br>**raking res**<br>|**er of the**<br>**istor**<br>|<br>**Min.**<br>**Braking**<br>|
|---|---|---|---|---|---|---|
||**type**|**torque**<br>**(Ω)**|**10%**<br>**braking**|**50%**<br>**braking**|**80%**<br>**braking**|**Resistor**<br>**(Ω)**|
|GD200A-0R7G-4||653|0.1|0.6|0.9|240|
|GD200A-1R5G-4||326|0.23|1.1|1.8|170|
|GD200A-2R2G-4||222|0.33|1.7|2.6|130|
|GD200A-004G/5R5P-4||122|0.6|3|4.8|80|
|GD200A-5R5G/7R5P-4||89|0.75|4.1|6.6|60|
|GD200A-7R5G/011P-4|Internal braking<br>i|65|1.1|5.6|9|47|
|GD200A-011G/015P-4|unt|44|1.7|8.3|13.2|31|
|GD200A-015G/018P-4||32|2|11|18|23|
|GD200A-018G/022P-4||27|3|14|22|19|
|GD200A-022G/030P-4||22|3|17|26|17|
|GD200A-030G/037P-4||17|5|23|36|17|
|GD200A-037G/045P-4|DBU100H-060-4|13|6|28|44|11.7|
|GD200A-045G/055P-4||10|7|34|54||
|GD200A-055G/075P-4|DBU100H-110-4|8|8|41|66|6.4|
|GD200A-075G/090P-4||6.5|11|56|90||
|GD200A-090G/110P-4|DBU100H1604|5.4|14|68|108|44|
|GD200A-110G/132P-4|--|4.5|17|83|132|.|
|GD200A-132G/160P-4|DBU100H-220-4|3.7|20|99|158|3.2|
|GD200A-160G/185P-4||3.1|24|120|192||
|GD200A-185G/200P-4|DBU100H-320-4|2.8|28|139|222|2.2|
|GD200A-200G/220P-4||2.5|30|150|240||



-170- 

GD200A series VFD 

Peripheral options and parts 

|**VFD model**|**Braking unit**|**100% of**<br>**braking**|**The con**<br>|**sumed pow**<br>**braking res**|**er of the**<br>**istor**|<br>**Min.**<br>**Braking**<br>|
|---|---|---|---|---|---|---|
||**type**|**torque**<br>**(Ω)**|**10%**<br>**braking**|**50%**<br>**braking**|**80%**<br>**braking**|**Resistor**<br>**(Ω)**|
|GD200A-220G/250P-4|DBU100H4004|2.2|33|165|264|18|
|GD200A-250G/280P-4|--|2.0|38|188|300|.|
|GD200A-280G/315P-4||3.6*2|21*2|105*2|168*2||
|GD200A-315G/355P-4|Two|3.2*2|24*2|118*2|189*2|22*2|
|GD200A-355G/400P-4|DBU100H-320-4|<br>2.8*2|27*2|132*2|210*2|.|
|GD200A-400G-4||2.4*2|30*2|150*2|240*2||
|GD200A-450G-4|Two|2.2*2|34*2|168*2|270*2|18*2|
|GD200A-500G-4|DBU100H-400-4|<br>2*2|38*2|186*2|300*2|.|



 Never use a brake resistor with a resistance below the minimum value specified for the particular drive. The drive and the internal chopper are not able to handle the overcurrent caused by the low resistance. 

 Increase the power of the braking resistor properly in the frequent braking situation (the frequency usage ratio is more than 10%). 

###### **C.8.2 Select the brake resistor cables** 

Use a shielded cable to the resistor cable. 

###### **C.8.3 Place the brake resistor** 

Install all resistors in a place where they will cool. 

 The materials near the brake resistor must be non-flammable. The surface temperature of the resistor is high. Air flowing from the resistor is of hundreds of degrees Celsius. Protect the resistor against contact. 

Installation of the braking resistor: 

 The 030G/037P and lower models only need external braking resistors. 

 PB and (+) are the wiring terminals of the braking resistors. 



<!-- Start of picture text -->
A External<br>braking<br>resistor<br><!-- End of picture text -->

-171- 



<!-- Start of picture text -->
_. —<br>R3<br>— —<br>to<br><!-- End of picture text -->



<!-- Start of picture text -->
[i « B=<br>i | og|<br>= ec<br>{<br>ae]x |<br>ona<br>[on}<br><!-- End of picture text -->

GD200A series VFD 

Further Information 

##### **Appendix D Further Information** 

###### **D.1 Product and service inquiries** 

Address any inquiries about the product to your local INVT offices, quoting the type designation and serial number of the unit in question. A listing of INVT sales, support and service contacts can be found by navigating to www.invt.com. 

###### **D.2 Feedback on INVT VFD manuals** 

Your comments on our manuals are welcome. Go to www.invt.com, directly contact online service personnel or choose **Contact** to obtain contact information. 

###### **D.3 Document library on the internet** 

You can find manuals and other product documents in PDF format on the Internet. Go to www.invt.com and choose **Support** > **Download** . 

-174- 

###### @ 

### [| <u>Ave</u> Service line:86-755-23535967 E ~~-~~ mail:overseas@invt ~~.~~ com. ~~c~~ n Website:www.invt ~~.~~ com 

The products are owned by Shenzhen INVT Electric Co.,Ltd. Two companies are commissioned to manufacture: (For product code, refer to the 2nd/3rd place of S/N on the name plate.) Shenzhen INVT Electric Co., Ltd. (origin code: 01) INVT Power Electronics (Suzhou) Co., Ltd. (origin code: 06) Address: INVT Guangming Technology Building, Songbai Road, Address: 1# Kunlun Mountain Road, Science&Technology Town, Matian, Guangming District, Shenzhen, China Gaoxin District, Suzhou, Jiangsu, China 

Industrial Automation ~~:~~ H <mark>H</mark> MI MPLC 

WElevator Intelligent Control System 

Energy & Power ~~:~~ UPS H <mark>D</mark> CIM 

Hi New Energy Vehicle Powerstain System New Energy Vehicle Motor 

<mark>H</mark> VFD H Servo System Hf Rail Transit Traction System Solar Inverter <mark>S</mark> VG Mi New Energy Vehicle Charging System 



Copyright© INVT. 

Manual information may be subject to change without prior notice ~~.~~ 

