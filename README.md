# Verif

A free library for verifying the ModelicaSpice library (part of [BondLib](https://github.com/modelica-3rdparty/BondLib)).

## Library description

The Verif 2.2 library contains several dozens of electronic circuits that may be used for various purposes:

 1. to verify the correctness of future releases of BondLib;
 2. to validate implementations of BondLib for platforms other than Dymola; and
 3. to validate other implementations of electronic circuit modeling libraries.

The version number of the `Verif` library matches that of the `BondLib` library, i.e., `Verif 2.2` has been used together with `BondLib 2.2`.

Since `BondLib 2.3` does not offer any changes to its electrical library, no new version of the `Verif` library has been created to match it.

### Dependencies

This library depends on:

* [BondLib](https://github.com/modelica-3rdparty/BondLib)

## Current release

Download [Verif v2.2 (2007-09-30)](../../archive/v2.2.zip)

#### Release notes

* [Verif v2.2 (2007-09-30)](../../archive/v2.2.zip)
  * Verif 2.2 is designed to be used together with BondLib 2.2 or higher.
  * Each circuit is marked as either *green* (no more issues), *yellow* (the circuit is simulating more or less correctly in ModelicaSpice, but there are still some issues that need to be looked at), or *red* (the circuit isn't simulating yet in ModelicaSpice).
  * The `Verif 2.2` release also contains PSpice projects for most of the circuits as well as PSpice simulation results stored in CSV (comma-separated values) format.
  * The CSV files can be loaded into Dymola (using the "Open Results" tag from the "Plot" menu), which makes it possible to compare the ModelicaSpice simulation results quantitatively against the PSpice simulation results.
  * `Verif 2.2` doesn't offer a "User's Guide," but each sample circuit is amply documented.

## License

This Modelica package is free software and the use is completely at your own risk;
it can be redistributed and/or modified under the terms of the [Modelica License 2](https://modelica.org/licenses/ModelicaLicense2).

## Development and contribution
The `Verif` library had originally been developed by Christoph Clau&szlig; and his co-workers at the Fraunhofer Institute of Electronic Circuits in Dresden, Germany. It was created for testing/verifying the correctness of ModelicaSpice, one of the sub-libraries of BondLib.

Contact: [Prof. Fran&ccedil;ois Cellier](http://www.inf.ethz.ch/personal/fcellier/)
