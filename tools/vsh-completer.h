/*
 * vsh-completer.h: common virt shell completer callbacks
 *
 * Copyright (C) 2017 Red Hat, Inc.
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library.  If not, see
 * <http://www.gnu.org/licenses/>.
 */

#pragma once

#include "vsh.h"

char **
vshEnumComplete(unsigned int last,
                const char *(*intToStr)(int));

char **
vshCommaStringListComplete(const char *input,
                           const char **options);

char **
vshCompletePathLocalExisting(vshControl *ctl,
                             const vshCmd *cmd,
                             unsigned int completerflags);

char **
vshCompleteEmpty(vshControl *ctl,
                 const vshCmd *cmd,
                 unsigned int completerflags);
