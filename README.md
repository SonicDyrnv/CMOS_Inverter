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

KLayout was also used for visual inspection and layer highlighting.

### 3. Layout vs. Schematic (LVS)
Netgen was used to verify that the extracted layout matches the original schematic. The TCL script (`run_lvs.tcl`) and the generated report (`Ivs_report.out`) can be found in `NetgenRelatedFiles/`.

### 4. Simulation & Characterization (Ngspice)
Various tests were performed using the extracted netlist to validate the inverter's real-world behavior:

* **DC Transfer Characteristic (VTC):** Sweeping the input voltage (`Vin_Gate_Location2`) to observe the switching threshold and output inversion (`Output_Vout`).

* **Temperature Analysis:** Observing the shift in the Voltage Transfer Curve across different temperature corners to ensure reliability.

* **Transient Analysis:** Testing the self-made CMOS inverter inside a digital circuit context to observe propagation delay, rise/fall times, and logical inversion over time.
