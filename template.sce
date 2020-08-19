# Pretending we have a screen res of 1280 x 800

scenario = "Questionnaire";
write_codes = true; 
pcl_file = ""; #Charlotte Q
active_buttons = 1;
button_codes = 1;
no_logfile = true;
pulse_width = 10;
default_background_color = 30, 30, 30;
response_logging = log_active;
begin;

picture {} default;

bitmap { filename = "cursor.bmp"; transparent_color = 112, 112, 112; } cursor;
bitmap { filename = "choice_button.bmp"; } choice_button;
bitmap { filename = "selected_button.bmp"; } selected_button;

picture
{
	text
	{
		caption = ".";
		font_size = 30;
		text_align = align_center;
		font_color = 255, 255, 255;
	} decision_txt;  x = 0;  y = 0;

	box { height = 1; width = 1; color = 30, 30, 30; }; x = 0; y = -100;

} pic_decision;

picture
 {

	box { height = 800; width = 2; color = 255, 255, 255; }; x = 0; y = 0;

	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = 320;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = 200;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = 80;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = -40;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = -160;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = -280;

	text { caption = "Finished"; font_size = 25; text_align = align_center; font_color = 0, 0, 0; background_color = 255, 255, 255;};  x = 600;  y = 0;
	on_top = true; box { height = 40; width = 120; color = 255, 255, 255; }; x = 600; y = 0;


	text
	{
		caption = "Charlotte's Web Trial ";
		font_size = 20;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -320;  y = 350;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = 300;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 280;
	bitmap choice_button; x = -15;  y = 280;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 260;
	bitmap choice_button; x = -15;  y = 260;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = 180;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 160;
	bitmap choice_button; x = -15;  y = 160;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 140;
	bitmap choice_button; x = -15;  y = 140;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = 60;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 40;
	bitmap choice_button; x = -15;  y = 40;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 20;
	bitmap choice_button; x = -15;  y = 20;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = -60;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -80;
	bitmap choice_button; x = -15;  y = -80;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -100;
	bitmap choice_button; x = -15;  y = -100;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = -180;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -200;
	bitmap choice_button; x = -15;  y = -200;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -220;
	bitmap choice_button; x = -15;  y = -220;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = -300;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -320;
	bitmap choice_button; x = -15;  y = -320;

	text { caption = ""; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -340;
	bitmap choice_button; x = -15;  y = -340;


	bitmap cursor; x = 0; y = 0;
	on_top = true;

} pic_1;


picture
 {

	box { height = 800; width = 2; color = 255, 255, 255; }; x = 0; y = 0;

	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = 320;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = 200;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = 80;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = -40;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = -160;
	box { height = 2; width = 1280; color = 255, 255, 255; }; x = 0; y = -280;

	text { caption = "Finished"; font_size = 25; text_align = align_center; font_color = 0, 0, 0; background_color = 255, 255, 255;};  x = 600;  y = 0;
	on_top = true; box { height = 40; width = 120; color = 255, 255, 255; }; x = 600; y = 0;

	text
	{
		caption = "Which of these words appeared in the text";
		font_size = 20;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -320;  y = 350;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = 300;

	text { caption = "Yes"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 280;
	bitmap choice_button; x = -15;  y = 280;

	text { caption = "No"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 260;
	bitmap choice_button; x = -15;  y = 260;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = 180;

	text { caption = "Yes"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 160;
	bitmap choice_button; x = -15;  y = 160;

	text { caption = "No"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 140;
	bitmap choice_button; x = -15;  y = 140;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = 60;

	text { caption = "Yes"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 40;
	bitmap choice_button; x = -15;  y = 40;

	text { caption = "No"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = 20;
	bitmap choice_button; x = -15;  y = 20;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = -60;

	text { caption = "Yes"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -80;
	bitmap choice_button; x = -15;  y = -80;

	text { caption = "No"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -100;
	bitmap choice_button; x = -15;  y = -100;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = -180;

	text { caption = "Yes"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -200;
	bitmap choice_button; x = -15;  y = -200;

	text { caption = "No"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -220;
	bitmap choice_button; x = -15;  y = -220;


	text
	{
		caption = "";
		font_size = 13;
		text_align = align_center;
		font_color = 255, 255, 255;
	};  x = -350;  y = -300;

	text { caption = "Yes"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -320;
	bitmap choice_button; x = -15;  y = -320;

	text { caption = "No"; font_size = 13; text_align = align_center; font_color = 255, 255, 255; background_color = 30, 30, 30;};  x = -350;  y = -340;
	bitmap choice_button; x = -15;  y = -340;


	bitmap cursor; x = 0; y = 0;
	on_top = true;

} pic_2;

picture {
	bitmap { 
		filename = "cross.png"; 
	};
   x = 0; y = 0; on_top = true;
} start_pic;

sound { 
wavefile { filename = "Trial_.wav"; };
} sound1;


trial {
	picture pic_decision;
	duration = response;
} decision_trial;

trial { 
stimulus_event {   
	sound sound1;
		code = "0,0";
	port_code=0;	
} run_event;
} run_trial;
