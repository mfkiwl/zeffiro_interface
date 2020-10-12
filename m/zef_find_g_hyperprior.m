%Copyright © 2018- Sampsa Pursiainen & ZI Development Team
%See: https://github.com/sampsapursiainen/zeffiro_interface
function [shape_param, scale_param, snr_vec] = zef_find_g_hyperprior(snr_val, varargin)

L = [];

source_space_size = 1;
normalize_data = 'maximum';
eps_val = 1e-12;
delta_1 = 1e-1;
delta_2 = 1 / 6;
x = 10;

if length(varargin) > 0
L = varargin{1};
source_space_size = size(L,2);
end

if length(varargin) > 1
source_space_size = varargin{2};
end

if length(varargin) > 2
normalize_data = varargin{3};
end

if length(varargin) > 3
balance_snr = varargin{4};
end


if isempty(L)
    snr_vec = snr_val;
    snr_vec_limited = snr_vec;
    source_strength = 1e-2;
else
    
if isequal(normalize_data,'maximum')
   signal_strength = size(L,2)*max(abs(L))'./sum(max(abs(L))');
else
   signal_strength = size(L,2).*sqrt(sum(L.^2))'./sum(sqrt(sum(L.^2))');
end
   source_strength = size(L,2)./sum(max(abs(L))');

if balance_snr 
snr_vec = snr_val + db(signal_strength);
else
snr_vec = snr_val;
end

snr_vec_limited = max(1,snr_vec);
snr_vec_limited = min(240,snr_vec_limited);


end

shape_param = zeros(size(snr_vec));
scale_param = zeros(size(snr_vec));

relative_noise_std = 10.^(-snr_vec_limited/20);
    
a = 1e-6*ones(size(relative_noise_std));
b = 100*ones(size(relative_noise_std));

if evalin('base','zef.use_gpu') == 1 & gpuDeviceCount > 0
    relative_noise_std = gpuArray(relative_noise_std);
    a = gpuArray(a);
    b = gpuArray(b);
end

for j = 1 : 5

shape_param_vec = a + (b-a).*[0:delta_2:1];
p_val_vec = zeros(length(shape_param_vec),1);

p_val_vec = zef_gamma_gpu(x*max(relative_noise_std).^2,shape_param_vec,relative_noise_std(:, ones(size(shape_param_vec,2),1)).^2 ./ shape_param_vec);

[m_aux,i_aux] = min(abs(p_val_vec - eps_val), [], 2);

b = shape_param_vec((i_aux-1)*size(p_val_vec,1)+[1:size(p_val_vec,1)]');
a = shape_param_vec((i_aux-2)*size(p_val_vec,1)+[1:size(p_val_vec,1)]');

end


shape_param = (a+b)/2;
scale_param = source_strength.^2 * relative_noise_std.^2 ./ (source_space_size.*shape_param);

end