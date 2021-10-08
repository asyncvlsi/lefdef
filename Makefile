#-------------------------------------------------------------------------
#
#  Copyright (c) 2018 Rajit Manohar
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation; either version 2
#  of the License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor,
#  Boston, MA  02110-1301, USA.
#
#-------------------------------------------------------------------------

TARGETS=

all:
	(cd lef; make)
	(cd def; make)

INST=$(ACT_HOME)/scripts/install

install:
	@if [ ! -d $(ACT_HOME)/include/lef ]; then mkdir $(ACT_HOME)/include/lef; fi
	@if [ ! -d $(ACT_HOME)/include/def ]; then mkdir $(ACT_HOME)/include/def; fi
	@(cd lef/include; for i in *; do $(INST) $$i $(ACT_HOME)/include/lef/$$i; done)
	@(cd def/include; for i in *; do $(INST) $$i $(ACT_HOME)/include/def/$$i; done)
	@(cd lef/lib; for i in *; do $(INST) $$i $(ACT_HOME)/lib/$$i; done)
	@(cd def/lib; for i in *; do $(INST) $$i $(ACT_HOME)/lib/$$i; done)

include $(ACT_HOME)/scripts/Makefile.std
