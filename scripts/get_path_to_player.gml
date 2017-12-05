///get_path_to_player()
if (instance_exists(obj_player))
{
    var xx = (obj_player.x div CELL_WIDTH)*CELL_WIDTH+CELL_WIDTH/2;
    var yy = (obj_player.y div CELL_HEIGHT)*CELL_HEIGHT+CELL_HEIGHT/2;
    var spd = obj_level_gen.enemy_speed;
    
    if (mp_grid_path(obj_level_gen.grid_path, path, x, y, xx, yy, false))
    {
        path_start(path, spd, path_action_stop, false);
    }
}
