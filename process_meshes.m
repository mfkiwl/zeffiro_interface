%Copyright © 2018- Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface
function [sensors,reuna_p,reuna_t,reuna_p_inf,reuna_submesh_ind] = process_meshes(varargin);

explode_param = 1;
if not(isempty(varargin))
  if not(isempty(varargin{1}))
explode_param = varargin{1}; 
    end
end

i = 0;
sensors = [];
reuna_p = cell(0);
reuna_t = cell(0);

compartment_tags = evalin('base','zef.compartment_tags');
for k = 1 : length(compartment_tags)

        var_0 = ['zef.' compartment_tags{k} '_on'];
        var_1 = ['zef.' compartment_tags{k} '_scaling']; 
        var_7 = ['zef.' compartment_tags{k} '_points_inf'];
        var_8 = ['zef.' compartment_tags{k} '_points'];
        var_9 = ['zef.' compartment_tags{k} '_triangles'];
        var_10 = ['zef.' compartment_tags{k} '_submesh_ind'];

on_val = evalin('base',var_0);      
scaling_val = evalin('base',var_1);    
translation_vec = [0 0 0];     
theta_angle_vec = [0 0 0];   

if on_val
i = i + 1;
reuna_p_inf{i} = evalin('base',var_7);
reuna_p{i} = evalin('base',var_8);
reuna_t{i} = evalin('base',var_9);
reuna_submesh_ind{i} = evalin('base',var_10);
mean_vec = repmat(mean(reuna_p{i}),size(reuna_p{i},1),1);   
if scaling_val ~= 1  
reuna_p{i} = scaling_val*reuna_p{i};
reuna_p_inf{i} = scaling_val*reuna_p_inf{i};
end
for j = 1 : 3
switch j
    case 1
        axes_ind = [1 2];
    case 2
        axes_ind = [2 3];
    case 3
        axes_ind = [3 1];
end


if theta_angle_vec(j) ~= 0
theta_angle = theta_angle_vec(j)*pi/180;
R_mat = [cos(theta_angle) -sin(theta_angle); sin(theta_angle) cos(theta_angle)];
reuna_p{i}(:,axes_ind) = (reuna_p{i}(:,axes_ind)-mean_vec(:,axes_ind))*R_mat' + mean_vec(:,axes_ind);
reuna_p_inf{i}(:,axes_ind) = (reuna_p_inf{i}(:,axes_ind)-mean_vec(:,axes_ind))*R_mat' + mean_vec(:,axes_ind);

end
end 
for j = 1 : 3
if translation_vec(j) ~= 0
reuna_p{i}(:,j) = reuna_p{i}(:,j) + translation_vec(j);
reuna_p_inf{i}(:,j) = reuna_p_inf{i}(:,j) + translation_vec(j);
end
end
if explode_param ~= 1
for s_ind = 1 : length(reuna_submesh_ind{i})
    if s_ind == 1 
        t_ind_1 = 1;
    else
        t_ind_1 = reuna_submesh_ind{i}(s_ind-1)+1;
    end
    t_ind_2 = reuna_submesh_ind{i}(s_ind);
    p_ind = unique(reuna_t{i}(t_ind_1:t_ind_2,:));
    mean_aux = mean(reuna_p{i}(p_ind,:));
            reuna_p{i}(p_ind,:) = reuna_p{i}(p_ind,:) + (explode_param-1)*repmat(mean_aux,length(p_ind),1);
    if not(isempty(reuna_p_inf{i})) 
 mean_aux = mean(reuna_p_inf{i}(p_ind,:));
        reuna_p_inf{i}(p_ind,:) = reuna_p_inf{i}(p_ind,:) + (explode_param-1)*repmat(mean_aux,length(p_ind),1);
    end
end
end
end
end

sensor_tag = evalin('base','zef.sensor_tags');
sensor_tag = sensor_tag{evalin('base','zef.current_sensors')};

s_points = evalin('base',['zef.' sensor_tag '_points']);
s_data_aux = [];
if ismember(evalin('base','zef.imaging_method'),[2 3]) 
s_directions = evalin('base',['zef.' sensor_tag '_directions(:,1:3)']);
s_directions_g = [];
if size(evalin('base',['zef.' sensor_tag '_directions']),2) == 6
s_directions_g = evalin('base',['zef.' sensor_tag '_directions(:,4:6)']);
end
else
if size(s_points,2)==6
s_data_aux = s_points(:,4:6);
s_points = s_points(:,1:3);
end
s_directions = [];
s_directions_g = [];
end
s_scaling = evalin('base',['zef.' sensor_tag '_scaling']);
s_x_correction = evalin('base',['zef.' sensor_tag '_x_correction']);
s_y_correction = evalin('base',['zef.' sensor_tag '_y_correction']);
s_z_correction = evalin('base',['zef.' sensor_tag '_z_correction']);
s_xy_rotation = evalin('base',['zef.' sensor_tag '_xy_rotation']);
s_yz_rotation = evalin('base',['zef.' sensor_tag '_yz_rotation']);
s_zx_rotation = evalin('base',['zef.' sensor_tag '_zx_rotation']);
if isempty(s_directions)
sensors = [s_points];
else
if isempty(s_directions_g)
sensors = [s_points s_directions./repmat(sqrt(sum(s_directions.^2,2)),1,3)];    
else
sensors = [s_points s_directions./repmat(sqrt(sum(s_directions.^2,2)),1,3) s_directions_g./repmat(sqrt(sum(s_directions_g.^2,2)),1,3)];
end
end
scaling_val = s_scaling;    
translation_vec = [s_x_correction s_y_correction s_z_correction];     
theta_angle_vec = [s_xy_rotation s_yz_rotation s_zx_rotation]; 
if not(isempty(sensors))
mean_vec = repmat(mean(sensors(:,1:3)),size(sensors(:,1:3),1),1);    
if scaling_val ~= 1 
sensors(:,1:3) = s_scaling*sensors(:,1:3);
end
for j = 1 : 3
switch j
    case 1
        axes_ind_1 = [1 2];
        axes_ind_2 = [4 5];
        axes_ind_3 = [7 8];
    case 2
        axes_ind_1 = [2 3];
        axes_ind_2 = [5 6];
        axes_ind_3 = [8 9];
    case 3
        axes_ind_1 = [3 1];
        axes_ind_2 = [6 4];
        axes_ind_3 = [9 7];
end
if theta_angle_vec(j) ~= 0
theta_angle = theta_angle_vec(j)*pi/180;
R_mat = [cos(theta_angle) -sin(theta_angle); sin(theta_angle) cos(theta_angle)];
sensors(:,axes_ind_1) = (sensors(:,axes_ind_1) - mean_vec(:,axes_ind_1))*R_mat' + mean_vec(:,axes_ind_1);
if not(isempty(s_directions))
sensors(:,axes_ind_2) = sensors(:,axes_ind_2)*R_mat';
end
if not(isempty(s_directions_g))
sensors(:,axes_ind_3) = sensors(:,axes_ind_3)*R_mat';
end
end
end
for j = 1 : 3
if translation_vec(j) ~= 0
sensors(:,j) = sensors(:,j) + translation_vec(j);
end
sensors(:,j) = sensors(:,j)  +  (explode_param-1)*(sensors(:,j) - mean(sensors(:,j)));
end



if not(isempty(s_data_aux))
sensors = [sensors s_data_aux];
end
else
    sensors = [NaN NaN NaN];
end

