///@param x
///@param y
///@param obj
function scr_select_top(argument0, argument1, argument2){

var xx = argument0;
var yy = argument1;
var _object = argument2;

//Create list
var instance_list = ds_list_create();

//Find first instance
var instance = instance_position(xx,yy,_object);

//Top instance
var top = instance;

//Loop through
while instance_exists(instance)
{
	ds_list_add(instance_list, instance);
	instance_deactivate_object(instance);
	
	if instance.depth < top.depth
	{
		top = instance;	
	}
	instance = instance_position(xx,yy,_object);
}

//Reactivate
while (ds_list_size(instance_list) > 0)
{
	instance_activate_object(instance_list[| 0]);
	ds_list_delete(instance_list, 0);
}

//Destroy list
ds_list_destroy(instance_list);

//Return instance
return top;

}