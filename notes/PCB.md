
# Connecteurs

Samtec ERM/F8 : [Mâle](https://www.mouser.fr/ProductDetail/Samtec/ERM8-010-05.0-L-DV-TR?qs=%252BZP6%2F%252BtExtAMeP5vcDbIEQ%3D%3D), [Femelle](https://www.mouser.fr/ProductDetail/Samtec/ERF8-010-05.0-L-DV-TR?qs=%252BZP6%2F%252BtExtAFtKZ6nNV%252Bhw%3D%3D)
Q-Pairs 0.80 mm (QTE/QSE) : [Terminal](https://www.mouser.fr/ProductDetail/Samtec/QTE-014-01-F-D-DP-A?qs=rU5fayqh%252BE1NSHYxMYkTeg%3D%3D), [Socket](https://www.mouser.fr/ProductDetail/Samtec/QSE-014-01-F-D-DP-A?qs=rU5fayqh%252BE3zTnCaz4JuSw%3D%3D)
TEM AMPMODU, 1mm, 1x12 : [Header](https://www.mouser.fr/ProductDetail/TE-Connectivity/1MM-HU-D06-VS-00-F-TBP?qs=e8oIoAS2J1TTqwk9gWlCkw%3D%3D), [Receptacle](https://www.mouser.fr/ProductDetail/TE-Connectivity/1MM-R-D06-VS-00-F-TBP?qs=e8oIoAS2J1SlM6Fb%252B86WlA%3D%3D) - no footprint
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
