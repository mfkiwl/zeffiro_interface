%Copyright © 2018- Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface
          zef.submesh_num = 0;
          zef.parcellation_plot_type = 1;
          zef.parcellation_time_series = [];
          zef.parcellation_colormap = [];
          zef.parcellation_interp_ind = cell(0);
          zef.parcellation_name = '';
          zef.parcellation_colortable = cell(0);
          zef.use_parcellation = 0;
          zef.parcellation_merge = 1;
          zef.parcellation_points = cell(0);
          zef.parcellation_segment = 'LH';
          zef.parcellation_tolerance = 5;
          zef.parcellation_selected = [];
          zef.parcellation_type = [1];
          zef.parcellation_quantile = [0.98];
          zef.s_name = 'Sensors';
          zef.w_name = 'White matter';
          zef.g_name = 'Grey matter';
          zef.c_name = 'Cerebrospinal fluid';
          zef.sk_name = 'Skull';
          zef.sc_name = 'Scalp';
          zef.d1_name = 'Detail 1';
          zef.d2_name = 'Detail 2';
          zef.d3_name = 'Detail 3';
          zef.d4_name = 'Detail 4';
          zef.d5_name = 'Detail 5';
          zef.d6_name = 'Detail 6';
          zef.d7_name = 'Detail 7';
          zef.d8_name = 'Detail 8';
          zef.d9_name = 'Detail 9';
          zef.d10_name = 'Detail 10';
          zef.d11_name = 'Detail 11';
          zef.d12_name = 'Detail 12';
          zef.d13_name = 'Detail 13';
          
          zef.d14_name = 'Detail 14';
          zef.d15_name = 'Detail 15';
          zef.d16_name = 'Detail 16';
          zef.d17_name = 'Detail 17';
          zef.d18_name = 'Detail 18';
          zef.d19_name = 'Detail 19';
          zef.d20_name = 'Detail 20';
          zef.d21_name = 'Detail 21';
          zef.d22_name = 'Detail 22';
          
            zef.submesh_ind = [];
            zef.w_submesh_ind = [];
            zef.g_submesh_ind = [];
            zef.c_submesh_ind = [];
           zef.sk_submesh_ind = [];
           zef.sc_submesh_ind = [];
           zef.d1_submesh_ind = [];
           zef.d2_submesh_ind = [];
           zef.d3_submesh_ind = [];
           zef.d4_submesh_ind = [];
           zef.d5_submesh_ind = [];
           zef.d6_submesh_ind = [];
           zef.d7_submesh_ind = [];
           zef.d8_submesh_ind = [];
           zef.d9_submesh_ind = [];
          zef.d10_submesh_ind = [];
          zef.d11_submesh_ind = [];
          zef.d12_submesh_ind = [];
          zef.d13_submesh_ind = [];
          zef.d14_submesh_ind = [];
          zef.d15_submesh_ind = [];
          zef.d16_submesh_ind = [];
          zef.d17_submesh_ind = [];
          zef.d18_submesh_ind = [];
          zef.d19_submesh_ind = [];
          zef.d20_submesh_ind = [];
          zef.d21_submesh_ind = [];
          zef.d22_submesh_ind = [];
          
          zef.s_merge = 1;
          zef.w_merge = 1;
          zef.g_merge = 1;
          zef.c_merge = 1;
          zef.sk_merge = 1;
          zef.sc_merge = 1;
          zef.d1_merge = 1;
          zef.d2_merge = 1;
          zef.d3_merge = 1;
          zef.d4_merge = 1;
          zef.d5_merge = 1;
          zef.d6_merge = 1;
          zef.d7_merge = 1;
          zef.d8_merge = 1;
          zef.d9_merge = 1;
          zef.d10_merge = 1;
          zef.d11_merge = 1;
          zef.d12_merge = 1;
          zef.d13_merge = 1;
          
          zef.d14_merge = 1;
          zef.d15_merge = 1;
          zef.d16_merge = 1;
          zef.d17_merge = 1;
          zef.d18_merge = 1;
          zef.d19_merge = 1;
          zef.d20_merge = 1;
          zef.d21_merge = 1;
          zef.d22_merge = 1;
          
          zef.s_invert = 0;
          zef.w_invert = 0;
          zef.g_invert = 0;
          zef.c_invert = 0;
          zef.sk_invert = 0;
          zef.sc_invert = 0;
          zef.d1_invert = 0;
          zef.d2_invert = 0;
          zef.d3_invert = 0;
          zef.d4_invert = 0;
          zef.d5_invert = 0;
          zef.d6_invert = 0;
          zef.d7_invert = 0;
          zef.d8_invert = 0;
          zef.d9_invert = 0;
          zef.d10_invert = 0;
          zef.d11_invert = 0;
          zef.d12_invert = 0;
          zef.d13_invert = 0;
          
          zef.d14_invert = 0;
          zef.d15_invert = 0;
          zef.d16_invert = 0;
          zef.d17_invert = 0;
          zef.d18_invert = 0;
          zef.d19_invert = 0;
          zef.d20_invert = 0;
          zef.d21_invert = 0;
          zef.d22_invert = 0;
          
          zef.loop_movie = [0];
          zef.stop_movie = [0];
          zef.inv_init_guess_mode = [1];
          zef.inv_eit_noise = 0;
          zef.inv_bg_data = [];
          zef.inv_roi_perturbation = 0.1;
          zef.current_pattern = [];
          zef.background_data = [];
          zef.inv_multires_n_decompositions = [20];
          zef.inv_multires_dec = []; 
          zef.inv_multires_ind = []; 
          zef.inv_multires_count = [];
          zef.inv_multires_n_levels = [3];
          zef.inv_multires_sparsity = 8;
          zef.inv_multires_n_iter = [10 10 10];
          zef.h_rec_source = [];
          zef.h_synth_source = [];
          zef.h_roi_sphere = [];
          zef.inv_rec_source = [0 0 0 1 0 0 0 3 1];
          zef.inv_synth_source = [0 0 0 1 0 0 10 0 3 1];
          zef.inv_roi_mode = 3;
          zef.inv_roi_threshold = 0.5;
          zef.inv_roi_sphere = [0 0 0 15];
          zef.inv_n_sampler = 100; 
          zef.inv_n_burn_in = 10; 
          zef.reconstruction_type = 7;
          zef.h_colorbar   = [];
          zef.location_unit= 1;
              zef.elevation= 0;
                zef.azimuth= 0;
           zef.axes_visible= 0;
              zef.n_sources= 10000;
               zef.sc_sigma= 0.430000000000000;
               zef.sk_sigma= 0.006400000000000;
                zef.c_sigma= 1.790000000000000;
                zef.g_sigma= 0.330000000000000;
                zef.w_sigma= 0.140000000000000;
               zef.d1_sigma= 0.33;
               zef.d2_sigma= 0.33;
               zef.d3_sigma= 0.33;
               zef.d4_sigma= 0.33;
               zef.d5_sigma= 0.33;
               zef.d6_sigma= 0.33;
               zef.d7_sigma= 0.33;
               zef.d8_sigma= 0.33;
               zef.d9_sigma= 0.33;
               zef.d10_sigma= 0.33;
               zef.d11_sigma= 0.33;
               zef.d12_sigma= 0.33;
               zef.d13_sigma= 0.33;
               
               zef.d14_sigma= 0.33;
               zef.d15_sigma= 0.33;
               zef.d16_sigma= 0.33;
               zef.d17_sigma= 0.33;
               zef.d18_sigma= 0.33;
               zef.d19_sigma= 0.33;
               zef.d20_sigma= 0.33;
               zef.d21_sigma= 0.33;
               zef.d22_sigma= 0.33;
               
        zef.mesh_resolution= 2;
      zef.attach_electrodes= 1;
              zef.s_visible= 1;
               zef.s_points= [];
           zef.s_directions= [];
           zef.s_directions_g = [];
           zef.d1_triangles=[];
              zef.d1_points=[];
            zef.d2_triangles= [];
               zef.d2_points= [];
            zef.d3_triangles= [];
               zef.d3_points= [];
            zef.d4_triangles= [];
               zef.d4_points= []; 
              zef.d5_triangles=[];
              zef.d5_points=[];
            zef.d6_triangles= [];
               zef.d6_points= [];
            zef.d7_triangles= [];
               zef.d7_points= [];
            zef.d8_triangles= [];
               zef.d8_points= []; 
               zef.d9_triangles= [];
               zef.d9_points= []; 
              zef.d10_triangles=[];
              zef.d10_points=[];
            zef.d11_triangles= [];
               zef.d11_points= [];
            zef.d12_triangles= [];
               zef.d12_points= [];
            zef.d13_triangles= [];
               zef.d13_points= []; 
               
               zef.d14_triangles=[];
              zef.d14_points=[];
            zef.d15_triangles= [];
               zef.d15_points= [];
            zef.d16_triangles= [];
               zef.d16_points= [];
            zef.d17_triangles= [];
               zef.d17_points= []; 
               zef.d18_triangles= [];
               zef.d18_points= []; 
              zef.d19_triangles=[];
              zef.d19_points=[];
            zef.d20_triangles= [];
               zef.d20_points= [];
            zef.d21_triangles= [];
               zef.d21_points= [];
            zef.d22_triangles= [];
               zef.d22_points= []; 
               
            zef.w_triangles= [];
               zef.w_points= [];
 zef.source_direction_mode = 2;
             zef.sc_visible= 1;
             zef.sk_visible= 1;
              zef.c_visible= 1;
              zef.g_visible= 1;
              zef.w_visible= 1;
             zef.d1_visible= 1;
               zef.d2_visible=1;
               zef.d3_visible=1;
               zef.d4_visible=1;
               zef.d5_visible= 1;
               zef.d6_visible=1;
               zef.d7_visible=1;
               zef.d8_visible=1;
               zef.d9_visible=1;
               zef.d10_visible= 1;
               zef.d11_visible=1;
               zef.d12_visible=1;
               zef.d13_visible=1;
               
               zef.d14_visible= 1;
               zef.d15_visible=1;
               zef.d16_visible=1;
               zef.d17_visible=1;
               zef.d18_visible=1;
               zef.d19_visible= 1;
               zef.d20_visible=1;
               zef.d21_visible=1;
               zef.d22_visible=1;
               
               zef.d1_scaling=1.0;
               zef.d2_scaling=1.0;
               zef.d3_scaling=1.0;
               zef.d4_scaling=1.0;
               zef.d5_scaling=1.0;
               zef.d6_scaling=1.0;
               zef.d7_scaling=1.0;
               zef.d8_scaling=1.0;
               zef.d9_scaling=1.0;
               zef.d10_scaling=1.0;
               zef.d11_scaling=1.0;
               zef.d12_scaling=1.0;
               zef.d13_scaling=1.0;
               
               zef.d14_scaling=1.0;
               zef.d15_scaling=1.0;
               zef.d16_scaling=1.0;
               zef.d17_scaling=1.0;
               zef.d18_scaling=1.0;
               zef.d19_scaling=1.0;
               zef.d20_scaling=1.0;
               zef.d21_scaling=1.0;
               zef.d22_scaling=1.0;
               
             zef.sc_scaling= 1.0;
             zef.sk_scaling= 1.0;
              zef.c_scaling= 1.0;
              zef.g_scaling= 1.0;
              zef.w_scaling= 1.0;
              zef.s_scaling= 1.0;
          zef.s_zx_rotation= 0;
          zef.s_yz_rotation= 0;
          zef.s_xy_rotation= 0;
         zef.s_z_correction= 0;
         zef.s_y_correction= 0;
         zef.s_x_correction= 0;
         zef.imaging_method= 1;
                  zef.d1_on= 0;
                  zef.d2_on= 0;
                  zef.d3_on= 0; 
                  zef.d4_on= 0;
                  zef.d5_on= 0;
                  zef.d6_on= 0;
                  zef.d7_on= 0; 
                  zef.d8_on= 0;
                  zef.d9_on= 0;
                  zef.d10_on= 0;
                  zef.d11_on= 0;
                  zef.d12_on= 0; 
                  zef.d13_on= 0;
                  
                  zef.d14_on= 0;
                  zef.d15_on= 0;
                  zef.d16_on= 0; 
                  zef.d17_on= 0;
                  zef.d18_on= 0;
                  zef.d19_on= 0;
                  zef.d20_on= 0;
                  zef.d21_on= 0; 
                  zef.d22_on= 0;
                  
                  zef.sc_on= 0;
                  zef.sk_on= 0;
                   zef.c_on= 0;
                   zef.g_on= 0;
           zef.sc_triangles= [];
              zef.sc_points= [];
           zef.sk_triangles= [];
              zef.sk_points= [];
            zef.c_triangles= [];
               zef.c_points= [];
            zef.g_triangles= [];
               zef.g_points= [];
               zef.sensors = [];
               zef.reuna_p = cell(0);
               zef.reuna_t = cell(0);
               zef.nodes   = [];
                zef.tetra  = [];
                   zef.w_on= 0;
                 zef.cam_va= 10;
         zef.preconditioner= 1;
      zef.solver_tolerance = 1e-6;
zef.preconditioner_tolerance= 0.001;
               zef.sigma_ind=[];
               zef.sigma=[];
               zef.sigma_vec=[];
               zef.sigma_mod=0;
zef.sensors_attached_volume = [];
      zef.surface_triangles = [];
      zef.n_sources_mod     = 0; 
      zef.n_sources_old     = 10000;
 zef.location_unit_current = 1;
                      zef.L = [];
       zef.source_positions = [];
       zef.source_directions = [];
              zef.brain_ind = [];
             zef.source_ind = [];
             zef.w_priority = 5;
             zef.g_priority = 4;
             zef.c_priority = 3;
            zef.sk_priority = 2;
            zef.sc_priority = 1;
            zef.d1_priority = 6;
            zef.d2_priority = 7;
            zef.d3_priority = 8;
            zef.d4_priority = 9;
            zef.d5_priority = 10;
            zef.d6_priority = 11;
            zef.d7_priority = 12;
            zef.d8_priority = 13;
            zef.d9_priority = 14;
            zef.d10_priority = 15;
            zef.d11_priority = 16;
            zef.d12_priority = 17;
            zef.d13_priority = 18;
            
            zef.d14_priority = 19;
            zef.d15_priority = 20;
            zef.d16_priority = 21;
            zef.d17_priority = 22;
            zef.d18_priority = 23;
            zef.d19_priority = 24;
            zef.d20_priority = 25;
            zef.d21_priority = 26;
            zef.d22_priority = 27;
            
            zef.cp_on       = 0;
            zef.cp_a        = 1;
            zef.cp_b        = 0;
            zef.cp_c        = 0;
            zef.cp_d        = 0;
       zef.meshing_accuracy = 0.3;
       zef.on_screen        = 0;
       zef.import_mode      = 0;
       zef.s_color = [0.1 0.1 0.1];
       zef.d1_color = [0.7 0.7 1];
       zef.d2_color = [1 0 1];
       zef.d3_color = [0 0.5 0.5];
       zef.d4_color = [1 0.5 0.2];
       zef.d5_color = [0.5000 0 1.0000];
       zef.d6_color = [0.4000 0.6000 0.1000];
       zef.d7_color = [0 1 0];
       zef.d8_color = [1 0 0];
       zef.d9_color = [0 0.3 1];
       zef.d10_color = [0.35 0.75 1];
       zef.d11_color =  [0 1 0.8];
       zef.d12_color = [1 0.85 0];
       zef.d13_color = [0.8 0.3 0.6];
       
       zef.d14_color = [0.5000 0 1.0000];
       zef.d15_color = [0.4000 0.6000 0.1000];
       zef.d16_color = [0 1 0];
       zef.d17_color = [1 0 0];
       zef.d18_color = [0 0.3 1];
       zef.d19_color = [0.35 0.75 1];
       zef.d20_color =  [0 1 0.8];
       zef.d21_color = [1 0.85 0];
       zef.d22_color = [0.8 0.3 0.6];
       
       zef.w_color = [0.8 0.8 0.8];
       zef.g_color = [0.35 0.35 0.35];
       zef.c_color = 0.6*[0.7 0.8 0.7];
       zef.sk_color = [0.7 0.7 0.6];
       zef.sc_color = 0.7*[0.83 0.67 0.49];
       zef.mesh_smoothing_on = 0;
       zef.w_sources = 3;
       zef.d1_sources = 0;
       zef.d2_sources = 0;
       zef.d3_sources = 0;
       zef.d4_sources = 0;
       zef.d5_sources = 0;
       zef.d6_sources = 0;
       zef.d7_sources = 0;
       zef.d8_sources = 0;
       zef.d9_sources = 0;
       zef.d10_sources = 0;
       zef.d11_sources = 0;
       zef.d12_sources = 0;
       zef.d13_sources = 0;
       
       
       zef.d14_sources = 0;
       zef.d15_sources = 0;
       zef.d16_sources = 0;
       zef.d17_sources = 0;
       zef.d18_sources = 0;
       zef.d19_sources = 0;
       zef.d20_sources = 0;
       zef.d21_sources = 0;
       zef.d22_sources = 0;
       
       zef.g_sources = 1;
       zef.c_sources = 0;
       zef.sk_sources = 0;
       zef.sc_sources = 0;
       zef.w_sources_old = -1;
       zef.d1_sources_old = -1;
       zef.d2_sources_old = -1;
       zef.d3_sources_old = -1;
       zef.d4_sources_old = -1;
       zef.d5_sources_old = -1;
       zef.d6_sources_old = -1;
       zef.d7_sources_old = -1;
       zef.d8_sources_old = -1;
       zef.d9_sources_old = -1;
       zef.d10_sources_old = -1;
       zef.d11_sources_old = -1;
       zef.d12_sources_old = -1;
       zef.d13_sources_old = -1;
       
       zef.d14_sources_old = -1;
       zef.d15_sources_old = -1;
       zef.d16_sources_old = -1;
       zef.d17_sources_old = -1;
       zef.d18_sources_old = -1;
       zef.d19_sources_old = -1;
       zef.d20_sources_old = -1;
       zef.d21_sources_old = -1;
       zef.d22_sources_old = -1;
       
       zef.g_sources_old = -1;
       zef.c_sources_old = -1;
       zef.sk_sources_old = -1;
       zef.sc_sources_old = -1;
       zef.prism_layers = 0;
       zef.n_prism_layers = 2;
       zef.prism_size = 0.01;
       zef.prisms = [];
       zef.sigma_prisms = [];
       zef.refinement_on = 0;
       zef.smoothing_strength = 0.25;
       zef.smoothing_steps_surf = 15;
       zef.smoothing_steps_vol = 5;
       zef.refinement_type = 1;
       zef.surface_sources = 0; 
       zef.visualization_type = 1;
       zef.source_interpolation_on = 0;
       zef.measurements = [];
       zef.reconstruction = [];
       zef.inv_hyperprior = [1]; 
       zef.inv_beta = [1.5];
       zef.inv_theta0 = [1e-12];
       zef.inv_likelihood_std = 0.03;
       zef.inv_n_map_iterations = [1];
       zef.inv_pcg_tol = [1e-6];
       zef.inv_sampling_frequency = [20000];
       zef.inv_low_cut_frequency = [20];
       zef.inv_high_cut_frequency = [250];
       zef.inv_data_segment = [1];
       zef.source_interpolation_ind = [];
       zef.cp2_on = 0;
       zef.cp2_a = 1;
       zef.cp2_b = 0;
       zef.cp2_c = 0;
       zef.cp2_d = 0;
       zef.cp3_on = 0;
       zef.cp3_a = 1;
       zef.cp3_b = 0;
       zef.cp3_c = 0;
       zef.cp3_d = 0;
       zef.inv_dynamic_range = 1e2; 
       zef.inv_scale = 2;
       zef.inv_colormap = 5;
       zef.brain_transparency = 1;
       zef.layer_transparency = 1;
       zef.meshing_threshold = 0.5;
       zef.clear_axes1 = 1;
       zef.normalize_data = 1;
       zef.cp_mode = 1;
       zef.inv_time_1 = 0;
       zef.inv_time_2 = 0.002;
       zef.inv_time_3 = 0.001;
       zef.number_of_frames = 1;
       zef.frame_start = 0;
       zef.frame_stop = 0;
       zef.frame_step = 1;
       zef.orbit_1 = 0;
       zef.orbit_2 = 0;
       zef.non_source_ind = [];
       zef.source_model = 2;
       zef.use_depth_electrodes = 0;
