# How to get Sire?

Sire is developed online and is released under the open source, GPL license.
It is free to download and use. Note that Sire comes with no warranty and
no guarantee of correctness. Please do not rely on Sire for commercial development.
You have several choices for how you can download and get Sire working on your machine.

## [Conda package](https://anaconda.org/michellab/sire)

Sire is available as a [Conda package](https://anaconda.org/michellab/sire).

We recommend installing Sire into a clean environment, e.g.:

```
conda create -n sire python=3.7
conda activate sire
```

Then, to install the latest release, run:

```
conda install -c conda-forge -c omnia -c michellab sire
```

To install the latest development version, run:

```
conda install -c conda-forge -c omnia -c michellab/label/dev sire
```

When following the commands above you might not always end up with the most
recent version of Sire. This is because of the way that Conda scores different
package versions in order to try to minimise the number of downloads and changes
to the environment when performing an install or upgrade. To work around this,
you can try one of the following:

Use the `--all` flag to update all the installed packages within the environment:

```
conda install -c conda-forge -c omnia -c michellab sire --all
```

Try explicitly passing the version of Sire, e.g, for the 2020.1.0 release:

```
conda install -c conda-forge -c omnia -c michellab sire=2020.1.0
```

Unless you add the required channels to your Conda configuration, then you'll
need to add them when updating, e.g., for the development package:

```
conda update -c conda-forge -c omnia -c michellab/label/dev sire
```

If you find that the Conda installation / upgrade is extremely slow, we recommend
installing the [mamba](https://github.com/mamba-org/mamba) package and replacing
all instances of `conda` in the commands above with `mamba`, e.g.:

```
mamba install -c conda-forge -c omnia -c michellab sire
```

Note that `mamba` uses different options and scoring metrics to `conda`, so
the package resolution may be different for the the same command.

## [Download a Sire binary](binaries.md)

The latest release of Sire can be downloaded from
[here](binaries.md). There are compiled binaries available for
Linux (64bit), Windows (64bit, 7 or above) and for OS X (10.8 [Mountain Lion] and above).

For Linux and OS X, Sire is downloaded as a self-extracting executable, called sire_X-X-XXX.run.
Simply run this file, e.g. by typing

```
chmod a+x ./sire_X-X-XXX.run
./sire_X-X-XXX.run
```
in a shell, and follow the instructions to install Sire wherever you want.
Sire will install into a directory called `sire.app`, in which all of the
binaries and libraries will be located. You can run the Sire python environment
by running

```
./sire.app/bin/python
```

or you can run Sire executables, such as waterswap, by running

```
./sire.app/bin/waterswap
```

The Windows binary is experimental. Unpack the zip file into `C:\sire`. Then
you can start `C:\sire\mingw64.exe`. This will start a command shell. You
can now run Python by typing

```
python3
```

Or can run a Sire executable script by typing

```
python3 -u /mingw64/share/Sire/scripts/waterswap.py
```

## [Download the Sire source code](source.md)

If you don’t want (or can’t find) a pre-built binary for your platform,
then you can download a source release that can be downloaded from
[here](source.md). Please follow the instructions inside the download
to compile and install Sire.

## [Browse and download from the Sire GitHub repository](https://github.com/michellab/Sire)

The main purpose of Sire is to allow simulators to quickly prototype
and develop new simulation algorithms. You can stay up to date with the
latest developments by browsing and downloading code from the
[Sire GitHub repository](https://github.com/michellab/Sire).
Please feel free to clone or fork this repository, and to contribute to
Sire development via pull requests.

To download from GitHub, you will need a working git client. You can
then clone using the command

```
git clone https://github.com/michellab/Sire.git
```

This will clone into a directory called `Sire`. To compile, type

```
cd Sire
./compile_sire.sh
```

A small word of warning, compilation can easily take up to an hour!

## OpenMM compatibility

Some Sire functionality requires [OpenMM](http://openmm.org). Although
a bundled version is provided as part of the installation, this may not
be appropriate for your GPU drivers. To automatically detect and install
a suitable version of OpenMM, simply run the following command post-install:

```
optimise_openmm
```

(Note that, depending on your installation method, `optimise_openmm` may
be located in `$HOME/sire.app/bin`.)

Alternatively, to manually install a particular version of OpenMM you can
use a specific Conda label, e.g.:

```
conda install -c omnia/label/cuda90 openmm
```

If you have compiled Sire against a custom OpenMM installation, then you'll
need to set the `OPENMM_PLUGIN_DIR` environment variable to point to the
correct plugin location. By default this variable is set to the plugin
directory of the bundled OpenMM package.
