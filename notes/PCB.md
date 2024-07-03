
# Design

-> LOGICAL INVERSION OF THE DATA PINS **AND** EDGE INVERSION OF LVDS_CLK


## List of design guidelines

- [x] Space between the conductors should not be more than twice the width (S < 2W)
- [x] Thickness of the board should be more than the space between the conductors (B > S)
- [x] Space between two adjacent differential pairs should be greater than or equal to twice the space between the two individual conductors. (D > 2S)
- [x] The commonly used FR-4 material works well for low frequency (500 to 600 MHz) applications. G-TEK or Teflon can be considered for high-speed designs.
- [ ] When using LVDS devices, all the VCC_CLK and VCC_CKOUT pins should be bypassed with a 0.1-, 0.01-, and 0.001 µF mica, ceramic or polystyrene 0805-size surface-mount chip capacitors connected in parallel. These capacitors should be placed immediately underneath the pins. In addition to these capacitors, another 2.7 µF capacitor should be placed close to the pin. -> plutôt non
- [x] Keep the LVDS drivers and the receiver as close to any connectors as possible.
- [x] The physical length of each trace between the transmitter outputs and the connector should be matched to within 5 mm of each other to reduce data skew.
- [x] Isolate LVDS signals from TTL signals to reduce crosstalk (preferably on different layers). 
- [x] Separate LVDS ground and supply planes.
- [x] Keep stub lengths as short as possible.
- [x] Multiple vias should be used to connect to power and ground planes.
