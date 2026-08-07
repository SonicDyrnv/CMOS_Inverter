````
# Sky130 CMOS Inverter Design and Characterization

This repository contains the complete design, layout, verification, and characterization of a CMOS Inverter using the **SkyWater 130nm (sky130A)** open-source PDK. The project demonstrates the full analog/mixed-signal ASIC design flow: from schematic entry and layout design to LVS verification, parasitic extraction, and SPICE simulations (DC Transfer, Transient, and Temperature analysis).

## Tools Used
* **Schematic Entry:** Xschem
* **Layout Design:** Magic VLSI
* **Layout Viewing:** KLayout
* **LVS (Layout vs. Schematic):** Netgen
* **Simulation:** Ngspice
* **Process Design Kit (PDK):** SkyWater sky130A

## Project Folder Structure

```text
CMOS_Inverter/
│
├── CharacteristicTests/
│   ├── all files used
│
├── CMOS_Inverter_Try/
│   ├── CMOS_Inverter_Try.mag      # Magic layout database file
│   ├── CMOS_Inverter_Try.ext      # Extracted file (from Magic)
│   └── CMOS_Inverter_Try.spice    # Generated SPICE netlist with 
│
├── Images/
│   ├── CMOS_InverterPerfectView.png
│   ├── CMOS_TransferCurve.png
│   ├── extfile.png
│   ├── SpiceParameters.png
│   ├── TemperatureEffect.png
│   ├── TemperatureEffectPlotted.png
│   ├── UsingSelfMadeCMOSInverterInDigitalCircuit.png
│   ├── WithGridCMOSInverter.png
│   └── withoutGridCMOSInverter.png
│
├── NetgenRelatedFiles/
│   ├── run_lvs.tcl                # Tcl script to automate the LVS process
│   └── Ivs_report.out             # LVS comparison report output
│
└── XschemRelatedFiles/
    ├── MyCMOSInv.sch              # Xschem schematic file
    └── MyCMOSInv.spice            # Xschem exported SPICE netlist
```

## Design Flow & Execution

### 1. Schematic Design (Xschem)
The circuit is designed using NMOS (`sky130_fd_pr_nfet_01v8`) and PMOS (`sky130_fd_pr_pfet_01v8`) transistors. The schematic and its base netlist are located in `XschemRelatedFiles/`.

### 2. Layout Design (Magic & KLayout)
The physical layout was drawn in Magic (`.mag` file) ensuring proper DRC rules for the sky130A process. The layout includes `nwell`, `pdiff`, `ndiff`, `locali`, `metal1`, and other necessary layers. 

*Without Grid:*
<img width="1920" height="1080" alt="withoutGridCMOSInverter" src="https://github.com/user-attachments/assets/c401d66f-8057-4dda-91cd-8eadf219c80f" />

*With Grid:*
<img width="1920" height="1080" alt="WithGridCMOSInverter" src="https://github.com/user-attachments/assets/7c960fc8-27de-41a1-b5e2-676883085e2e" />

KLayout was also used for visual inspection and layer highlighting:
<img width="1920" height="1080" alt="CMOS_InverterPerfectView" src="https://github.com/user-attachments/assets/e221d219-0ae5-4c38-856f-df155d5de887" />

### 3. Layout vs. Schematic (LVS)
Netgen was used to verify that the extracted layout matches the original schematic. The TCL script (`run_lvs.tcl`) and the generated report (`Ivs_report.out`) can be found in `NetgenRelatedFiles/`.

### 4. Simulation & Characterization (Ngspice)
Various tests were performed using the extracted netlist to validate the inverter's real-world behavior:

* **DC Transfer Characteristic (VTC):** Sweeping the input voltage (`Vin_Gate_Location2`) to observe the switching threshold and output inversion (`Output_Vout`).
<img width="1920" height="1080" alt="CMOS_TransferCurve" src="https://github.com/user-attachments/assets/c684c133-917a-4f79-a33a-0a01bf275502" />

* **Temperature Analysis:** Observing the shift in the Voltage Transfer Curve across different temperature corners to ensure reliability.
<img width="1853" height="1050" alt="TemperatureEffectPlotted" src="https://github.com/user-attachments/assets/fef9395d-581c-44f8-8f7b-eaf2f214e214" />

* **Transient Analysis:** Testing the self-made CMOS inverter inside a digital circuit context to observe propagation delay, rise/fall times, and logical inversion over time.
 <img width="1853" height="1050" alt="UsingSelfMadeCMOSInverterInDigitalCircuit" src="https://github.com/user-attachments/assets/e0fa814d-ae8d-48d7-9fb3-654f5737081d" />
