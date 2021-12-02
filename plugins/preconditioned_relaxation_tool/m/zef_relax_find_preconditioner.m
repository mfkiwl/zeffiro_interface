function [relax_preconditioner, relax_preconditioner_permutation] = zef_relax_find_preconditioner

relax_multires_sparsity = evalin('base','zef.relax_multires_sparsity');  
relax_multires_n_decompositions = evalin('base','zef.relax_multires_n_decompositions'); 
relax_multires_n_levels = evalin('base','zef.relax_multires_n_levels');
relax_preconditioner_type = evalin('base','zef.relax_preconditioner_type');

if relax_preconditioner_type == 1
relax_preconditioner = cell(0);
relax_preconditioner_permutation = cell(0);
h = waitbar(0,'RAMUS preconditioner');

[~,n_interp, procFile] = zef_processLeadfields(evalin('base','zef.source_direction_mode'));
center_points = evalin('base','zef.source_positions');
center_points = center_points(procFile.s_ind_0,:);

for zef_i = 1 : relax_multires_n_decompositions
waitbar(zef_i/ relax_multires_n_decompositions,h,'RAMUS preconditioner');
[relax_multigrid_dec, relax_multigrid_ind, relax_multigrid_perm] = zef_make_multigrid_dec(center_points,relax_multires_sparsity,1,relax_multires_n_levels);
[relax_preconditioner{zef_i}, relax_preconditioner_permutation{zef_i}] = zef_block_diagonal_preconditioner(evalin('base','zef.L'), relax_multigrid_dec, relax_multigrid_ind, relax_multigrid_perm,10^(-evalin('base','zef.relax_snr')/20));
end
close(h);
end