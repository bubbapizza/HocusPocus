#!/bin/sh

# Allow the hocuspocus user to export GPIO pins.
chgrp hocuspocus /sys/class/gpio 
chmod g+rwx /sys/class/gpio 
chgrp hocuspocus /sys/class/gpio/*export
chmod g+w /sys/class/gpio/*export
