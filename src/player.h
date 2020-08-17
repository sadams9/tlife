#pragma once

#include "bool.h"
#include "controls.h"
#include "map.h"
#include "vector.h"

void control_player(Map map, const Dim2 *size, Pos2 *pos, Pos2 *delta,
                    bool *player_moved, bool *map_changed, Control control);