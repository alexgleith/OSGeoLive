#!/bin/sh
#############################################################################
#
# Purpose: This script will install Python development tools and libraries to use in
# OSGeoLive.
#
#############################################################################
# Copyright (c) 2016 Open Source Geospatial Foundation (OSGeo)
#
# Licensed under the GNU LGPL.
#
# This library is free software; you can redistribute it and/or modify it
# under the terms of the GNU Lesser General Public License as published
# by the Free Software Foundation, either version 2.1 of the License,
# or any later version.  This library is distributed in the hope that
# it will be useful, but WITHOUT ANY WARRANTY, without even the implied
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU Lesser General Public License for more details, either
# in the "LICENSE.LGPL.txt" file distributed with this software or at
# web page "http://www.fsf.org/licenses/lgpl.html".
#############################################################################

./diskspace_probe.sh "`basename $0`" begin
BUILD_DIR=`pwd`

apt-get -q update

# install the python .deb maker
apt-get install --yes python-all-dev

# removed from list: python-stdeb

"$BUILD_DIR"/diskspace_probe.sh "`basename $0`" end
