clear zef;
zef.program_path = cd; 
if not(isdeployed)
zef.code_path = '/m';
addpath([zef.program_path '/fig']); 
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
zef = rmfield(zef,'ini_cell');
zef_init;
zef.h_zeffiro = open('zeffiro_interface.fig');
set(zef.h_text197,'foregroundcolor',[1 1 1]);
set(zef.h_pushbutton21,'callback','[zef.sensors,zef.reuna_p,zef.reuna_t] = process_meshes([]); [zef.nodes,zef.nodes_b,zef.tetra,zef.sigma_ind,zef.surface_triangles]=fem_mesh([]);zef.tetra_aux = zef.tetra; [zef.sigma,zef.brain_ind,zef.non_source_ind,zef.nodes,zef.tetra,zef.sigma_prisms,zef.prisms]=zef_sigma([]); zef.n_sources_mod = 1; zef.source_ind = []; set(zef.h_text_elements,''string'',num2str(size(zef.tetra,1)+size(zef.prisms,1))); set(zef.h_text_nodes,''string'',num2str(size(zef.nodes,1)));');
set(zef.h_pushbutton34,'callback','[zef.sigma,zef.brain_ind,zef.non_source_ind,zef.nodes,zef.tetra,zef.sigma_prisms,zef.prisms]=zef_sigma([]);set(zef.h_text_elements,''string'',num2str(size(zef.tetra,1)+size(zef.prisms,1))); set(zef.h_text_nodes,''string'',num2str(size(zef.nodes,1)));');
zef_init;
zef.aux_handle_vec = [...
zef.h_checkbox16;
zef.h_checkbox13;
zef.h_checkbox1;
zef.h_checkbox7;
zef.h_checkbox2;
zef.h_checkbox8;
zef.h_checkbox3;
zef.h_checkbox9;
zef.h_checkbox4;
zef.h_checkbox10;
zef.h_checkbox5;
zef.h_checkbox11;
zef.h_checkbox101;
zef.h_checkbox107;
zef.h_checkbox201;
zef.h_checkbox207;
zef.h_checkbox301;
zef.h_checkbox307;
zef.h_checkbox401;
zef.h_checkbox407;
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
zef.h_edit23;
zef.h_edit24;
zef.h_edit25;
zef.h_edit26;
zef.h_edit27;
zef.h_edit28;
zef.h_edit36;
zef.h_edit71;
zef.h_edit9002;
zef.h_edit30;
zef.h_edit31;
zef.h_edit32;
zef.h_edit33;
zef.h_edit34;
zef.h_edit35;
zef.h_edit50;
zef.h_edit72;
zef.h_edit9003;
zef.h_edit44;
zef.h_edit45;
zef.h_edit46;
zef.h_edit47;
zef.h_edit48;
zef.h_edit49;
zef.h_edit57;
zef.h_edit73;
zef.h_edit9004;
zef.h_edit51;
zef.h_edit52;
zef.h_edit53;
zef.h_edit54;
zef.h_edit55;
zef.h_edit56;
zef.h_edit64;
zef.h_edit74;
zef.h_edit9005;
zef.h_edit58;
zef.h_edit59;
zef.h_edit60;
zef.h_edit61;
zef.h_edit62;
zef.h_edit63;
zef.h_edit129;
zef.h_edit170;
zef.h_edit9006;
zef.h_edit123;
zef.h_edit124;
zef.h_edit125;
zef.h_edit126;
zef.h_edit127;
zef.h_edit128;
zef.h_edit229;
zef.h_edit270;
zef.h_edit9007;
zef.h_edit223;
zef.h_edit224;
zef.h_edit225;
zef.h_edit226;
zef.h_edit227;
zef.h_edit228;
zef.h_edit329;
zef.h_edit370;
zef.h_edit9008;
zef.h_edit323;
zef.h_edit324;
zef.h_edit325;
zef.h_edit326;
zef.h_edit327;
zef.h_edit328;
zef.h_edit429;
zef.h_edit470;
zef.h_edit9009;
zef.h_edit423;
zef.h_edit424;
zef.h_edit425;
zef.h_edit426;
zef.h_edit427;
zef.h_edit428;
zef.h_pushbutton31;
zef.h_pushbutton20;
zef.h_pushbutton22; 
zef.h_checkbox14;
zef.h_checkbox15;
zef.h_checkbox_cp_on;
zef.h_edit_cp_a;
zef.h_edit_cp_b;
zef.h_edit_cp_c;
zef.h_edit_cp_d;
zef.h_edit80;
zef.h_edit81;
zef.h_edit82;
zef.h_visualization_type;
zef.h_pushbutton23;
zef.h_pushbutton21;
zef.h_pushbutton34;
zef.h_checkbox_mesh_smoothing_on;
zef.h_wm_sources;
zef.h_refinement_on;
zef.h_edit65;
zef.h_edit_meshing_accuracy; 
zef.h_edit75;
zef.h_smoothing_strength;
zef.h_pushbutton14;
zef.h_source_interpolation_on;
zef.h_popupmenu1;
zef.h_popupmenu6;
zef.h_popupmenu2;
zef.h_edit76;
];
uistack(flipud(zef.aux_handle_vec),'bottom');
rmfield(zef,'aux_handle_vec');
set(zef.h_popupmenu2,'string',{'Cartesian','Normal','Mesh-based'});
set(zef.h_visualization_type,'string',{'Sigma','Recon. (volume)','Recon. (surface)'});
set(zef.h_pushbutton31,'string','Visualize volume')
zef.o_h = findall(zef.h_zeffiro);
zef.h_axes2 = zef.o_h(365);
zef.h_axes1 = zef.o_h(364);
zef=rmfield(zef,'o_h');
zef.clear_axes1 = 0;
zef_update;

