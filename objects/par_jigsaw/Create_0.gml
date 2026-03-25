paper_x = [180, 110, 0, -60, -120, -200];
paper_y = [-150, 0, 80, 0, -180, 0];

for (var i = 0; i < 6; i++)
{
	var _paper = instance_create_depth(
	room_width / 2 + paper_x[i], room_height / 2 + paper_y[i], 0, obj_jigsaw_piece);
	_paper.page = i;
}