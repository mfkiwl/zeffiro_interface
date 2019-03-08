if not(license('test','distrib_computing_toolbox'))
gpuDeviceCount = 0;
end
clear zef;
zef.program_path = cd; 
if not(isdeployed)
zef.code_path = '/m';
addpath([zef.program_path '/fig']); 
addpath(genpath([zef.program_path '/plugins'])); 
addpath([zef.program_path zef.code_path]); 
end;
zef.h_zeffiro = fopen('zeffiro_interface.ini');
zef.ini_cell = textscan(zef.h_zeffiro,'%s');
zef.save_file_path = zef.ini_cell{1}{2};
zef.save_file = zef.ini_cell{1}{4};
zef.video_codec = zef.ini_cell{1}{6};
zef.use_gpu = str2num(zef.ini_cell{1}{8});
zef.gpu_num = str2num(zef.ini_cell{1}{10});
if gpuDeviceCount > 0 & zef.use_gpu == 1
gpuDevice(zef.gpu_num);
end
zef.parallel_vectors = str2num(zef.ini_cell{1}{12});
zef.snapshot_vertical_resolution = str2num(zef.ini_cell{1}{14});
zef.snapshot_horizontal_resolution = str2num(zef.ini_cell{1}{16});
zef = rmfield(zef,'ini_cell');
zef_init;
zef.h_zeffiro_window_main = open('zeffiro_interface_segmentation_tool.fig');
zef_plugin;
zef_init;
zef.aux_handle_vec = [...
zef.h_wm_sources;
zef.h_d1_sources;
zef.h_d2_sources;
zef.h_d3_sources;
zef.h_d4_sources;
zef.h_s_on;
zef.h_s_visible;
zef.h_w_on;
zef.h_w_visible;
zef.h_g_on;
zef.h_g_visible;
zef.h_c_on;
zef.h_c_visible;
zef.h_sk_on;
zef.h_sk_visible;
zef.h_sc_on;
zef.h_sc_visible;
zef.h_d1_on;
zef.h_d1_visible;
zef.h_d2_on;
zef.h_d2_visible;
zef.h_d3_on;
zef.h_d3_visible;
zef.h_d4_on;
zef.h_d4_visible;
zef.h_pushbutton16;
zef.h_pushbutton17;
zef.h_pushbutton1;
zef.h_pushbutton2;
zef.h_pushbutton3;
zef.h_pushbutton4;
zef.h_pushbutton5;
zef.h_pushbutton6;
zef.h_pushbutton7;
zef.h_pushbutton8;
zef.h_pushbutton9;
zef.h_pushbutton10;
zef.h_pushbutton101;
zef.h_pushbutton102;
zef.h_pushbutton201;
zef.h_pushbutton202;
zef.h_pushbutton301;
zef.h_pushbutton302;
zef.h_pushbutton401;
zef.h_pushbutton402;
zef.h_edit15;
zef.h_edit3;
zef.h_edit6;
zef.h_edit7;
zef.h_edit12;
zef.h_edit13;
zef.h_edit14;
zef.h_edit29;
zef.h_edit70;
zef.h_edit9001;
zef.h_edit36;
zef.h_edit71;
zef.h_edit9002;
zef.h_edit50;
zef.h_edit72;
zef.h_edit9003;
zef.h_edit57;
zef.h_edit73;
zef.h_edit9004;
zef.h_edit64;
zef.h_edit74;
zef.h_edit9005;
zef.h_edit129;
zef.h_edit170;
zef.h_edit9006;
zef.h_edit229;
zef.h_edit270;
zef.h_edit9007;
zef.h_edit329;
zef.h_edit370;
zef.h_edit9008;
zef.h_edit429;
zef.h_edit470;
zef.h_edit9009;
];
uistack(flipud(zef.aux_handle_vec),'bottom');
rmfield(zef,'aux_handle_vec');
zef.o_h = findall(zef.h_zeffiro_window_main);
zef.h_axes2 = zef.o_h(290);
zef=rmfield(zef,'o_h');
zef.clear_axes1 = 0;
zef_figure_tool;
zef_mesh_tool;
zef_update;

