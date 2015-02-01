Google Play Supported Devices
=============================

A python interface to the CSV file published by
[Google](https://support.google.com/googleplay/android-developer/answer/6154891).
It maps Android strings from `Build.DEVICE` and `Build.MODEL` to human readable
marketing names for the device.

Installation
------------

```
$ pip install gplay-devices
```

Usage
-----

```
>>> import gplay_devices

# build a dict mapping model numbers to entries
>>> entries = {k.model: k for k in gplay_devices.iterate_entries()}

# every column from the CSV is present
>>> entries['SGH-M919N'].retail_branding
'Samsung'
>>> entries['SGH-M919N'].marketing_name
'Samsung Galaxy S4'
>>> entries['SGH-M919N'].device
'jflteMetroPCS'
>>> entries['SGH-M919N'].model
'SGH-M919N'

# also features name normalization so "Samsung" isn't repeated twice
>>> entries['SGH-M919N'].normalized_name
'Samsung Galaxy S4'
```

Compatibility
-------------

Tested on Python 2.7.9 and Python 3.4.2

Licence
-------

The MIT License. See
[LICENSE.txt](https://github.com/EncircleInc/gplay-devices/blob/master/LICENSE.txt).
