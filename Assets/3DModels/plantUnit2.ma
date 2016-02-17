//Maya ASCII 2014 scene
//Name: plantUnit2.ma
//Last modified: Thu, Nov 21, 2013 10:39:01 PM
//Codeset: UTF-8
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010035-864206";
fileInfo "osv" "Mac OS X 10.9";
fileInfo "license" "student";
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" -13.990755375659621 0.32157419465112014 3.84559382261597 ;
	setAttr ".s" -type "double3" 0.33330606412326197 0.33330606412326197 0.33330606412326197 ;
createNode transform -n "transform8" -p "pCylinder1";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape1" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48354533314704895 0.81418311595916748 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder2";
	setAttr ".t" -type "double3" -12.925410576813947 0.30129175268653308 6.8057898333727067 ;
	setAttr ".r" -type "double3" 0 134.86399402096501 0 ;
	setAttr ".s" -type "double3" 0.33330606412326197 0.33330606412326197 0.33330606412326197 ;
createNode mesh -n "polySurfaceShape1" -p "pCylinder2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 57 ".uvst[0].uvsp[0:56]" -type "float2" 0.421875 0.020933509
		 0.421875 0.29156646 0.65625 0.15625 0.375 0.3125 0.45833334 0.3125 0.54166669 0.3125
		 0.625 0.3125 0.375 0.68843985 0.45833334 0.68843985 0.54166669 0.68843985 0.625 0.68843985
		 0.421875 0.70843351 0.421875 0.97906649 0.65625 0.84375 0.5 0.15000001 0.4609375
		 0.90828323 0.421875 0.97906649 0.421875 0.70843351 0.65625 0.84375 0.421875 0.70843351
		 0.65625 0.84375 0.421875 0.97906649 0.421875 0.70843351 0.5 0.83749998 0.65625 0.84375
		 0.45833337 0.55209631 0.54166669 0.54083288 0.45833337 0.54461825 0.54166669 0.53338659
		 0.45833337 0.54461825 0.54166669 0.53338659 0.54166669 0.54083288 0.45833337 0.55209631
		 0.45833337 0.54835725 0.54166669 0.53710973 0.625 0.47448212 0.375 0.47448212 0.45833337
		 0.46987963 0.625 0.47156978 0.375 0.47156978 0.45833337 0.46709797 0.375 0.47156978
		 0.45833337 0.46848881 0.375 0.47448212 0.54166669 0.50567633 0.625 0.50586951 0.375
		 0.50586951 0.54166669 0.50043356 0.625 0.5002073 0.375 0.5002073 0.54166669 0.50043356
		 0.625 0.5002073 0.625 0.50586951 0.54166669 0.50567633 0.54166669 0.50043356 0.625
		 0.50303841 0.54166669 0.50567633;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 31 ".pt";
	setAttr ".pt[7]" -type "float3" -0.3045789 -3.6018281 1.8484253 ;
	setAttr ".pt[8]" -type "float3" 0.39993528 -0.12037277 0.44041038 ;
	setAttr ".pt[9]" -type "float3" 5.9604645e-08 -1.4901161e-06 1.1920929e-07 ;
	setAttr ".pt[10]" -type "float3" -0.74198616 0 0.74551713 ;
	setAttr ".pt[11]" -type "float3" -1.1736482 0.12037659 1.7575192 ;
	setAttr ".pt[12]" -type "float3" 0.11176694 -1.4901161e-06 -0.1122992 ;
	setAttr ".pt[13]" -type "float3" 6.6613381e-16 -2.5661108 -2.3765712e-16 ;
	setAttr ".pt[14]" -type "float3" 6.6613381e-16 -2.5661108 -2.220446e-16 ;
	setAttr ".pt[15]" -type "float3" -1.6385472 -1.6323206 -0.94553798 ;
	setAttr ".pt[16]" -type "float3" 1.1006517 -3.3824804 -1.1058896 ;
	setAttr ".pt[17]" -type "float3" 0.48196122 5.6438079 -0.0848554 ;
	setAttr ".pt[18]" -type "float3" 0.19969749 5.6438079 0.19875167 ;
	setAttr ".pt[19]" -type "float3" 0.48196122 5.6438079 -0.0848554 ;
	setAttr ".pt[20]" -type "float3" 0.19969749 5.6438079 0.19875167 ;
	setAttr ".pt[21]" -type "float3" -0.046138547 5.6438069 -0.85930371 ;
	setAttr ".pt[22]" -type "float3" -0.32840234 5.6438069 -0.57569665 ;
	setAttr ".pt[23]" -type "float3" -0.32840234 5.6438069 -0.57569665 ;
	setAttr ".pt[24]" -type "float3" -0.32840234 5.6438069 -0.57569665 ;
	setAttr ".pt[25]" -type "float3" -0.17484893 7.3336773 -0.17402078 ;
	setAttr ".pt[26]" -type "float3" -0.17484893 7.3336773 -0.17402078 ;
	setAttr ".pt[34]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[35]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[36]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[37]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[38]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[39]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[40]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[41]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[42]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[43]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr ".pt[44]" -type "float3" 0.043576885 1.8208691 0.043370385 ;
	setAttr -s 45 ".vt[0:44]"  -0.49999619 -1 -0.86602533 -0.49999619 -1 0.86602551
		 0.60525513 -1 0 3.73561478 29.56419754 -0.53308952 3.73561478 29.56419754 0.5330894
		 4.65895653 30.94046402 0 0 -1 0 2.16204834 36.5445137 -1.75246203 2.16204834 37.35737228 1.85010147
		 5.94003296 35.65625763 0.42135751 4.022306442 36.90024185 -0.85968006 3.73563194 37.11662292 0.53299254
		 5.38424873 38.717659 0.83059716 1.68824387 42.75252533 -0.0054945946 1.71403503 42.75249481 0.63140649
		 4.57291031 45.55002213 -0.61498058 4.65099335 45.54999924 1.86661959 2.19947052 18.47936249 0.65383655
		 3.067329407 17.0056114197 0 2.17156219 18.31542206 0.66045922 3.043376923 16.81699181 0
		 5.72930717 18.4022007 1.56209004 2.47199631 20.02705574 3.078681469 5.79249191 19.016592026 1.33653426
		 2.30173874 20.69564247 3.061212301 5.015197754 16.69992828 3.82507896 4.1768322 18.18299484 4.35559177
		 1.32501602 12.16927052 -0.72257221 1.31135941 12.09614563 0.72664857 1.29220581 11.93249512 -0.72515166
		 1.27934647 11.86467266 0.72911197 -1.14004135 12.34656429 1.64867473 0.086994171 13.02872467 -1.7130183
		 0.16290283 13.57651997 -1.70705068 2.7375145 14.5818491 0 1.6786499 14.72108936 -0.69477522
		 2.67964554 14.1589632 0 1.61486053 14.26075077 -0.69978964 1.67588425 15.84991455 -2.3403821
		 3.97367668 14.86627388 -0.83024538 1.81354904 16.20241737 -2.32956171 4.098556519 15.19009972 -0.83024538
		 3.88148355 15.14311218 -3.96543169 4.023575783 16.11080742 -2.81651354 4.031536579 16.35805893 -2.81651354;
	setAttr -s 84 ".ed[0:83]"  0 1 0 1 2 0 2 0 0 3 4 1 4 5 1 5 3 1 0 29 0
		 1 30 0 2 36 0 6 0 1 6 1 1 6 2 1 3 7 0 4 8 0 7 8 1 5 9 0 8 9 1 9 7 1 7 10 0 8 11 0
		 10 11 0 9 12 0 11 12 1 10 13 0 11 14 0 13 14 0 10 15 0 13 15 0 12 16 0 14 16 0 16 15 0
		 17 4 0 18 5 0 18 17 0 19 17 1 20 18 0 20 19 0 20 21 0 19 22 0 21 22 0 18 23 0 21 23 1
		 17 24 0 23 24 0 22 24 0 21 25 0 22 26 0 25 26 0 23 25 0 24 26 0 27 37 0 28 19 0 28 27 0
		 29 27 0 30 28 0 30 29 0 30 31 0 29 32 0 31 32 0 28 31 0 27 33 0 31 33 0 32 33 0 34 20 0
		 35 3 0 35 34 0 36 34 0 37 35 1 37 36 0 37 38 0 36 39 0 38 39 0 35 40 0 38 40 0 34 41 0
		 40 41 0 39 41 1 38 42 0 39 43 0 42 43 0 40 42 0 41 44 0 42 44 0 43 44 0;
	setAttr -s 41 -ch 168 ".fc[0:40]" -type "polyFaces" 
		f 4 0 7 55 -7
		mu 0 4 3 4 40 39
		f 8 1 8 66 63 36 -52 -55 -8
		mu 0 8 4 5 47 44 28 27 37 40
		f 6 2 6 53 50 68 -9
		mu 0 6 5 6 38 35 48 47
		f 3 -1 -10 10
		mu 0 3 1 0 14
		f 3 -2 -11 11
		mu 0 3 2 1 14
		f 3 -3 -12 9
		mu 0 3 0 2 14
		f 4 -28 25 29 30
		mu 0 4 23 21 22 24
		f 4 3 13 -15 -13
		mu 0 4 12 11 17 16
		f 4 4 15 -17 -14
		mu 0 4 11 13 18 17
		f 4 5 12 -18 -16
		mu 0 4 13 12 16 18
		f 4 14 19 -21 -19
		mu 0 4 16 17 19 15
		f 4 16 21 -23 -20
		mu 0 4 17 18 20 19
		f 4 20 24 -26 -24
		mu 0 4 15 19 22 21
		f 3 23 27 -27
		mu 0 3 15 21 23
		f 4 22 28 -30 -25
		mu 0 4 19 20 24 22
		f 6 26 -31 -29 -22 17 18
		mu 0 6 15 23 24 20 18 16
		f 4 -34 32 -5 -32
		mu 0 4 25 26 9 8
		f 4 -37 37 39 -39
		mu 0 4 27 28 30 29
		f 4 35 40 -42 -38
		mu 0 4 28 26 31 30
		f 4 33 42 -44 -41
		mu 0 4 26 25 32 31
		f 4 -35 38 44 -43
		mu 0 4 25 27 29 32
		f 4 -40 45 47 -47
		mu 0 4 29 30 34 33
		f 3 41 48 -46
		mu 0 3 30 31 34
		f 4 43 49 -48 -49
		mu 0 4 31 32 33 34
		f 3 -45 46 -50
		mu 0 3 32 29 33
		f 8 -53 51 34 31 -4 -65 -68 -51
		mu 0 8 36 37 27 25 8 7 46 49
		f 3 -59 61 -63
		mu 0 3 41 42 43
		f 4 -56 56 58 -58
		mu 0 4 39 40 42 41
		f 3 54 59 -57
		mu 0 3 40 37 42
		f 4 52 60 -62 -60
		mu 0 4 37 36 43 42
		f 4 -54 57 62 -61
		mu 0 4 36 39 41 43
		f 6 -66 64 -6 -33 -36 -64
		mu 0 6 44 45 10 9 26 28
		f 3 -80 82 -84
		mu 0 3 54 55 56
		f 4 -69 69 71 -71
		mu 0 4 47 48 51 50
		f 4 67 72 -74 -70
		mu 0 4 48 45 52 51
		f 4 65 74 -76 -73
		mu 0 4 45 44 53 52
		f 4 -67 70 76 -75
		mu 0 4 44 47 50 53
		f 4 -72 77 79 -79
		mu 0 4 50 51 55 54
		f 3 73 80 -78
		mu 0 3 51 52 55
		f 4 75 81 -83 -81
		mu 0 4 52 53 56 55
		f 4 -77 78 83 -82
		mu 0 4 53 50 54 56;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform7" -p "pCylinder2";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.515625 0.64578324556350708 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder3";
	setAttr ".t" -type "double3" -11.92338283629895 1.3432799525985 6.2174445412907806 ;
	setAttr ".s" -type "double3" 0.19508583754730424 0.19508583754730424 0.19508583754730424 ;
createNode transform -n "transform6" -p "pCylinder3";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape3" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.45151586830615997 0.64377889037132263 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "pCylinder4";
	setAttr ".t" -type "double3" -10.603789422579212 0.23825542700922675 4.3337129700102066 ;
	setAttr ".r" -type "double3" 0 -151.66586171934082 0 ;
	setAttr ".s" -type "double3" 0.33330606412326197 0.33330606412326197 0.33330606412326197 ;
createNode mesh -n "polySurfaceShape2" -p "pCylinder4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 57 ".uvst[0].uvsp[0:56]" -type "float2" 0.421875 0.020933509
		 0.421875 0.29156646 0.65625 0.15625 0.375 0.3125 0.45833334 0.3125 0.54166669 0.3125
		 0.625 0.3125 0.375 0.68843985 0.45833334 0.68843985 0.54166669 0.68843985 0.625 0.68843985
		 0.421875 0.70843351 0.421875 0.97906649 0.65625 0.84375 0.5 0.15000001 0.4609375
		 0.90828323 0.421875 0.97906649 0.421875 0.70843351 0.65625 0.84375 0.421875 0.70843351
		 0.65625 0.84375 0.421875 0.97906649 0.421875 0.70843351 0.5 0.83749998 0.65625 0.84375
		 0.45833337 0.55209631 0.54166669 0.54083288 0.45833337 0.54461825 0.54166669 0.53338659
		 0.45833337 0.54461825 0.54166669 0.53338659 0.54166669 0.54083288 0.45833337 0.55209631
		 0.45833337 0.54835725 0.54166669 0.53710973 0.625 0.47448212 0.375 0.47448212 0.45833337
		 0.46987963 0.625 0.47156978 0.375 0.47156978 0.45833337 0.46709797 0.375 0.47156978
		 0.45833337 0.46848881 0.375 0.47448212 0.54166669 0.50567633 0.625 0.50586951 0.375
		 0.50586951 0.54166669 0.50043356 0.625 0.5002073 0.375 0.5002073 0.54166669 0.50043356
		 0.625 0.5002073 0.625 0.50586951 0.54166669 0.50567633 0.54166669 0.50043356 0.625
		 0.50303841 0.54166669 0.50567633;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 45 ".vt[0:44]"  -0.49999619 -1 -0.86602533 -0.49999619 -1 0.86602551
		 0.60525513 -1 0 3.73561478 29.56419754 -0.53308952 3.73561478 29.56419754 0.5330894
		 4.65895653 30.94046402 0 0 -1 0 2.16204834 36.5445137 -1.75246203 2.16204834 37.35737228 1.85010147
		 5.94003296 35.65625763 0.42135751 4.022306442 36.90024185 -0.85968006 3.73563194 37.11662292 0.53299254
		 5.38424873 38.717659 0.83059716 1.68824387 42.75252533 -0.0054945946 1.71403503 42.75249481 0.63140649
		 4.57291031 45.55002213 -0.61498058 4.65099335 45.54999924 1.86661959 2.19947052 18.47936249 0.65383655
		 3.067329407 17.0056114197 0 2.17156219 18.31542206 0.66045922 3.043376923 16.81699181 0
		 5.72930717 18.4022007 1.56209004 2.47199631 20.02705574 3.078681469 5.79249191 19.016592026 1.33653426
		 2.30173874 20.69564247 3.061212301 5.015197754 16.69992828 3.82507896 4.1768322 18.18299484 4.35559177
		 1.32501602 12.16927052 -0.72257221 1.31135941 12.09614563 0.72664857 1.29220581 11.93249512 -0.72515166
		 1.27934647 11.86467266 0.72911197 -1.14004135 12.34656429 1.64867473 0.086994171 13.02872467 -1.7130183
		 0.16290283 13.57651997 -1.70705068 2.7375145 14.5818491 0 1.6786499 14.72108936 -0.69477522
		 2.67964554 14.1589632 0 1.61486053 14.26075077 -0.69978964 1.67588425 15.84991455 -2.3403821
		 3.97367668 14.86627388 -0.83024538 1.81354904 16.20241737 -2.32956171 4.098556519 15.19009972 -0.83024538
		 3.88148355 15.14311218 -3.96543169 4.023575783 16.11080742 -2.81651354 4.031536579 16.35805893 -2.81651354;
	setAttr -s 84 ".ed[0:83]"  0 1 0 1 2 0 2 0 0 3 4 1 4 5 1 5 3 1 0 29 0
		 1 30 0 2 36 0 6 0 1 6 1 1 6 2 1 3 7 0 4 8 0 7 8 1 5 9 0 8 9 1 9 7 1 7 10 0 8 11 0
		 10 11 0 9 12 0 11 12 1 10 13 0 11 14 0 13 14 0 10 15 0 13 15 0 12 16 0 14 16 0 16 15 0
		 17 4 0 18 5 0 18 17 0 19 17 1 20 18 0 20 19 0 20 21 0 19 22 0 21 22 0 18 23 0 21 23 1
		 17 24 0 23 24 0 22 24 0 21 25 0 22 26 0 25 26 0 23 25 0 24 26 0 27 37 0 28 19 0 28 27 0
		 29 27 0 30 28 0 30 29 0 30 31 0 29 32 0 31 32 0 28 31 0 27 33 0 31 33 0 32 33 0 34 20 0
		 35 3 0 35 34 0 36 34 0 37 35 1 37 36 0 37 38 0 36 39 0 38 39 0 35 40 0 38 40 0 34 41 0
		 40 41 0 39 41 1 38 42 0 39 43 0 42 43 0 40 42 0 41 44 0 42 44 0 43 44 0;
	setAttr -s 41 -ch 168 ".fc[0:40]" -type "polyFaces" 
		f 4 0 7 55 -7
		mu 0 4 3 4 40 39
		f 8 1 8 66 63 36 -52 -55 -8
		mu 0 8 4 5 47 44 28 27 37 40
		f 6 2 6 53 50 68 -9
		mu 0 6 5 6 38 35 48 47
		f 3 -1 -10 10
		mu 0 3 1 0 14
		f 3 -2 -11 11
		mu 0 3 2 1 14
		f 3 -3 -12 9
		mu 0 3 0 2 14
		f 4 -28 25 29 30
		mu 0 4 23 21 22 24
		f 4 3 13 -15 -13
		mu 0 4 12 11 17 16
		f 4 4 15 -17 -14
		mu 0 4 11 13 18 17
		f 4 5 12 -18 -16
		mu 0 4 13 12 16 18
		f 4 14 19 -21 -19
		mu 0 4 16 17 19 15
		f 4 16 21 -23 -20
		mu 0 4 17 18 20 19
		f 4 20 24 -26 -24
		mu 0 4 15 19 22 21
		f 3 23 27 -27
		mu 0 3 15 21 23
		f 4 22 28 -30 -25
		mu 0 4 19 20 24 22
		f 6 26 -31 -29 -22 17 18
		mu 0 6 15 23 24 20 18 16
		f 4 -34 32 -5 -32
		mu 0 4 25 26 9 8
		f 4 -37 37 39 -39
		mu 0 4 27 28 30 29
		f 4 35 40 -42 -38
		mu 0 4 28 26 31 30
		f 4 33 42 -44 -41
		mu 0 4 26 25 32 31
		f 4 -35 38 44 -43
		mu 0 4 25 27 29 32
		f 4 -40 45 47 -47
		mu 0 4 29 30 34 33
		f 3 41 48 -46
		mu 0 3 30 31 34
		f 4 43 49 -48 -49
		mu 0 4 31 32 33 34
		f 3 -45 46 -50
		mu 0 3 32 29 33
		f 8 -53 51 34 31 -4 -65 -68 -51
		mu 0 8 36 37 27 25 8 7 46 49
		f 3 -59 61 -63
		mu 0 3 41 42 43
		f 4 -56 56 58 -58
		mu 0 4 39 40 42 41
		f 3 54 59 -57
		mu 0 3 40 37 42
		f 4 52 60 -62 -60
		mu 0 4 37 36 43 42
		f 4 -54 57 62 -61
		mu 0 4 36 39 41 43
		f 6 -66 64 -6 -33 -36 -64
		mu 0 6 44 45 10 9 26 28
		f 3 -80 82 -84
		mu 0 3 54 55 56
		f 4 -69 69 71 -71
		mu 0 4 47 48 51 50
		f 4 67 72 -74 -70
		mu 0 4 48 45 52 51
		f 4 65 74 -76 -73
		mu 0 4 45 44 53 52
		f 4 -67 70 76 -75
		mu 0 4 44 47 50 53
		f 4 -72 77 79 -79
		mu 0 4 50 51 55 54
		f 3 73 80 -78
		mu 0 3 51 52 55
		f 4 75 81 -83 -81
		mu 0 4 52 53 56 55
		f 4 -77 78 83 -82
		mu 0 4 53 50 54 56;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "transform5" -p "pCylinder4";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape4" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57637536525726318 0.52571475505828857 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder5";
	setAttr ".t" -type "double3" -9.9893802035586763 6.2560098414480478 5.5664745191589766 ;
createNode transform -n "transform4" -p "pCylinder5";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape5" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.515625 0.64578324556350708 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[34]" -type "float3"  0 1.1920929e-07 0;
createNode transform -n "pCylinder6";
	setAttr ".t" -type "double3" -10.285504833114304 5.2499271786076553 7.3365301364317954 ;
	setAttr ".r" -type "double3" 0 -94.217540793758985 0 ;
createNode transform -n "transform3" -p "pCylinder6";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape6" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43331181047503486 0.39240819215774536 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder7";
	setAttr ".t" -type "double3" -11.802617879402993 2.5250610621847591 8.6249391314291231 ;
createNode transform -n "transform2" -p "pCylinder7";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape7" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4992830753326416 0.97630643844604492 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCylinder8";
	setAttr ".t" -type "double3" -14.435883141577239 1.4279836523492395 8.0910633460064272 ;
	setAttr ".r" -type "double3" 0 113.11451128346008 0 ;
	setAttr ".s" -type "double3" 0.19508583754730424 0.19508583754730424 0.19508583754730424 ;
createNode mesh -n "polySurfaceShape3" -p "pCylinder8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.44376936505750286 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 55 ".uvst[0].uvsp[0:54]" -type "float2" 0.375 0.3125 0.45833334
		 0.3125 0.54166669 0.3125 0.625 0.3125 0.375 0.68843985 0.45833334 0.68843985 0.54166669
		 0.68843985 0.625 0.68843985 0.21905258 0.70843351 0.21905258 0.97906649 0.44376937
		 0.84375 0.86459404 0.83956182 0.21905258 0.97906649 0.21905258 0.70843351 0.44376937
		 0.84375 0.61365348 0.98112833 0.61365348 0.71049535 0.51606971 0.84581184 0.61365348
		 0.98112833 0.61365348 0.71049535 0.72757256 0.84581184 0.61365348 0.98112833 0.61365348
		 0.71049535 0.72757256 0.84581184 0.61365348 0.98112833 0.61365348 0.71049535 0.72757256
		 0.84581184 0.45833334 0.54369551 0.54166669 0.54925191 0.45833334 0.52762377 0.54166669
		 0.53407544 0.45833337 0.61582375 0.54166669 0.61942482 0.45833337 0.60037345 0.54166669
		 0.60485315 0.45833337 0.60037345 0.54166669 0.60485315 0.54166669 0.61942482 0.45833337
		 0.61582375 0.5 0.61011881 0.45833334 0.52762377 0.54166669 0.53407544 0.54166669
		 0.54925191 0.45833334 0.54369551 0.45833334 0.53565967 0.54166669 0.53407544 0.54166669
		 0.54925191 0.21905258 0.97906649 0.44376937 0.84375 0.44376937 0.84375 0.21905258
		 0.97906649 0.21905258 0.97906649 0.44376937 0.84375 0.44376937 0.84375 0.21905258
		 0.97906649;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 50 ".vt[0:49]"  -0.6763382 -7.37762213 -1.17145061 -0.6763382 -7.37762213 1.17145729
		 1.35268021 -7.37762213 2.8610229e-06 -3.5374527 11.59670544 -0.9482069 -3.5374527 11.59670544 0.94821358
		 -1.89510727 11.59670544 2.8610229e-06 -2.17274094 26.27804565 -0.94823742 -2.17274094 26.27804565 0.94822693
		 -0.53038788 26.27804565 -1.0490417e-05 -4.15311813 37.054756165 -0.94823742 -4.15311813 37.054756165 0.94822693
		 -2.51076889 36.33511734 -1.0490417e-05 -4.92417908 41.81460953 -1.74901772 -4.92419052 41.81461716 1.74900627
		 0.26345062 40.55602646 -1.0490417e-05 -5.51847839 47.67403793 -3.16333866 -5.51847839 47.67404175 3.16331863
		 -1.48329544 45.53256226 -1.9073486e-05 -2.13381577 55.020282745 -4.41899109 -2.13380432 55.020282745 4.41897774
		 0.6985054 61.081531525 -1.9073486e-06 0.79350281 48.58173752 -1.9073486e-05 -2.43586731 4.29120922 1.034168243
		 -0.69264603 4.57165337 2.8610229e-06 -2.31355286 3.48004246 1.043712616 0.72675705 3.80567169 6.6757202e-06
		 -2.98480606 7.93164635 0.99133873 -1.29887772 8.11340046 2.8610229e-06 -2.86722183 7.15184498 1.00051307678
		 -1.17298889 7.37794018 2.8610229e-06 2.7754364 7.36534977 0.92803192 -2.012569427 8.5561409 3.75093269
		 2.53329849 8.16575146 0.92803192 -2.2387352 9.44182873 3.73328209 0.10845947 12.71491909 7.22513962
		 2.64953232 4.29760265 1.9423275 -2.99815369 5.0081691742 3.15611267 2.51842117 5.063584328 1.94232368
		 -3.12047195 5.81933689 3.1465683 1.43066406 2.26148605 3.63691139 -0.38250351 2.34144115 6.48533058
		 1.29955292 3.027466774 4.60802841 -2.2612114 26.75948334 -0.94823742 -0.63637924 26.81630325 -1.0490417e-05
		 4.57685661 28.25450516 -5.1759553 -2.56569219 33.31373596 -7.6353116 -2.79514647 34.56240845 -7.6353116
		 4.30195045 29.65055847 -5.1759553 2.30952549 26.96935272 -10.8121624 1.2776022 26.024694443 -12.1286087;
	setAttr -s 97 ".ed[0:96]"  0 1 0 1 2 0 2 0 0 3 4 1 4 5 1 5 3 1 0 3 0
		 1 24 0 2 25 0 3 6 0 4 7 0 6 7 1 5 8 0 7 8 1 8 6 0 6 42 0 7 10 0 9 10 1 8 43 1 10 11 1
		 11 9 1 9 12 0 10 13 0 12 13 1 11 14 0 13 14 1 14 12 1 12 15 0 13 16 0 15 16 1 14 17 0
		 16 17 1 17 15 1 15 18 0 16 19 0 18 19 0 19 20 1 18 20 1 17 21 0 19 21 0 21 20 1 21 18 0
		 22 28 0 23 29 0 23 22 0 24 22 0 25 23 1 25 24 0 26 4 0 27 5 0 27 26 0 28 26 0 29 27 1
		 29 28 0 29 30 0 28 31 0 30 31 0 27 32 0 30 32 1 26 33 0 32 33 0 31 33 0 30 34 0 31 34 0
		 32 34 0 33 34 0 25 35 0 24 36 0 35 36 0 23 37 0 35 37 1 22 38 0 37 38 0 36 38 1 35 39 0
		 36 40 0 39 40 0 37 41 0 39 41 0 38 40 0 41 40 0 42 9 0 43 11 0 42 43 0 8 44 0 6 45 0
		 44 45 0 42 46 0 45 46 1 43 47 0 46 47 0 44 47 0 44 48 0 45 49 0 48 49 0 46 49 0 47 48 0;
	setAttr -s 48 -ch 191 ".fc[0:47]" -type "polyFaces" 
		f 8 0 7 45 42 51 48 -4 -7
		mu 0 8 0 1 29 27 33 31 5 4
		f 4 1 8 47 -8
		mu 0 4 1 2 30 29
		f 8 2 6 -6 -50 -53 -44 -47 -9
		mu 0 8 2 3 7 6 32 34 28 30
		f 3 35 36 -38
		mu 0 3 24 25 11
		f 3 39 40 -37
		mu 0 3 25 26 11
		f 3 41 37 -41
		mu 0 3 26 24 11
		f 4 3 10 -12 -10
		mu 0 4 9 8 13 12
		f 4 4 12 -14 -11
		mu 0 4 8 10 14 13
		f 4 5 9 -15 -13
		mu 0 4 10 9 12 14
		f 5 11 16 -18 -82 -16
		mu 0 5 12 13 16 15 47
		f 5 13 18 82 -20 -17
		mu 0 5 13 14 48 17 16
		f 4 17 22 -24 -22
		mu 0 4 15 16 19 18
		f 4 19 24 -26 -23
		mu 0 4 16 17 20 19
		f 4 20 21 -27 -25
		mu 0 4 17 15 18 20
		f 4 23 28 -30 -28
		mu 0 4 18 19 22 21
		f 4 25 30 -32 -29
		mu 0 4 19 20 23 22
		f 4 26 27 -33 -31
		mu 0 4 20 18 21 23
		f 4 29 34 -36 -34
		mu 0 4 21 22 25 24
		f 4 31 38 -40 -35
		mu 0 4 22 23 26 25
		f 4 32 33 -42 -39
		mu 0 4 23 21 24 26
		f 4 -45 43 53 -43
		mu 0 4 27 28 34 33
		f 3 -77 78 80
		mu 0 3 44 45 46
		f 4 -51 49 -5 -49
		mu 0 4 31 32 6 5
		f 4 -54 54 56 -56
		mu 0 4 33 34 36 35
		f 4 52 57 -59 -55
		mu 0 4 34 32 37 36
		f 4 50 59 -61 -58
		mu 0 4 32 31 38 37
		f 4 -52 55 61 -60
		mu 0 4 31 33 35 38
		f 3 -57 62 -64
		mu 0 3 35 36 39
		f 3 58 64 -63
		mu 0 3 36 37 39
		f 3 60 65 -65
		mu 0 3 37 38 39
		f 3 -62 63 -66
		mu 0 3 38 35 39
		f 4 -48 66 68 -68
		mu 0 4 29 30 41 40
		f 4 46 69 -71 -67
		mu 0 4 30 28 42 41
		f 4 44 71 -73 -70
		mu 0 4 28 27 43 42
		f 4 -46 67 73 -72
		mu 0 4 27 29 40 43
		f 4 -69 74 76 -76
		mu 0 4 40 41 45 44
		f 4 70 77 -79 -75
		mu 0 4 41 42 46 45
		f 4 72 79 -81 -78
		mu 0 4 42 43 44 46
		f 3 -74 75 -80
		mu 0 3 43 40 44
		f 4 -84 81 -21 -83
		mu 0 4 48 47 15 17
		f 4 14 85 -87 -85
		mu 0 4 14 12 50 49
		f 4 15 87 -89 -86
		mu 0 4 12 47 51 50
		f 4 83 89 -91 -88
		mu 0 4 47 48 52 51
		f 4 -19 84 91 -90
		mu 0 4 48 14 49 52
		f 4 86 93 -95 -93
		mu 0 4 49 50 54 53
		f 3 88 95 -94
		mu 0 3 50 51 54
		f 4 90 96 94 -96
		mu 0 4 51 52 53 54
		f 3 -92 92 -97
		mu 0 3 52 49 53;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "transform1" -p "pCylinder8";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape8" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.78677654266357422 0.50375999931207649 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "polySurface1";
	setAttr ".rp" -type "double3" -12.929828643798828 8.1635635495185852 6.0799844264984131 ;
	setAttr ".sp" -type "double3" -12.929828643798828 8.1635635495185852 6.0799844264984131 ;
createNode mesh -n "polySurfaceShape4" -p "polySurface1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47159416973590851 0.49349368363618851 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 44.289652917324013 33.217239687993022 44.289652917323991 ;
	setAttr ".r" -type "double3" -27.938352729602379 44.999999999999972 -5.172681101354183e-14 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 70.898037515601203;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:315]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 8 ".ip";
	setAttr -s 8 ".im";
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk";
	setAttr ".uvtk[10]" -type "float2" 0 -0.016435402 ;
	setAttr ".uvtk[11]" -type "float2" -0.035610091 -0.005478478 ;
	setAttr ".uvtk[12]" -type "float2" 0 -0.016435402 ;
	setAttr ".uvtk[18]" -type "float2" -0.03287084 0.041088551 ;
	setAttr ".uvtk[20]" -type "float2" -0.03287084 0.041088551 ;
	setAttr ".uvtk[40]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[43]" -type "float2" 0 -0.005478478 ;
	setAttr ".uvtk[44]" -type "float2" -0.18078965 -0.013696216 ;
	setAttr ".uvtk[45]" -type "float2" -0.18078965 -0.013696216 ;
	setAttr ".uvtk[46]" -type "float2" -0.17257196 0.016435403 ;
	setAttr ".uvtk[50]" -type "float2" -0.11504798 0 ;
	setAttr ".uvtk[51]" -type "float2" -0.087655559 0.024653159 ;
	setAttr ".uvtk[52]" -type "float2" 0 -0.052045543 ;
	setAttr ".uvtk[53]" -type "float2" -0.21913895 0.041088551 ;
	setAttr ".uvtk[54]" -type "float2" -0.07122016 0 ;
	setAttr ".uvtk[55]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[56]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[57]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[58]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[59]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[60]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[61]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[62]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[63]" -type "float2" -0.17805041 -0.0082177063 ;
	setAttr ".uvtk[64]" -type "float2" -0.24105288 -0.0082177063 ;
createNode polyCylProj -n "polyCylProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:37]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -13.990755375659621 0.32157419465112014 3.84559382261597 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -13.190822124481199 7.745970830321312 3.9106152057647705 ;
	setAttr ".ro" -type "double3" 0 515.42860464079581 0 ;
	setAttr ".ps" -type "double2" 250.20190799257759 15.51540544629097 ;
	setAttr ".is" -type "double2" 0.12709644074292523 1 ;
	setAttr ".r" 2.7734475135803223;
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[42]" "vtx[44]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[39]" -type "float3" 0 -0.9056946 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.9056946 0 ;
	setAttr ".tk[42]" -type "float3" 1.1385026 -0.9947468 0.18267485 ;
	setAttr ".tk[43]" -type "float3" -1.0171957 0.050891858 -0.178544 ;
	setAttr ".tk[44]" -type "float3" 1.0008415 -1.3472499 0.17185459 ;
	setAttr ".tk[45]" -type "float3" -1.1341147 -0.025679674 -0.178544 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[32]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.726801 5.3286285 -1.0168732 ;
	setAttr ".rs" 916855467;
	setAttr ".lt" -type "double3" 8.3266726846886741e-15 -0.23139541238500097 0.66723628456720818 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.130546888090077 5.2568931759180986 -1.2685421120634506 ;
	setAttr ".cbx" -type "double3" -10.323055170941071 5.4003639640960497 -0.76520434472636412 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[38:41]" -type "float3"  -0.65000975 0.041996043 -0.40517366
		 0.58299816 0.065840006 0.40517363 -0.57613784 -0.065840065 -0.39936745 0.65000975
		 -0.033222456 0.40517363;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[32]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.963793 4.8129482 -0.60510057 ;
	setAttr ".rs" 361238235;
	setAttr ".lt" -type "double3" -1.4710455076283324e-15 -0.54814654171218191 0.43724545441591944 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.150886262741825 4.7192682974014053 -0.72172261830276174 ;
	setAttr ".cbx" -type "double3" -10.77669888956798 4.9066283552210601 -0.4884784865843308 ;
createNode polyCut -n "polyCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[31]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".pc" -type "double3" -10.694841863118304 4.9821880690591005 -1.0945944366760436 ;
	setAttr ".ro" -type "double3" 67.797898997542958 10.95352868871743 -174.74407286034102 ;
	setAttr ".ps" -type "double2" 1.7195100784301758 10.64595103263855 ;
createNode polyCut -n "polyCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".pc" -type "double3" -10.688134431886033 5.1035295307045212 -1.0790892026036063 ;
	setAttr ".ro" -type "double3" 68.301013316439679 10.723639612218015 -177.03191938126119 ;
	setAttr ".ps" -type "double2" 1.7195100784301758 10.64595103263855 ;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[33]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[31:34]" -type "float3"  -1.22727978 -1.39610648 0.95228994
		 -0.013103449 -0.7817691 -0.95513964 -1.25929272 -1.62757981 0.95475334 0.029995115
		 -0.47074896 -0.95175129;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[26]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -11.255104 4.0053296 -0.48781848 ;
	setAttr ".rs" 1407538638;
	setAttr ".lt" -type "double3" 0.56563030995524721 -5.7592819402430005e-16 0.4794461626242183 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -11.262715136406042 3.9545673466913298 -0.73017593162415584 ;
	setAttr ".cbx" -type "double3" -11.247493196557397 4.0560916587531972 -0.24546104573479924 ;
createNode polyCut -n "polyCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".pc" -type "double3" -12.077986863872804 4.1015810238189454 -0.11993531985874915 ;
	setAttr ".ro" -type "double3" -83.796423998613747 -63.97450713115731 -16.212844221478363 ;
	setAttr ".ps" -type "double2" 1 4.3893978595733643 ;
createNode polyCut -n "polyCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 0;
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".pc" -type "double3" -12.079056384239632 4.0918676494866064 -0.092574620703330099 ;
	setAttr ".ro" -type "double3" -76.569039774080821 -62.046292519567679 -24.40746306914869 ;
	setAttr ".ps" -type "double2" 1.4117546081542969 10.187232732772827 ;
createNode polyCut -n "polyCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".pc" -type "double3" -12.090946515915824 4.1740434583120827 -0.087280793008970778 ;
	setAttr ".ro" -type "double3" -83.290622726927523 -63.974507131159754 -16.212844221513954 ;
	setAttr ".ps" -type "double2" 1.4117546081542969 10.187232732772827 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[18]" -type "float3" 0 -1.3939222 0 ;
	setAttr ".tk[20]" -type "float3" 0 -1.3939222 0 ;
	setAttr ".tk[21]" -type "float3" 0 -1.4710387 0.88954788 ;
	setAttr ".tk[22]" -type "float3" 0.83296275 -0.24125606 0.66399217 ;
	setAttr ".tk[23]" -type "float3" 0 -1.4710387 0.66399217 ;
	setAttr ".tk[24]" -type "float3" 0.58906996 3.5527137e-15 0.66399217 ;
	setAttr ".tk[25]" -type "float3" -0.49229634 -2.0270386 1.5843842 ;
	setAttr ".tk[26]" -type "float3" 0.58984041 -0.58757389 0.66399217 ;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 1 "vtx[26:27]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[26:27]" -type "float3"  0.030816317 0.038778305 -0.0073111057
		 -0.030816317 -0.038776398 0.0073108673;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[25]" "vtx[27]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[21:28]" -type "float3"  1.22852039 -0.11685318 0 -0.56208265
		 0.0025528073 -8.8817842e-16 1.22852039 0 0 -0.56208265 -0.0025528073 -8.8817842e-16
		 -0.15580493 0.33516917 0.14196569 0.19254658 0.064324372 -0.14196569 -0.21899006
		 -0.1623712 0.14196569 0.18054603 -0.29055429 -0.13911863;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.561707 6.7808266 0.026017927 ;
	setAttr ".rs" 827705032;
	setAttr ".lt" -type "double3" 5.3845816694320092e-15 -0.48747727017367454 0.64981293386801875 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.955485083600832 6.6628192963487232 -0.2643161676144099 ;
	setAttr ".cbx" -type "double3" -10.167929687734707 6.8988337445140386 0.3163520214276182 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[21:24]" -type "float3"  0.69430983 -0.21982801 -0.54084396
		 -0.73354226 -0.048667319 0.54084402 0.73354226 0.08908987 -0.54084396 -0.68782181
		 0.21982801 0.52999771;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[17]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.816052 6.1145458 -0.37841097 ;
	setAttr ".rs" 796237246;
	setAttr ".lt" -type "double3" -1.1102230246251563e-15 0.70017091558277311 0.42655019234922315 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.96533589229778 6.0698082733493273 -0.4884784865843308 ;
	setAttr ".cbx" -type "double3" -10.666769579730513 6.1592835783133255 -0.26834342331575795 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[19:20]" -type "float3"  0.056338035 0.44403136 0 0.056338035
		 0.44403136 0;
createNode polyCut -n "polyCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[16]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".pc" -type "double3" -10.686029889934854 6.0054647652593411 0.50197552058271189 ;
	setAttr ".ro" -type "double3" -94.850717955490623 2.9379348819417626 -3.4299919577741869 ;
	setAttr ".ps" -type "double2" 1.7195100784301758 10.64595103263855 ;
createNode polyCut -n "polyCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".pc" -type "double3" -10.652151152802812 6.1832540644428953 0.52873936140026356 ;
	setAttr ".ro" -type "double3" -92.890326811447594 2.9075290121876201 -3.2343478032207593 ;
	setAttr ".ps" -type "double2" 1.7195100784301758 10.64595103263855 ;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "e[23]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "e[28]";
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[12]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[2]" -type "float3" -0.39474571 2.220446e-16 0 ;
	setAttr ".tk[5]" -type "float3" 0 1.3762677 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.81285918 0 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.42134151 ;
	setAttr ".tk[10]" -type "float3" 0.28667545 -0.21638578 -0.42430031 ;
	setAttr ".tk[12]" -type "float3" -1.3096493 -1.8174124 -0.85967314 ;
	setAttr ".tk[14]" -type "float3" -1.2625481 1.0967324 0.4298605 ;
	setAttr ".tk[15]" -type "float3" -1.2625481 1.0967324 -0.041944198 ;
	setAttr ".tk[16]" -type "float3" 0 2.2932229 -0.75533152 ;
	setAttr ".tk[17]" -type "float3" 0 2.2932229 0.75533152 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[6:7]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.169273 12.638013 -0.42261437 ;
	setAttr ".rs" 1852047666;
	setAttr ".lt" -type "double3" 0.88667692486051619 -2.1141942363467336e-18 1.2534747406492257 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.444020291809178 12.371195500613888 -0.63359332444749117 ;
	setAttr ".cbx" -type "double3" -9.8945269537604759 12.90483053221736 -0.21163543543052099 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[7:13]" -type "float3"  -1.57356834 2.93492627 -1.21940434
		 -1.57356834 2.93492627 1.31702793 1.28107476 1.23380888 0 0 -5.55811548 0.097623549
		 0 -5.55811548 0 1.28856099 -3.95708442 0 0.72533029 -3.95708442 0.83060819;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.290149 11.473209 -0.48847586 ;
	setAttr ".rs" 817824069;
	setAttr ".lt" -type "double3" 1.9214501951331231e-15 -2.4962019180463298e-16 2.7505403981742047 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.444026013386967 11.473209123790893 -0.66614984707779379 ;
	setAttr ".cbx" -type "double3" -10.136271244218468 11.473210395252622 -0.31080186144463606 ;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -11.689129071659988 0 -0.4884784865843308 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -10.290149 9.8539267 -0.48847851 ;
	setAttr ".rs" 609750824;
	setAttr ".lt" -type "double3" 0 -2.9024973376493996e-17 1.619283140717183 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -10.444025854454251 9.8539263211144164 -0.66616043597002583 ;
	setAttr ".cbx" -type "double3" -10.136271562083902 9.8539263211144164 -0.31079657693181484 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[3]" -type "float3" 4.2356153 28.564198 0.33293605 ;
	setAttr ".tk[4]" -type "float3" 4.2356153 28.564198 -0.33293605 ;
	setAttr ".tk[5]" -type "float3" 3.6589534 28.564198 -2.2914477e-08 ;
	setAttr ".tk[7]" -type "float3" 4.043395 28.564198 -2.2914477e-08 ;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sa" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode polyCylProj -n "polyCylProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:37]";
	setAttr ".ix" -type "matrix" -0.23512286170357588 0 -0.23624176659867149 0 0 0.33330606412326197 0 0
		 0.23624176659867149 0 -0.23512286170357588 0 -12.925410576813947 0.30129175268653308 6.8057898333727067 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -13.521355628967283 7.6722096192964111 5.7892818450927734 ;
	setAttr ".ic" -type "double2" 0.5 0.47289591705061707 ;
	setAttr ".ro" -type "double3" 0 232.24027168020928 0 ;
	setAttr ".ps" -type "double2" 273.0498199386966 16.296782910823822 ;
	setAttr ".is" -type "double2" 0.22502399863246392 1 ;
	setAttr ".r" 2.8614044189453125;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode polyTweak -n "polyTweak50";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[7]" -type "float3" 1.6246246 7.1054274e-15 -1.632356 ;
	setAttr ".tk[8]" -type "float3" 0.59174424 0 0.58894157 ;
	setAttr ".tk[9]" -type "float3" 0.91242456 0 -0.91676658 ;
	setAttr ".tk[11]" -type "float3" 1.1741029 7.1054274e-15 1.1685423 ;
	setAttr ".tk[12]" -type "float3" 0.54749572 2.3241346 -0.55010104 ;
	setAttr ".tk[13]" -type "float3" -0.74417782 2.3241346 0.74771917 ;
	setAttr ".tk[14]" -type "float3" 2.1359382 2.3241346 1.5091338 ;
	setAttr ".tk[15]" -type "float3" -1.1706632 5.7268252 -0.86634851 ;
	setAttr ".tk[20]" -type "float3" 0 -0.88220817 4.4408921e-16 ;
	setAttr ".tk[22]" -type "float3" -8.8817842e-16 -1.0439577 5.5511151e-16 ;
	setAttr ".tk[24]" -type "float3" 0.12117083 1.7372558 0.1205972 ;
	setAttr ".tk[25]" -type "float3" 1.1027979 -0.98660624 1.0975748 ;
	setAttr ".tk[26]" -type "float3" -0.067998253 2.3307712 -0.067676097 ;
	setAttr ".tk[27]" -type "float3" -0.067998253 2.3307712 -0.067676097 ;
	setAttr ".tk[28]" -type "float3" -0.067998253 2.3307712 -0.067676097 ;
	setAttr ".tk[29]" -type "float3" -0.067998253 2.3307712 -0.067676097 ;
	setAttr ".tk[30]" -type "float3" -0.067998253 2.3307712 -0.067676097 ;
	setAttr ".tk[31]" -type "float3" -0.067998253 2.3307712 -0.067676097 ;
	setAttr ".tk[32]" -type "float3" -0.067998253 2.3307712 -0.067676097 ;
	setAttr ".tk[33]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[34]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[35]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[36]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[37]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[38]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[39]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[40]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[41]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[42]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
	setAttr ".tk[43]" -type "float3" 0.41292086 2.6359286 0.41096509 ;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[8]" "vtx[11]";
	setAttr ".ix" -type "matrix" -0.23512286170357588 0 -0.23624176659867149 0 0 0.33330606412326197 0 0
		 0.23624176659867149 0 -0.23512286170357588 0 -1.4522946590968422 0 -0.48847848658433091 1;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 5 ".uvtk";
	setAttr ".uvtk[43]" -type "float2" 0.27602923 -0.047774315 ;
	setAttr ".uvtk[45]" -type "float2" 0.27602923 -0.047774315 ;
	setAttr ".uvtk[46]" -type "float2" 0.16986415 0.010616519 ;
	setAttr ".uvtk[49]" -type "float2" 0 0.045120165 ;
createNode polyCylProj -n "polyCylProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -11.92338283629895 1.3432799525985 6.2174445412907806 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -12.015231609344482 6.5817158818244934 5.7391457557678223 ;
	setAttr ".ps" -type "double2" 335.86756224218334 13.355410933494568 ;
	setAttr ".is" -type "double2" 0.30284926944581747 1 ;
	setAttr ".r" 3.7756423950195312;
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode polyTweak -n "polyTweak54";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[45:50]" -type "float3"  0 -0.35448861 -2.36794901
		 1.41609907 1.7310431 -2.36794901 1.41609907 1.7310431 -2.36794901 0 -0.35448861 -2.36794901
		 -2.7927618 -1.0658141e-14 -2.36794901 -2.0030450821 -1.4210855e-14 -2.36794901;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 1 "vtx[50:51]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[46]" -type "float3" -2.6081722 1.0999994 0 ;
	setAttr ".tk[47]" -type "float3" -2.6081722 1.0999994 0 ;
	setAttr ".tk[50]" -type "float3" 2.3005676 0.62433624 1.7763568e-15 ;
	setAttr ".tk[51]" -type "float3" 2.5300217 -0.62433624 1.7763568e-15 ;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[49]" "vtx[52]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[45:52]" -type "float3"  1.69081283 0 -2.220446e-15
		 0 1.87369955 0 0 1.87369955 0 1.69081283 0 -2.220446e-15 -0.13745117 1.76307225 -1.14290917
		 0 0.19407831 3.5527137e-15 0 0.19407831 3.5527137e-15 0.13745117 0.36701924 -1.14290917;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.7086606 7.0231099 2.1532748 ;
	setAttr ".rs" 395946093;
	setAttr ".lt" -type "double3" -1.9984014443252814e-15 0.75594634220276868 0.92110416676476925 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.1465420448622119 6.8869341924192433 1.9133820538514661 ;
	setAttr ".cbx" -type "double3" -7.2707788666769027 7.1592851666758044 2.393167592509565 ;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[45:48]" -type "float3"  1.37914872 1.85056138 0.75556451
		 -1.23815954 1.85056138 -0.75556451 -1.37914872 2.61779881 -0.75556451 1.2102375 2.70835638
		 0.75556451;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.1061058 6.4847031 2.8484752 ;
	setAttr ".rs" 1826064303;
	setAttr ".lt" -type "double3" -0.0050484255403373535 -0.016912183796017541 0.80606267413839605 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.2749350828823065 6.4321996458519513 2.7559823922292157 ;
	setAttr ".cbx" -type "double3" -7.9372759274518927 6.5372060803450633 2.940968036801697 ;
createNode polyCut -n "polyCut13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[14]" "f[43]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".pc" -type "double3" -7.9522250228607518 6.4564797573869326 2.575433846914001 ;
	setAttr ".ro" -type "double3" 180 0 0 ;
	setAttr ".ps" -type "double2" 1 2.1023836135864258 ;
createNode polyCut -n "polyCut12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[14]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".pc" -type "double3" -7.8277056444125508 6.5854353031382056 2.7272303592610299 ;
	setAttr ".ro" -type "double3" 78.992974668509902 39.200000000126053 180 ;
	setAttr ".ps" -type "double2" 1 2.1023836135864258 ;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[43]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[26]" -type "float3" 1.2882928 0 0 ;
	setAttr ".tk[35]" -type "float3" 0 -1.229126 1.9091724 ;
	setAttr ".tk[36]" -type "float3" 2.0727205 0 0 ;
	setAttr ".tk[37]" -type "float3" -1.822953 1.0361955 0.17007843 ;
	setAttr ".tk[38]" -type "float3" 2.0727205 0 0 ;
	setAttr ".tk[39]" -type "float3" -1.822953 1.0361955 0.17007843 ;
	setAttr ".tk[40]" -type "float3" 0 0 -1.1920929e-07 ;
	setAttr ".tk[41]" -type "float3" -0.061157227 0.4055829 1.8047128 ;
	setAttr ".tk[42]" -type "float3" 4.6629367e-15 0 0.97112054 ;
	setAttr ".tk[43]" -type "float3" 0.061157227 -0.4055829 1.8142571 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.9041042 2.1870797 3.4216964 ;
	setAttr ".rs" 216715391;
	setAttr ".lt" -type "double3" -2.1371793224034263e-15 -0.42780489821070111 0.3343664583499586 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.0869317340280027 2.0806008614753515 3.3198899261497572 ;
	setAttr ".cbx" -type "double3" -7.7212767666671516 2.2935586898374671 3.5235027318009164 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.1261797 2.0911109 3.0427771 ;
	setAttr ".rs" 832614970;
	setAttr ".lt" -type "double3" 1.3877787807814457e-16 0.058237330672081776 0.44577528055186738 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3090079782074078 1.9846320978144312 2.9409706414786356 ;
	setAttr ".cbx" -type "double3" -7.9433522666531475 2.1975899261765468 3.144583633178148 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[31:35]" -type "float3"  1.52926028 -2.3211081 -1.12657595
		 0 -0.6954391 -0.22809415 1.52926028 -2.93531728 -1.12657595 0 -1.30964816 -0.22809415
		 0 0 1.61209548;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 1 "vtx[35:38]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[35:38]" -type "float3"  -1.74391866 0.49770996 0.96058416
		 1.514817 0.93258756 -0.96382946 -1.50178838 -0.91690153 0.96058416 1.74098277 -0.56731129
		 -0.94618273;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.9306221 3.2909813 3.5295079 ;
	setAttr ".rs" 892193279;
	setAttr ".lt" -type "double3" 3.1363800445660672e-15 0.71673061223842816 0.23738896349061328 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.2705499232076729 3.1105768215651821 3.3417947940832455 ;
	setAttr ".cbx" -type "double3" -7.5906942651196481 3.471385973529955 3.7172208348828799 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[31:34]" -type "float3"  0.83654594 -0.23518273 -0.4619526
		 -0.72796452 -0.44396698 0.4619526 0.7202993 0.44396698 -0.4619526 -0.83654594 0.27612975
		 0.45348072;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[27]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.2393684 2.7947414 3.0385633 ;
	setAttr ".rs" 1423094203;
	setAttr ".lt" -type "double3" 3.3306690738754696e-16 0.4455510437148128 0.61974897211780866 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.4160981542514701 2.7009485818352763 2.9409706414786356 ;
	setAttr ".cbx" -type "double3" -8.0626382843175612 2.888534438185979 3.1361560148946683 ;
createNode polyCut -n "polyCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[24:26]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".pc" -type "double3" -8.3769048337677479 2.7042965774951053 3.1370497269073634 ;
	setAttr ".ro" -type "double3" -96.349964709988612 8.0490377734637129 10.406202651606105 ;
	setAttr ".ps" -type "double2" 1 3.701622486114502 ;
createNode polyCut -n "polyCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[24:25]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".pc" -type "double3" -8.4015537624681595 2.856586873343717 3.1439141836142346 ;
	setAttr ".ro" -type "double3" -96.098827423945934 8.1192615265166506 8.833471218980085 ;
	setAttr ".ps" -type "double2" 1 3.701622486114502 ;
createNode polyCut -n "polyCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[24]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".pc" -type "double3" -8.2283899165021861 1.9936085302015671 3.1000707271982386 ;
	setAttr ".ro" -type "double3" -98.141737334455485 7.8567352216720128 14.168844178156643 ;
	setAttr ".ps" -type "double2" 1 3.701622486114502 ;
createNode polyCut -n "polyCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".pc" -type "double3" -8.2781537827003397 2.1458988260501783 3.110643835213367 ;
	setAttr ".ro" -type "double3" -97.881421429708851 7.9384976998183951 12.649213032584411 ;
	setAttr ".ps" -type "double2" 1 3.701622486114502 ;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[13]" -type "float3" -2.1582012 -7.1054274e-15 0 ;
	setAttr ".tk[14]" -type "float3" -2.1582012 -7.1054274e-15 0 ;
	setAttr ".tk[16]" -type "float3" -4.1021113 3.5527137e-14 0 ;
	setAttr ".tk[17]" -type "float3" -4.1021113 3.5527137e-14 0 ;
	setAttr ".tk[18]" -type "float3" -5.4473443 7.1054274e-15 0 ;
	setAttr ".tk[19]" -type "float3" -1.3534577 3.5396731 0 ;
	setAttr ".tk[20]" -type "float3" -1.3534577 3.5396731 0 ;
	setAttr ".tk[21]" -type "float3" -1.7280468 8.2468853 0 ;
	setAttr ".tk[22]" -type "float3" -5.8606405 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.5852962 10.46356 2.940968 ;
	setAttr ".rs" 883158467;
	setAttr ".lt" -type "double3" 1.2212453270876722e-15 6.5714709905948115e-16 0.93235447612292643 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.1101170797493864 10.188483143636246 2.3238475111688075 ;
	setAttr ".cbx" -type "double3" -7.0604754366757509 10.738636308885336 3.5580887484829393 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.0779095 9.3565407 2.940969 ;
	setAttr ".rs" 2122460185;
	setAttr ".lt" -type "double3" 2.0816681711721685e-15 1.5145298759699684e-16 1.3297573018930866 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3734097318065999 9.2176314895711169 2.5997613113807887 ;
	setAttr ".cbx" -type "double3" -7.7824092786115839 9.4954500528186898 3.2821764366577804 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.48382 8.4643869 2.940969 ;
	setAttr ".rs" 47691072;
	setAttr ".lt" -type "double3" 3.707437799143655e-16 4.4408920985921459e-16 1.0337224224881965 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.6440192934812927 8.3941911547543597 2.7559823922292157 ;
	setAttr ".cbx" -type "double3" -8.3236202158334507 8.5345832417496723 3.1259557279060588 ;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[7]" -type "float3" -1.0714052 3.5527137e-15 0 ;
	setAttr ".tk[8]" -type "float3" -1.0714052 3.5527137e-15 0 ;
	setAttr ".tk[9]" -type "float3" -1.0714052 3.5527137e-15 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.71963978 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.8884597 6.4321995 2.940969 ;
	setAttr ".rs" 723487941;
	setAttr ".lt" -type "double3" -0.59536048700709188 -4.2135560441294471e-16 2.1023830569753921 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.0486593552843253 6.4321996458519513 2.755982206180863 ;
	setAttr ".cbx" -type "double3" -7.7282602776364833 6.4321996458519513 3.1259557279060588 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[3:5]" -type "float3"  -1.14076757 4.21907949 0 -1.14076757
		 4.21907949 0 -1.14076757 4.21907949 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 0.19508583754730424 0 0 0 0 0.19508583754730424 0 0
		 0 0 0.19508583754730424 0 -7.8338047639657855 1.3057251002771473 2.9409700833335775 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -8.1411648 2.7449946 2.9409702 ;
	setAttr ".rs" 1952257253;
	setAttr ".lt" -type "double3" 0.25270486647257151 -6.9454504787372258e-17 3.687204718120388 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -8.3013640886099456 2.7449945991102629 2.7559875318149611 ;
	setAttr ".cbx" -type "double3" -7.9809648946818834 2.7449945991102629 3.12595261159615 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[3]" -type "float3" -1.7203453 8.8817842e-16 0.22324374 ;
	setAttr ".tk[4]" -type "float3" -1.7203453 8.8817842e-16 -0.22324374 ;
	setAttr ".tk[5]" -type "float3" -2.1070147 8.8817842e-16 -1.1358823e-08 ;
	setAttr ".tk[7]" -type "float3" -1.8492351 8.8817842e-16 -1.1358823e-08 ;
createNode polyCylinder -n "polyCylinder2";
	setAttr ".r" 1.352679317293406;
	setAttr ".h" 14.755243301909784;
	setAttr ".sa" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:40]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 31 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.12739815 -0.063699052 ;
	setAttr ".uvtk[5]" -type "float2" -0.015861154 0 ;
	setAttr ".uvtk[6]" -type "float2" -0.010647476 0 ;
	setAttr ".uvtk[7]" -type "float2" -0.0054446161 0 ;
	setAttr ".uvtk[8]" -type "float2" 0.0066864491 0 ;
	setAttr ".uvtk[11]" -type "float2" 0.0040612817 0 ;
	setAttr ".uvtk[12]" -type "float2" -0.026002675 0 ;
	setAttr ".uvtk[14]" -type "float2" 0.026002645 0 ;
	setAttr ".uvtk[15]" -type "float2" -0.0036872029 0 ;
	setAttr ".uvtk[16]" -type "float2" -0.019964665 0 ;
	setAttr ".uvtk[17]" -type "float2" 0.024981797 0 ;
	setAttr ".uvtk[28]" -type "float2" 0.039811857 0 ;
	setAttr ".uvtk[30]" -type "float2" 0.039811887 0 ;
	setAttr ".uvtk[31]" -type "float2" 0.039811917 0 ;
	setAttr ".uvtk[32]" -type "float2" 0.039811946 0 ;
	setAttr ".uvtk[33]" -type "float2" 0.039811946 0 ;
	setAttr ".uvtk[34]" -type "float2" 0.039811946 0 ;
	setAttr ".uvtk[35]" -type "float2" 0.039811917 0 ;
	setAttr ".uvtk[36]" -type "float2" 0.039811887 0 ;
	setAttr ".uvtk[37]" -type "float2" 0.039811917 0 ;
	setAttr ".uvtk[39]" -type "float2" -0.095548548 0 ;
	setAttr ".uvtk[40]" -type "float2" -0.17782654 0 ;
	setAttr ".uvtk[42]" -type "float2" 0.12739815 -0.063699052 ;
	setAttr ".uvtk[43]" -type "float2" 0.12739806 -0.063699052 ;
	setAttr ".uvtk[52]" -type "float2" -0.084932081 -0.076969676 ;
	setAttr ".uvtk[53]" -type "float2" -0.084932081 -0.076969676 ;
	setAttr ".uvtk[54]" -type "float2" -0.084932081 -0.076969676 ;
	setAttr ".uvtk[55]" -type "float2" -0.084932081 -0.076969676 ;
	setAttr ".uvtk[68]" -type "float2" 0.039811917 0 ;
	setAttr ".uvtk[69]" -type "float2" 0.039811917 0 ;
createNode polyCylProj -n "polyCylProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:40]";
	setAttr ".ix" -type "matrix" -0.29337423893238362 0 0.15819130289679223 0 0 0.33330606412326197 0 0
		 -0.15819130289679223 0 -0.29337423893238362 0 -10.603789422579212 0.23825542700922675 4.3337129700102066 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -10.705248832702637 8.1897977605437333 4.6102492809295654 ;
	setAttr ".ro" -type "double3" 0 2647.0867915762324 0 ;
	setAttr ".ps" -type "double2" 171.08689700709874 16.518167331814766 ;
	setAttr ".is" -type "double2" 0.090519097703427476 1 ;
	setAttr ".r" 2.7914061546325684;
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode polyTweak -n "polyTweak51";
	setAttr ".uopa" yes;
	setAttr -s 38 ".tk";
	setAttr ".tk[3]" -type "float3" -4.0289512 0.010464167 4.4408921e-16 ;
	setAttr ".tk[4]" -type "float3" -4.0289512 0.010464167 4.4408921e-16 ;
	setAttr ".tk[5]" -type "float3" -4.3759518 0.18806335 3.3309414e-16 ;
	setAttr ".tk[7]" -type "float3" -5.6158447 -0.55016226 4.4408921e-16 ;
	setAttr ".tk[8]" -type "float3" -5.805706 -0.57264638 4.4408921e-16 ;
	setAttr ".tk[9]" -type "float3" -5.8008008 0.35684618 3.3306691e-16 ;
	setAttr ".tk[10]" -type "float3" -6.2898808 5.0742974 -0.071447432 ;
	setAttr ".tk[11]" -type "float3" -6.3324928 5.0013523 -0.071447432 ;
	setAttr ".tk[12]" -type "float3" -5.506299 0.14234844 4.4408921e-16 ;
	setAttr ".tk[13]" -type "float3" -5.5414743 5.8000345 3.3306691e-16 ;
	setAttr ".tk[14]" -type "float3" -5.542181 5.8060594 4.4408921e-16 ;
	setAttr ".tk[15]" -type "float3" -7.0268984 0.6080755 4.4408921e-16 ;
	setAttr ".tk[16]" -type "float3" -6.8521919 0.62631357 -0.56048477 ;
	setAttr ".tk[17]" -type "float3" -2.0654926 5.2899961 -0.48137918 ;
	setAttr ".tk[18]" -type "float3" -1.7452689 5.5334702 -0.48137918 ;
	setAttr ".tk[19]" -type "float3" -2.026428 5.288012 -0.48137918 ;
	setAttr ".tk[20]" -type "float3" -1.7005495 5.533093 -0.48137918 ;
	setAttr ".tk[21]" -type "float3" -2.1451073 6.1166077 -0.48137918 ;
	setAttr ".tk[22]" -type "float3" -2.434531 5.3108401 -0.48137918 ;
	setAttr ".tk[23]" -type "float3" -2.2903621 6.1143713 -0.48137918 ;
	setAttr ".tk[24]" -type "float3" -2.5859859 5.2525787 -0.48137918 ;
	setAttr ".tk[25]" -type "float3" -1.7277488 5.9968967 -0.48137918 ;
	setAttr ".tk[26]" -type "float3" -2.0509634 5.7600541 -0.48137918 ;
	setAttr ".tk[32]" -type "float3" 9.5367432e-07 2.9802322e-08 0 ;
	setAttr ".tk[34]" -type "float3" -0.50185835 0.19175959 3.3309414e-16 ;
	setAttr ".tk[35]" -type "float3" -0.5050925 -0.059415206 4.4408921e-16 ;
	setAttr ".tk[36]" -type "float3" -0.40148124 0.18994053 3.3309414e-16 ;
	setAttr ".tk[37]" -type "float3" -0.3958039 -0.06158103 4.4408921e-16 ;
	setAttr ".tk[38]" -type "float3" -0.76868039 -0.091285542 0 ;
	setAttr ".tk[39]" -type "float3" -0.60248613 0.47262719 4.4408921e-16 ;
	setAttr ".tk[40]" -type "float3" -0.85482407 -0.068881311 0 ;
	setAttr ".tk[41]" -type "float3" -0.6815781 0.49283844 4.4408921e-16 ;
	setAttr ".tk[42]" -type "float3" -0.66459662 0.44343612 0 ;
	setAttr ".tk[43]" -type "float3" -0.89455688 0.44985721 0 ;
	setAttr ".tk[44]" -type "float3" -0.95252866 0.44487777 0 ;
	setAttr ".tk[45]" -type "float3" 0.018833969 0.18232207 3.3309414e-16 ;
	setAttr ".tk[46]" -type "float3" -0.086781584 -0.067710176 4.4408921e-16 ;
	setAttr ".tk[47]" -type "float3" -0.12954193 -0.067748964 4.4408921e-16 ;
createNode polyCut -n "polyCut14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:40]";
	setAttr ".ix" -type "matrix" 0.33330606412326197 0 0 0 0 0.33330606412326197 0 0
		 0 0 0.33330606412326197 0 -5.7941862560920292 0 -0.4884784865843308 1;
	setAttr ".pc" -type "double3" -5.4451932626292958 4.6043781688581076 0.73471540543697555 ;
	setAttr ".ro" -type "double3" -96.467323122515097 -0.99411470263339685 -33.561930075039797 ;
	setAttr ".ps" -type "double2" 2.3598315715789795 15.515405416488647 ;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode polyCylProj -n "polyCylProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -9.9893802035586763 6.2560098414480478 5.5664745191589766 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -10.123396873474119 6.9740753272077747 6.0911934375762939 ;
	setAttr ".ic" -type "double2" 0.5 0.51917465977447552 ;
	setAttr ".ro" -type "double3" 0 93.88938208209656 0 ;
	setAttr ".ps" -type "double2" 360 13.578824996948242 ;
	setAttr ".is" -type "double2" 0.3462354095940739 1 ;
	setAttr ".r" 2.3701872825622559;
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode polyTweak -n "polyTweak49";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk[33:35]" -type "float3"  -0.026809392 -0.27635321 -0.0010219682
		 0 0 0 0.026809392 -0.63968295 0.0010219682;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[34]" "vtx[36]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[33:36]" -type "float3"  0.017003672 -0.11521977 0.16907388
		 -0.0099109747 0.71326494 -0.16782892 -0.021303084 0.14435291 0.16761361 0.021636726
		 0.49949217 -0.16908719;
createNode polyExtrudeFace -n "polyExtrudeFace26";
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.47470796 4.7205443 1.5687163 ;
	setAttr ".rs" 1057494792;
	setAttr ".lt" -type "double3" 2.9038242222323264e-16 -5.1390468291763664e-17 0.75045158530263378 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.45294448060492781 4.5730717425405771 1.3959884315455238 ;
	setAttr ".cbx" -type "double3" 0.49647145790557173 4.8680169825613291 1.7414440780604163 ;
createNode polyCut -n "polyCut20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".pc" -type "double3" 0.34111796860432936 4.6094287067835698 1.6771304481556517 ;
	setAttr ".ro" -type "double3" -96.661563721247774 -43.199999999999029 0 ;
	setAttr ".ps" -type "double2" 1 4.8680171966552734 ;
createNode polyCut -n "polyCut19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 0;
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".pc" -type "double3" 0.26776379278126883 4.733686614606289 1.8069569474865657 ;
	setAttr ".ro" -type "double3" -96.152181936166201 -43.200000000125911 0 ;
	setAttr ".ps" -type "double2" 1.0970853567123413 7.434023380279541 ;
createNode polyCut -n "polyCut18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 0;
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".pc" -type "double3" 0.24114761197827525 4.733686614606289 1.7819626900464711 ;
	setAttr ".ro" -type "double3" -115.735451532761 -41.813124342088685 29.669250349554599 ;
	setAttr ".ps" -type "double2" 1.0970853567123413 7.434023380279541 ;
createNode polyCut -n "polyCut17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".pc" -type "double3" 0.24440101182877264 4.8606320804164334 1.805166976691245 ;
	setAttr ".ro" -type "double3" -108.61247611256071 -43.190735689523677 19.296426359221645 ;
	setAttr ".ps" -type "double2" 1.0970853567123413 7.434023380279541 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr ".tk[27]" -type "float3"  0 -0.18010654 0;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 1 "vtx[28:31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[24]" -type "float3" 0 0.52793008 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.21295822 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.31497198 0 ;
	setAttr ".tk[28]" -type "float3" -0.50279486 0.14949062 0.27644265 ;
	setAttr ".tk[29]" -type "float3" 0.42291337 0.3572562 -0.27688777 ;
	setAttr ".tk[30]" -type "float3" -0.42394626 -0.35099295 0.27637753 ;
	setAttr ".tk[31]" -type "float3" 0.50297564 -0.1852577 -0.27383527 ;
createNode polyExtrudeFace -n "polyExtrudeFace25";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.77077353 7.5091195 2.2947781 ;
	setAttr ".rs" 1125457823;
	setAttr ".lt" -type "double3" -4.9960036108132044e-16 -0.69652380943909986 1.0661338854648812 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.26788821143607411 7.1549946909010202 2.0181129246676246 ;
	setAttr ".cbx" -type "double3" 1.2736588053176812 7.8632439618170045 2.5714432865107337 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[24:27]" -type "float3"  0.35543045 -0.10344353 -0.19554205
		 -0.29884386 -0.25028902 0.19554204 0.29970163 0.25028905 -0.19549607 -0.35543045
		 0.13315055 0.19338463;
createNode polyExtrudeFace -n "polyExtrudeFace24";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.34975094 6.5112114 1.6501698 ;
	setAttr ".rs" 771340202;
	setAttr ".lt" -type "double3" 2.7755575615628914e-16 0.9355080393501839 0.84464497784397963 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.20229607147673881 6.4073755984365732 1.5690468221628944 ;
	setAttr ".cbx" -type "double3" 0.4972057871292046 6.6150467639028818 1.7312928110087196 ;
createNode polyCut -n "polyCut16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".pc" -type "double3" 0.35231249217891225 6.4349376206575215 1.6466835222908121 ;
	setAttr ".ro" -type "double3" -95.159328856744565 -3.4613140709525432 15.97531542251434 ;
	setAttr ".ps" -type "double2" 1.4419927597045898 7.434023380279541 ;
createNode polyCut -n "polyCut15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".pc" -type "double3" 0.33306170138352981 6.5892484441818437 1.6454723651934713 ;
	setAttr ".ro" -type "double3" -94.461978483491137 -3.5076914315167818 13.01943488920848 ;
	setAttr ".ps" -type "double2" 1.4419927597045898 7.434023380279541 ;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[3]" -type "float3" 0.03705515 1.1272794 0.042787623 ;
	setAttr ".tk[4]" -type "float3" 0.037055172 1.1272794 -0.042787623 ;
	setAttr ".tk[5]" -type "float3" -0.037055172 1.1272794 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.5082289 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.5082289 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.5082289 0 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.29686511 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.29188389 ;
	setAttr ".tk[13]" -type "float3" 0.48240101 -1.7421811 -0.19647187 ;
	setAttr ".tk[14]" -type "float3" 0.48240101 -1.7421811 0.14352612 ;
	setAttr ".tk[16]" -type "float3" 0.14590213 0.48424289 -0.06995099 ;
	setAttr ".tk[17]" -type "float3" 0.14590213 0.48424289 0.042614166 ;
	setAttr ".tk[18]" -type "float3" 0.13772491 0.45031884 -0.004351411 ;
createNode polyExtrudeFace -n "polyExtrudeFace23";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.1105294 12.666193 1.5691738 ;
	setAttr ".rs" 1123776674;
	setAttr ".lt" -type "double3" 0.45521920178577896 -5.4264149326310046e-16 0.52105536557667009 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.20241189675827709 12.312494540697315 1.3995610743487159 ;
	setAttr ".cbx" -type "double3" -0.018646902613837391 13.019891047960501 1.738786485763816 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[10:16]" -type "float3"  0.010523643 -0.80618709 0
		 0.010523643 -0.80618709 0 0.48804712 0 0 -0.096423216 0.31434116 0.19486874 -0.096423216
		 0.31434116 -0.19486874 -0.27224424 0.42124069 -1.1472267e-06 -0.54395866 1.021737695
		 -3.2504747e-06;
createNode polyExtrudeFace -n "polyExtrudeFace22";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.20966154 10.71682 1.5691738 ;
	setAttr ".rs" 247978177;
	setAttr ".lt" -type "double3" 0 -1.5957596047355365e-16 1.2813337638740148 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.10598868804474559 10.716819549089648 1.2046943574869913 ;
	setAttr ".cbx" -type "double3" 0.5253117613265923 10.716819549089648 1.9336533218348304 ;
createNode polyExtrudeFace -n "polyExtrudeFace21";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.20966153 8.0847874 1.5691738 ;
	setAttr ".rs" 1237593530;
	setAttr ".lt" -type "double3" -6.9388939039072284e-18 -8.1705159995642317e-17 2.6320326718893785 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.10598868804474559 8.0847871546804697 1.2046903043711463 ;
	setAttr ".cbx" -type "double3" 0.5253117464254311 8.0847871546804697 1.9336573749506751 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[7:10]" -type "float3"  -0.14319639 0 -0.16534996
		 -0.14319645 0 0.16534996 -0.04773213 0 3.4645191e-07 0.14319645 0 9.4036761e-07;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.67662971539000782 6.2560098414480478 1.5682038932764808 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.20966154 6.3067441 1.5691727 ;
	setAttr ".rs" 513114340;
	setAttr ".lt" -type "double3" 0 1.7276027510223896e-16 1.7780431105748675 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.037207775540154309 6.3067438845693857 1.3700403094017783 ;
	setAttr ".cbx" -type "double3" 0.38211529774169239 6.3067438845693857 1.7683051645481864 ;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.60968769 0 0 0.60968769
		 0 0 0.60968769 0 0 -0.52445275 -6.20527601 0.00096885441 -0.52445275 -6.20527601
		 0.00096885441 -0.52445275 -6.20527601 0.00096885441 0.60968769 0 0 -0.52445275 -6.20527601
		 0.00096885441;
createNode polyCylinder -n "polyCylinder3";
	setAttr ".r" 0.22993831142833265;
	setAttr ".h" 12.512019682896096;
	setAttr ".sa" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:34]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 30 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[3]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[4]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[5]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[6]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[7]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[8]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[9]" -type "float2" 0.25748825 0 ;
	setAttr ".uvtk[10]" -type "float2" 0.21607563 0 ;
	setAttr ".uvtk[11]" -type "float2" 0.25748831 0 ;
	setAttr ".uvtk[12]" -type "float2" 0.26031861 0 ;
	setAttr ".uvtk[13]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[14]" -type "float2" 0.25748831 0 ;
	setAttr ".uvtk[15]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[18]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[20]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[21]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[22]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[23]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[24]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[25]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[26]" -type "float2" 0.071220152 0 ;
	setAttr ".uvtk[27]" -type "float2" 0.071220182 0 ;
	setAttr ".uvtk[28]" -type "float2" 0.071220182 0 ;
	setAttr ".uvtk[29]" -type "float2" 0.071220152 0 ;
	setAttr ".uvtk[30]" -type "float2" 0.071220152 0 ;
	setAttr ".uvtk[31]" -type "float2" 0.25748828 0 ;
	setAttr ".uvtk[35]" -type "float2" -0.04072839 0 ;
	setAttr ".uvtk[36]" -type "float2" 0.0035145581 0 ;
	setAttr ".uvtk[46]" -type "float2" 0.041412562 0 ;
createNode polyCylProj -n "polyCylProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:34]";
	setAttr ".ix" -type "matrix" -0.073543516136954645 0 0.99729200900950432 0 0 1 0 0
		 -0.99729200900950432 0 -0.073543516136954645 0 -10.285504833114304 5.2499271786076553 7.3365301364317954 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -10.275882244110107 7.0142460472769805 7.5185744762420654 ;
	setAttr ".ic" -type "double2" 0.30273970807950523 0.5116314800436963 ;
	setAttr ".ro" -type "double3" 0 101.19594511179818 0 ;
	setAttr ".ps" -type "double2" 360 13.903406798825175 ;
	setAttr ".is" -type "double2" 0.25621842246284887 1 ;
	setAttr ".r" 2.2600140571594238;
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[9]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
createNode polyTweak -n "polyTweak52";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[28]" -type "float3" 0.004237175 0.12929106 0.0014562607 ;
	setAttr ".tk[30]" -type "float3" -0.004237175 -0.12929106 -0.0014563799 ;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode polyTweak -n "polyTweak48";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[10]" -type "float3" 0.71683377 0 0 ;
	setAttr ".tk[11]" -type "float3" 0 0 -0.29791909 ;
	setAttr ".tk[12]" -type "float3" -0.03557872 0 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.14441888 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.14441888 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.29846668 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.33856678 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.29846668 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.33856678 0 ;
	setAttr ".tk[42]" -type "float3" 0.16940485 -0.27476838 0 ;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 1 "vtx[42:45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[42:45]" -type "float3"  -0.34886062 0.13649487 0.20245957
		 0.35394728 0.091877937 -0.20364773 -0.35212028 -0.10928321 0.20245957 0.34703362
		 -0.11908937 -0.20127153;
createNode polyExtrudeFace -n "polyExtrudeFace34";
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.1682935 2.8882186 0.88734144 ;
	setAttr ".rs" 159464955;
	setAttr ".lt" -type "double3" 5.5511151231257827e-16 -0.48159760811769026 0.32284324922770219 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8152595866547774 2.7604264175755509 0.68428779319933142 ;
	setAttr ".cbx" -type "double3" 4.5213271338568877 3.0160106575352676 1.0903950996797391 ;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk";
	setAttr ".tk[21]" -type "float3" 0.17149757 -0.062657706 -0.099559084 ;
	setAttr ".tk[22]" -type "float3" -0.17309569 -0.04078161 0.099559084 ;
	setAttr ".tk[23]" -type "float3" 0.1730957 0.057849586 -0.099559084 ;
	setAttr ".tk[24]" -type "float3" -0.16970587 0.062657706 0.098394029 ;
	setAttr ".tk[26]" -type "float3" -0.06617716 -0.0517115 -0.037811354 ;
	setAttr ".tk[27]" -type "float3" 0.06617716 0.0517115 0.037811354 ;
	setAttr ".tk[28]" -type "float3" -0.065567032 -0.005709535 -0.037811354 ;
	setAttr ".tk[29]" -type "float3" 0.048723314 0.77101403 -0.10590079 ;
	setAttr ".tk[30]" -type "float3" 0.18444563 -0.08521983 0.10590079 ;
	setAttr ".tk[31]" -type "float3" 0.053073157 0.90374845 -0.1044057 ;
	setAttr ".tk[32]" -type "float3" 0.18454035 -0.078058749 0.10590079 ;
	setAttr ".tk[37]" -type "float3" 0 0.20343937 0 ;
	setAttr ".tk[39]" -type "float3" 0 0.20343937 0 ;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 1 "vtx[41:44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[37:44]" -type "float3"  0.18194079 0 0 0 -0.25016648
		 0 0.18194079 0 0 0 -0.25016648 0 -0.029108424 0.085475944 -0.3372896 0.032736402
		 0.061143413 0.33830202 -0.032376152 -0.050199941 -0.33811218 0.027830243 -0.08855959
		 0.33661586;
createNode polyExtrudeFace -n "polyExtrudeFace33";
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.2411251 5.5278544 0.25405717 ;
	setAttr ".rs" 1916640554;
	setAttr ".lt" -type "double3" -3.3306690738754696e-16 -0.63376680019699616 0.48503618122035586 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.2085688073264311 5.4408365642888077 -0.084149949987619266 ;
	setAttr ".cbx" -type "double3" 3.273681398116226 5.6148722922665604 0.59226430133989538 ;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[37:40]" -type "float3"  0.015004268 0.42549562 0.1728407
		 -0.016678456 0.43796104 -0.17326212 0.016678456 0.49500188 0.17326213 -0.014165041
		 0.51465338 -0.1723983;
createNode polyExtrudeFace -n "polyExtrudeFace32";
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.7260246 5.0442815 0.20960228 ;
	setAttr ".rs" 1465127651;
	setAttr ".lt" -type "double3" -7.2858385991025908e-16 6.4531713306337224e-16 0.48711993783087809 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.7101467806922144 5.0018426334721573 0.044657251993925229 ;
	setAttr ".cbx" -type "double3" 3.7419024664984897 5.08672060130663 0.37454730943849768 ;
createNode polyCut -n "polyCut26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[30]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".pc" -type "double3" 3.633478526620074 5.0279658812721859 0.34177408260476438 ;
	setAttr ".ro" -type "double3" -89.135863924616686 -25.337137418272562 -13.880671667707931 ;
	setAttr ".ps" -type "double2" 1 8.5197029113769531 ;
createNode polyCut -n "polyCut25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".pc" -type "double3" 3.6652181648787638 5.0885701921351423 0.35965609292549006 ;
	setAttr ".ro" -type "double3" -87.948977776189125 -25.121281308313911 -15.529904017250422 ;
	setAttr ".ps" -type "double2" 1 8.5197029113769531 ;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[17:24]" -type "float3"  0 -1.60417473 -0.086815208
		 0 -1.60417473 -0.086815208 0 -1.60417473 -0.086815208 0 -1.60417473 -0.086815208
		 0 -1.44206488 0 0 -1.44206488 0 0 -1.44206488 0 0 -1.44206488 0;
createNode polyExtrudeFace -n "polyExtrudeFace31";
	setAttr ".ics" -type "componentList" 1 "f[25]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.8694105 4.6485505 0.13940404 ;
	setAttr ".rs" 1953194812;
	setAttr ".lt" -type "double3" -6.6613381477509392e-16 1.1301723445988898e-15 0.84500026494312108 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.6936801631079863 4.5112329876286514 0.038997612158567563 ;
	setAttr ".cbx" -type "double3" 4.0451408583747099 4.7858678257328995 0.23981047348192419 ;
createNode polyCut -n "polyCut24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[2]" "f[24]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".pc" -type "double3" 4.1563880644507414 4.6621061424193391 0.066495216365431792 ;
	setAttr ".ro" -type "double3" 112.29241363766413 58.270972093157837 -143.37584257467316 ;
	setAttr ".ps" -type "double2" 1 8.5197029113769531 ;
createNode polyCut -n "polyCut23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[2]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".pc" -type "double3" 4.1911217738382707 4.7999032783878057 0.1017096386296914 ;
	setAttr ".ro" -type "double3" 112.91119247262183 58.270972093164744 -143.37584257469339 ;
	setAttr ".ps" -type "double2" 1 8.5197029113769531 ;
createNode polyExtrudeFace -n "polyExtrudeFace30";
	setAttr ".ics" -type "componentList" 1 "f[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.8556476 4.00527 0.34330505 ;
	setAttr ".rs" 12160425;
	setAttr ".lt" -type "double3" 6.6613381477509392e-16 0.32916919394520827 0.62530298619034141 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.6757098395453638 3.9401356136662486 0.239810458580763 ;
	setAttr ".cbx" -type "double3" 4.0355855185614775 4.0704046642643936 0.4467996724050351 ;
createNode polyCut -n "polyCut22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".pc" -type "double3" 3.8741823669099817 3.9800898785341152 0.41691527976396697 ;
	setAttr ".ro" -type "double3" -109.50575629427657 -10.000129304750162 11.47081179274462 ;
	setAttr ".ps" -type "double2" 1 8.5197029113769531 ;
createNode polyCut -n "polyCut21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".pc" -type "double3" 3.8731413342271184 4.0992013090916073 0.42307023262414545 ;
	setAttr ".ro" -type "double3" -109.40255664913096 -10.038217448957846 14.239082060004367 ;
	setAttr ".ps" -type "double2" 1 8.5197029113769531 ;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk[7:16]" -type "float3"  1.044949889 0 0 0.42463377
		 0 0 0.037444428 -0.40032038 0.28970048 0.80321634 0 0 0.18290021 0 0 0.15815365 -0.45949084
		 0.28970048 0.21786709 1.250193 0.48289204 0.21786709 1.250193 -0.48289251 -0.060929392
		 1.2501924 -8.7754222e-09 -0.61852211 1.250193 3.9637618e-07;
createNode polyExtrudeFace -n "polyExtrudeFace29";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.9598525 10.595057 0.23980993 ;
	setAttr ".rs" 1415631145;
	setAttr ".lt" -type "double3" 1.4451737332873973e-16 -2.699587422675469e-17 1.7568427816217398 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.4426392275916289 10.59505619166918 -0.35741793437787805 ;
	setAttr ".cbx" -type "double3" 4.477065678320999 10.595059052692129 0.83703780845812048 ;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[10:13]" -type "float3"  -0.16030407 -4.2446476e-07
		 -0.18510365 -0.16030407 -4.2446476e-07 0.18510365 -0.053434726 4.2446476e-07 -6.6927868e-08
		 0.16030407 -4.2446476e-07 -2.2755474e-07;
createNode polyExtrudeFace -n "polyExtrudeFace28";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.9598513 9.6989679 0.23981045 ;
	setAttr ".rs" 917209058;
	setAttr ".lt" -type "double3" -1.4794946612771941e-15 -3.9291934712933932e-17 0.89608971491031708 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.602944846831436 9.6989666378361719 -0.17230995817968164 ;
	setAttr ".cbx" -type "double3" 4.31675791331398 9.6989685451848047 0.65193087534120764 ;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[7:10]" -type "float3"  -0.22209799 -6.4695155e-07
		 -0.25645679 -0.22209799 -6.4695155e-07 0.25645679 -0.074032627 6.4695155e-07 2.454976e-08
		 0.22209799 -6.4695155e-07 2.454976e-08;
createNode polyExtrudeFace -n "polyExtrudeFace27";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 3.6911169249640654 5.2499271786076553 0.23981047348192419 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.9598515 8.5197029 0.23981045 ;
	setAttr ".rs" 1260952205;
	setAttr ".lt" -type "double3" 0 -5.2725598680917335e-16 1.1792648966390604 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.8250428099261473 8.5197028076512353 0.084146834174902096 ;
	setAttr ".cbx" -type "double3" 4.0946601588355254 8.5197028076512353 0.3954740829866239 ;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[3]" -type "float3" 0.2792016 -1.9801514 0.095961273 ;
	setAttr ".tk[4]" -type "float3" 0.2792016 -1.9801514 -0.095961273 ;
	setAttr ".tk[5]" -type "float3" 0.11299185 -1.9801514 -5.6828009e-09 ;
	setAttr ".tk[7]" -type "float3" 0.22379833 -1.9801514 -5.6828009e-09 ;
createNode polyCylinder -n "polyCylinder4";
	setAttr ".r" 0.29055140548320396;
	setAttr ".h" 10.499854357215312;
	setAttr ".sa" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:37]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[5]" -type "float2" 0.045120183 0.031849556 ;
	setAttr ".uvtk[7]" -type "float2" 0 -0.084932074 ;
	setAttr ".uvtk[54]" -type "float2" -0.076969668 -0.10351095 ;
	setAttr ".uvtk[55]" -type "float2" -0.13005224 -0.20171365 ;
	setAttr ".uvtk[56]" -type "float2" -0.18313475 0 ;
createNode polyCylProj -n "polyCylProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:37]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.802617879402993 2.5250610621847591 8.6249391314291231 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -11.72854471206665 7.9781118449374784 8.8017885684967041 ;
	setAttr ".ro" -type "double3" 0 458.418985471192 0 ;
	setAttr ".ps" -type "double2" 309.33875202635136 16.095544634188293 ;
	setAttr ".is" -type "double2" 0.19314534737891764 1 ;
	setAttr ".r" 2.7743253707885742;
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 1 "vtx[39:40]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
createNode polyTweak -n "polyTweak53";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[39:40]" -type "float3"  0.0055605173 0.042795539 0.01956594
		 -0.0055606365 -0.042795539 -0.01956594;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[3:5]";
createNode polyTweak -n "polyTweak47";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[39:42]" -type "float3"  -0.23139741 0.37368971 -0.16993579
		 -0.0021962435 -0.26270396 0.12362898 0.00032430352 -0.24989301 0.16331057 -0.21461181
		 0.49402806 -0.074365042;
createNode polyExtrudeFace -n "polyExtrudeFace42";
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.7696214 4.5930119 -0.78362542 ;
	setAttr ".rs" 1646113691;
	setAttr ".lt" -type "double3" -5.0824723350152087e-16 -3.5091833850916816e-17 0.70031779092929713 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.7647814657283769 4.5520543368734803 -0.99985823235138227 ;
	setAttr ".cbx" -type "double3" 6.7744617368770585 4.6339692386068787 -0.56739255985840131 ;
createNode polyCut -n "polyCut32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".pc" -type "double3" 6.8040053643621157 4.6165937618607291 -0.9648819743548871 ;
	setAttr ".ro" -type "double3" -88.739497464092324 -26.500010688249453 -29.89252846062562 ;
	setAttr ".ps" -type "double2" 1 4.4444408416748047 ;
createNode polyTweak -n "polyTweak46";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[33:36]" -type "float3"  -0.092127621 0 0 0.14963296
		 -0.68372089 -0.0018337891 -0.20384675 0 0 0.034060404 -0.69152951 -0.0026068976;
createNode polyExtrudeFace -n "polyExtrudeFace41";
	setAttr ".ics" -type "componentList" 1 "f[31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.3215256 7.8696175 -0.6875332 ;
	setAttr ".rs" 1415217783;
	setAttr ".lt" -type "double3" -2.1649348980190553e-15 0.9308554133559398 0.86019461702867517 ;
	setAttr ".lr" -type "double3" 21.540024445407401 8.9354482589889948 10.156668418212217 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.1410231496883378 7.7357692035116639 -0.78362539610489179 ;
	setAttr ".cbx" -type "double3" 7.5020284559322334 8.0034655841268982 -0.59144100746734907 ;
createNode polyCut -n "polyCut31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".pc" -type "double3" 7.3346693856339886 7.7985808713172355 -0.76191464039247547 ;
	setAttr ".ro" -type "double3" -99.750803846578407 -1.1693786264508408 26.443915925843996 ;
	setAttr ".ps" -type "double2" 1 3.451411247253418 ;
createNode polyCut -n "polyCut30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 0;
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".pc" -type "double3" 7.3609461505527918 7.8609538900386893 -0.63364898051870122 ;
	setAttr ".ro" -type "double3" -99.591285800781179 -1.1693786263924395 26.443915925844067 ;
	setAttr ".ps" -type "double2" 1 5.5901012420654297 ;
createNode polyCut -n "polyCut29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[10]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".pc" -type "double3" 7.3615919965188716 7.958899446773632 -0.64288500813243254 ;
	setAttr ".ro" -type "double3" -98.952776166317889 -1.1693786264507042 26.443915925843655 ;
	setAttr ".ps" -type "double2" 1 5.5901012420654297 ;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[24:28]" -type "float3"  -0.00018873371 0.0066108014
		 -0.063810438 0.00018873371 0.39410371 -0.084766127 0 -0.10779178 0 0 0.25522476 0
		 0 0 0;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 1 "vtx[28:31]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[24:31]" -type "float3"  -0.011543333 -0.097677141
		 0.25980288 -0.011144566 -0.094309337 -0.25980288 0.010309714 0.087244019 0.25840598
		 0.011543333 0.097677141 -0.25835264 0.0079694986 0.067435741 -0.18266095 0.0076891184
		 0.065067768 0.1826797 -0.0073956251 -0.0625844 -0.18167879 -0.0082629919 -0.069920063
		 0.18166004;
createNode polyExtrudeFace -n "polyExtrudeFace40";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 6.7456365 9.5666504 -0.78362167 ;
	setAttr ".rs" 1582520351;
	setAttr ".lt" -type "double3" -0.52096901844052257 -3.6320772778264399e-17 0.75619700005824175 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 6.737520208556746 9.4979724200643982 -0.96629199585541059 ;
	setAttr ".cbx" -type "double3" 6.7537526990962968 9.6353282245077576 -0.60095134577377607 ;
createNode polyExtrudeFace -n "polyExtrudeFace39";
	setAttr ".ics" -type "componentList" 1 "f[22]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.2978482 9.0628052 -0.78361642 ;
	setAttr ".rs" 1780008460;
	setAttr ".lt" -type "double3" 0.43555714250736144 1.435610731312896e-16 0.60752585060001008 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.2897319700313554 8.9941272052206482 -0.96628675064667036 ;
	setAttr ".cbx" -type "double3" 7.3059644605709053 9.1314830096640076 -0.60094610056503583 ;
createNode polyCut -n "polyCut28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[9]" "f[21]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".pc" -type "double3" 7.062659074794718 9.1385584958725303 -0.53109492675810721 ;
	setAttr ".ro" -type "double3" -89.567919989921307 -38.805181805961602 -32.81704750603059 ;
	setAttr ".ps" -type "double2" 1 5.5901012420654297 ;
createNode polyCut -n "polyCut27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".pc" -type "double3" 7.1600759045740068 9.2123542579259734 -0.49553752624864233 ;
	setAttr ".ro" -type "double3" -88.648102220539741 -38.805181805969177 -32.81704750603059 ;
	setAttr ".ps" -type "double2" 1 5.5901012420654297 ;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk[13:19]" -type "float3"  -0.32899684 0 0 -0.32899684
		 0 0 -0.21595341 -0.65732646 0 -0.21841827 -0.22749548 0 -0.21841827 -0.22749548 0
		 -0.06952545 0.55293536 4.7683716e-07 0.64962691 1.69400525 4.7683716e-07;
createNode polyExtrudeFace -n "polyExtrudeFace38";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.5760965 13.054509 -0.78362292 ;
	setAttr ".rs" 1681378785;
	setAttr ".lt" -type "double3" -1.4071762587904362e-15 -3.3669263191826899e-16 0.89600979682441573 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.1895887460304246 13.054508617726752 -1.2299054583035307 ;
	setAttr ".cbx" -type "double3" 7.9626047517848964 13.054510525075385 -0.33734038672073652 ;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[13:16]" -type "float3"  0.18287632 3.6294793e-07 0.21115863
		 0.18287632 -3.6294793e-07 -0.21115863 0.060958914 3.6294793e-07 -1.0242023e-06 -0.18287632
		 3.6294793e-07 -3.0534632e-06;
createNode polyExtrudeFace -n "polyExtrudeFace37";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.576097 11.62216 -0.78362292 ;
	setAttr ".rs" 58076042;
	setAttr ".lt" -type "double3" 0 -1.5021521556419132e-17 1.4323490811159727 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.0067123677326189 11.622160366383978 -1.4410640319310026 ;
	setAttr ".cbx" -type "double3" 8.1454812194896675 11.622160366383978 -0.12618175348861982 ;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[10:13]" -type "float3"  -0.41868979 0 -0.48344123
		 -0.41868979 0 0.48344123 -0.13956368 0 2.3184766e-06 0.41868982 0 6.9554299e-06;
createNode polyExtrudeFace -n "polyExtrudeFace36";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.576097 10.142156 -0.78362542 ;
	setAttr ".rs" 1339992684;
	setAttr ".lt" -type "double3" 0 -1.154620509159079e-16 1.4800051505196841 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.4254020359111772 10.14215557893891 -0.95763287148102094 ;
	setAttr ".cbx" -type "double3" 7.7267916109157548 10.14215557893891 -0.60961792072876264 ;
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[3]" -type "float3" -0.23722014 -0.49806806 0.041831609 ;
	setAttr ".tk[4]" -type "float3" -0.23722014 -0.49806806 -0.041831609 ;
	setAttr ".tk[5]" -type "float3" -0.30967459 -0.49806806 0 ;
	setAttr ".tk[7]" -type "float3" 0.42340028 5.0920334 0.084056973 ;
	setAttr ".tk[8]" -type "float3" 0.42340028 5.0920334 -0.084056973 ;
	setAttr ".tk[9]" -type "float3" 0.37486985 5.0920334 0 ;
	setAttr ".tk[10]" -type "float3" 0.27780941 5.0920334 -6.2797181e-09 ;
createNode polyExtrudeFace -n "polyExtrudeFace35";
	setAttr ".ics" -type "componentList" 1 "f[6:8]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 7.1509952451778398 2.5250610621847591 -0.78362539610489179 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.225492 5.0501223 -0.78362542 ;
	setAttr ".rs" 605563756;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 7.0020016487432466 5.0501221927084412 -1.0416898747406798 ;
	setAttr ".cbx" -type "double3" 7.4489824082447038 5.0501221927084412 -0.52556094727142622 ;
createNode polyCylinder -n "polyCylinder5";
	setAttr ".r" 0.29798717159326604;
	setAttr ".h" 5.0501221243695182;
	setAttr ".sa" 3;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[41]" -type "float2" 0.36089054 0 ;
	setAttr ".uvtk[42]" -type "float2" 0.36441147 0 ;
	setAttr ".uvtk[43]" -type "float2" 0.3644115 0 ;
	setAttr ".uvtk[44]" -type "float2" 0.36441147 0 ;
	setAttr ".uvtk[45]" -type "float2" 0.36441147 0.015844006 ;
	setAttr ".uvtk[46]" -type "float2" 0.36441147 0 ;
	setAttr ".uvtk[53]" -type "float2" 1.8626451e-08 2.6077032e-08 ;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:47]";
	setAttr ".ix" -type "matrix" -0.076584860299037744 0 -0.17942475633119875 0 0 0.19508583754730424 0 0
		 0.17942475633119875 0 -0.076584860299037744 0 -14.435883141577239 1.4279836523492395 8.0910633460064272 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -14.928861618041992 6.6664194464683533 8.3951988220214844 ;
	setAttr ".ps" -type "double2" 180 13.355410695075989 ;
	setAttr ".is" -type "double2" 0.18037329604945251 1 ;
	setAttr ".r" 3.5620803833007812;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polyTweakUV -n "polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 437 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" 0.36375225 0.018994495 ;
	setAttr ".uvtk[1]" -type "float2" 0.35393518 -0.098190956 ;
	setAttr ".uvtk[2]" -type "float2" 0.36797804 -0.098808758 ;
	setAttr ".uvtk[3]" -type "float2" 0.3607595 0.018994495 ;
	setAttr ".uvtk[4]" -type "float2" 0.39067751 -0.11908986 ;
	setAttr ".uvtk[5]" -type "float2" 0.39172685 -0.12294196 ;
	setAttr ".uvtk[6]" -type "float2" 0.39456141 -0.14330207 ;
	setAttr ".uvtk[7]" -type "float2" 0.35381746 -0.10029947 ;
	setAttr ".uvtk[8]" -type "float2" 0.36814374 -0.10096558 ;
	setAttr ".uvtk[9]" -type "float2" 0.36992115 -0.12001704 ;
	setAttr ".uvtk[10]" -type "float2" 0.39379078 -0.39806473 ;
	setAttr ".uvtk[11]" -type "float2" 0.377913 -0.37722814 ;
	setAttr ".uvtk[12]" -type "float2" 0.40607738 -0.39806455 ;
	setAttr ".uvtk[13]" -type "float2" 0.40125364 -0.25941753 ;
	setAttr ".uvtk[14]" -type "float2" 0.41934258 -0.33040619 ;
	setAttr ".uvtk[15]" -type "float2" 0.37730861 -0.3230018 ;
	setAttr ".uvtk[16]" -type "float2" 0.3971315 -0.27195406 ;
	setAttr ".uvtk[17]" -type "float2" 0.39898241 -0.31491059 ;
	setAttr ".uvtk[18]" -type "float2" 0.41519088 -0.34563595 ;
	setAttr ".uvtk[19]" -type "float2" 0.39108008 -0.32624215 ;
	setAttr ".uvtk[20]" -type "float2" 0.4147222 -0.3602199 ;
	setAttr ".uvtk[21]" -type "float2" 0.42266589 -0.15844473 ;
	setAttr ".uvtk[22]" -type "float2" 0.39468479 -0.14502023 ;
	setAttr ".uvtk[23]" -type "float2" 0.40300292 -0.15774184 ;
	setAttr ".uvtk[24]" -type "float2" 0.41727215 -0.17254281 ;
	setAttr ".uvtk[25]" -type "float2" 0.40220022 -0.16333842 ;
	setAttr ".uvtk[26]" -type "float2" 0.4180032 -0.17863306 ;
	setAttr ".uvtk[27]" -type "float2" 0.40987545 -0.14223571 ;
	setAttr ".uvtk[28]" -type "float2" 0.41259903 -0.15574509 ;
	setAttr ".uvtk[29]" -type "float2" 0.37040228 -0.12421031 ;
	setAttr ".uvtk[30]" -type "float2" 0.36793602 -0.10879441 ;
	setAttr ".uvtk[31]" -type "float2" 0.35461491 -0.10258054 ;
	setAttr ".uvtk[32]" -type "float2" 0.3681196 -0.11378431 ;
	setAttr ".uvtk[33]" -type "float2" 0.38491106 -0.13686936 ;
	setAttr ".uvtk[34]" -type "float2" 0.38303077 -0.12805454 ;
	setAttr ".uvtk[35]" -type "float2" 0.38493633 -0.13912161 ;
	setAttr ".uvtk[36]" -type "float2" 0.37537575 -0.13449286 ;
	setAttr ".uvtk[37]" -type "float2" 0.39106798 -0.12553279 ;
	setAttr ".uvtk[38]" -type "float2" 0.37599218 -0.13770382 ;
	setAttr ".uvtk[39]" -type "float2" 0.39149219 -0.12848257 ;
	setAttr ".uvtk[40]" -type "float2" 0.42116749 -0.15346685 ;
	setAttr ".uvtk[41]" -type "float2" 0.35381746 -0.10029947 ;
	setAttr ".uvtk[42]" -type "float2" 0.35661745 0.018994495 ;
	setAttr ".uvtk[43]" -type "float2" 0.35243171 -0.37722784 ;
	setAttr ".uvtk[44]" -type "float2" 0.40519482 -0.39922601 ;
	setAttr ".uvtk[45]" -type "float2" 0.3929081 -0.39922625 ;
	setAttr ".uvtk[46]" -type "float2" 0.35844606 -0.38652021 ;
	setAttr ".uvtk[47]" -type "float2" 0.39203447 -0.25941753 ;
	setAttr ".uvtk[48]" -type "float2" 0.40125364 -0.25941753 ;
	setAttr ".uvtk[49]" -type "float2" 0.34180003 -0.33040619 ;
	setAttr ".uvtk[50]" -type "float2" 0.36232102 -0.32624215 ;
	setAttr ".uvtk[51]" -type "float2" 0.36087859 -0.3386668 ;
	setAttr ".uvtk[52]" -type "float2" 0.36281323 -0.35748237 ;
	setAttr ".uvtk[53]" -type "float2" 0.41616267 -0.3602199 ;
	setAttr ".uvtk[54]" -type "float2" 0.34721816 -0.14330207 ;
	setAttr ".uvtk[55]" -type "float2" 0.40095872 -0.15425734 ;
	setAttr ".uvtk[56]" -type "float2" 0.41522807 -0.16905826 ;
	setAttr ".uvtk[57]" -type "float2" 0.415959 -0.17514852 ;
	setAttr ".uvtk[58]" -type "float2" 0.42062169 -0.1549602 ;
	setAttr ".uvtk[59]" -type "float2" 0.39920944 -0.25593299 ;
	setAttr ".uvtk[60]" -type "float2" 0.38999033 -0.25593299 ;
	setAttr ".uvtk[61]" -type "float2" 0.36835814 -0.12072577 ;
	setAttr ".uvtk[62]" -type "float2" 0.36787701 -0.11653253 ;
	setAttr ".uvtk[63]" -type "float2" 0.3660996 -0.097481035 ;
	setAttr ".uvtk[64]" -type "float2" 0.37848818 -0.096814923 ;
	setAttr ".uvtk[65]" -type "float2" -0.43261492 0.0055915862 ;
	setAttr ".uvtk[66]" -type "float2" -0.43667737 0.0055915862 ;
	setAttr ".uvtk[67]" -type "float2" -0.43574026 -0.058834177 ;
	setAttr ".uvtk[68]" -type "float2" -0.43034455 -0.059121739 ;
	setAttr ".uvtk[69]" -type "float2" -0.43374637 0.0055915862 ;
	setAttr ".uvtk[70]" -type "float2" -0.42710662 -0.07757552 ;
	setAttr ".uvtk[71]" -type "float2" -0.42613739 -0.079368457 ;
	setAttr ".uvtk[72]" -type "float2" -0.42385873 -0.093877748 ;
	setAttr ".uvtk[73]" -type "float2" -0.43298981 -0.10023079 ;
	setAttr ".uvtk[74]" -type "float2" -0.43571499 -0.059815597 ;
	setAttr ".uvtk[75]" -type "float2" -0.43028077 -0.06012563 ;
	setAttr ".uvtk[76]" -type "float2" -0.42990813 -0.078007057 ;
	setAttr ".uvtk[77]" -type "float2" -0.41102636 -0.19470479 ;
	setAttr ".uvtk[78]" -type "float2" -0.42809656 -0.17888482 ;
	setAttr ".uvtk[79]" -type "float2" -0.43867162 -0.1788847 ;
	setAttr ".uvtk[80]" -type "float2" -0.41289327 -0.20171113 ;
	setAttr ".uvtk[81]" -type "float2" -0.41922104 -0.12399478 ;
	setAttr ".uvtk[82]" -type "float2" -0.41422334 -0.12399478 ;
	setAttr ".uvtk[83]" -type "float2" -0.45078555 -0.15652592 ;
	setAttr ".uvtk[84]" -type "float2" -0.4211075 -0.13831885 ;
	setAttr ".uvtk[85]" -type "float2" -0.41204873 -0.12982984 ;
	setAttr ".uvtk[86]" -type "float2" -0.40971455 -0.14982398 ;
	setAttr ".uvtk[87]" -type "float2" -0.38928279 -0.15652592 ;
	setAttr ".uvtk[88]" -type "float2" -0.4227356 -0.15509821 ;
	setAttr ".uvtk[89]" -type "float2" -0.40303934 -0.16280372 ;
	setAttr ".uvtk[90]" -type "float2" -0.46454206 -0.16280372 ;
	setAttr ".uvtk[91]" -type "float2" -0.43278891 -0.10092584 ;
	setAttr ".uvtk[92]" -type "float2" -0.42353603 -0.094677433 ;
	setAttr ".uvtk[93]" -type "float2" -0.40675461 -0.096858308 ;
	setAttr ".uvtk[94]" -type "float2" -0.4455519 -0.10748778 ;
	setAttr ".uvtk[95]" -type "float2" -0.40656146 -0.098777391 ;
	setAttr ".uvtk[96]" -type "float2" -0.48503879 -0.094677433 ;
	setAttr ".uvtk[97]" -type "float2" -0.44489703 -0.11032245 ;
	setAttr ".uvtk[98]" -type "float2" -0.46806422 -0.098777391 ;
	setAttr ".uvtk[99]" -type "float2" -0.38404921 -0.10748778 ;
	setAttr ".uvtk[100]" -type "float2" -0.39538756 -0.10791174 ;
	setAttr ".uvtk[101]" -type "float2" -0.39417288 -0.10265104 ;
	setAttr ".uvtk[102]" -type "float2" -0.38339427 -0.11032245 ;
	setAttr ".uvtk[103]" -type "float2" -0.42969596 -0.079958811 ;
	setAttr ".uvtk[104]" -type "float2" -0.43022093 -0.063769564 ;
	setAttr ".uvtk[105]" -type "float2" -0.43818453 -0.060877334 ;
	setAttr ".uvtk[106]" -type "float2" -0.43012419 -0.066092111 ;
	setAttr ".uvtk[107]" -type "float2" -0.41826516 -0.085850939 ;
	setAttr ".uvtk[108]" -type "float2" -0.41933754 -0.081748113 ;
	setAttr ".uvtk[109]" -type "float2" -0.41824347 -0.086899266 ;
	setAttr ".uvtk[110]" -type "float2" -0.4256143 -0.084744796 ;
	setAttr ".uvtk[111]" -type "float2" -0.41474566 -0.080574349 ;
	setAttr ".uvtk[112]" -type "float2" -0.4252207 -0.086239353 ;
	setAttr ".uvtk[113]" -type "float2" -0.41418168 -0.081947342 ;
	setAttr ".uvtk[114]" -type "float2" -0.36671486 0.13003555 ;
	setAttr ".uvtk[115]" -type "float2" -0.36881065 0.13003555 ;
	setAttr ".uvtk[116]" -type "float2" -0.36004969 0.067267828 ;
	setAttr ".uvtk[117]" -type "float2" -0.35947403 0.062578492 ;
	setAttr ".uvtk[118]" -type "float2" -0.35756263 0.046041291 ;
	setAttr ".uvtk[119]" -type "float2" -0.35707423 0.041533288 ;
	setAttr ".uvtk[120]" -type "float2" -0.35496384 0.020345714 ;
	setAttr ".uvtk[121]" -type "float2" -0.34717274 0.020345714 ;
	setAttr ".uvtk[122]" -type "float2" -0.38304442 0.13003555 ;
	setAttr ".uvtk[123]" -type "float2" -0.37925947 0.065385364 ;
	setAttr ".uvtk[124]" -type "float2" -0.35920879 0.020345714 ;
	setAttr ".uvtk[125]" -type "float2" -0.36330959 0.040482547 ;
	setAttr ".uvtk[126]" -type "float2" -0.36426616 0.044734247 ;
	setAttr ".uvtk[127]" -type "float2" -0.36812443 0.060957246 ;
	setAttr ".uvtk[128]" -type "float2" -0.32008439 -0.23068431 ;
	setAttr ".uvtk[129]" -type "float2" -0.36511388 -0.23068431 ;
	setAttr ".uvtk[130]" -type "float2" -0.37906855 -0.26572415 ;
	setAttr ".uvtk[131]" -type "float2" -0.37970412 -0.19346336 ;
	setAttr ".uvtk[132]" -type "float2" -0.36048007 -0.064526543 ;
	setAttr ".uvtk[133]" -type "float2" -0.35264677 -0.064526543 ;
	setAttr ".uvtk[134]" -type "float2" -0.36947259 -0.064526543 ;
	setAttr ".uvtk[135]" -type "float2" -0.35309619 -0.12682635 ;
	setAttr ".uvtk[136]" -type "float2" -0.34577835 -0.12682635 ;
	setAttr ".uvtk[137]" -type "float2" -0.35213453 -0.0673097 ;
	setAttr ".uvtk[138]" -type "float2" -0.36859074 -0.067638181 ;
	setAttr ".uvtk[139]" -type "float2" -0.35578004 -0.12266611 ;
	setAttr ".uvtk[140]" -type "float2" -0.35331422 -0.15434286 ;
	setAttr ".uvtk[141]" -type "float2" -0.34105241 -0.15434286 ;
	setAttr ".uvtk[142]" -type "float2" -0.37591887 -0.14706698 ;
	setAttr ".uvtk[143]" -type "float2" -0.35499787 -0.188216 ;
	setAttr ".uvtk[144]" -type "float2" -0.33498895 -0.18821594 ;
	setAttr ".uvtk[145]" -type "float2" -0.36196187 -0.17583621 ;
	setAttr ".uvtk[146]" -type "float2" -0.37017131 0.073850028 ;
	setAttr ".uvtk[147]" -type "float2" -0.37615842 0.074312232 ;
	setAttr ".uvtk[148]" -type "float2" -0.37499297 0.069884114 ;
	setAttr ".uvtk[149]" -type "float2" -0.38561583 0.044807024 ;
	setAttr ".uvtk[150]" -type "float2" -0.36498806 0.037923094 ;
	setAttr ".uvtk[151]" -type "float2" -0.38482612 0.040179905 ;
	setAttr ".uvtk[152]" -type "float2" -0.36427674 0.032802965 ;
	setAttr ".uvtk[153]" -type "float2" -0.37119174 0.013881352 ;
	setAttr ".uvtk[154]" -type "float2" -0.38259465 0.062541537 ;
	setAttr ".uvtk[155]" -type "float2" -0.36131203 0.058433793 ;
	setAttr ".uvtk[156]" -type "float2" -0.38218337 0.058113419 ;
	setAttr ".uvtk[157]" -type "float2" -0.36093092 0.053744473 ;
	setAttr ".uvtk[158]" -type "float2" -0.44205564 -0.1051996 ;
	setAttr ".uvtk[159]" -type "float2" -0.41220504 -0.075952373 ;
	setAttr ".uvtk[160]" -type "float2" -0.42359561 -0.093510963 ;
	setAttr ".uvtk[161]" -type "float2" -0.42282963 -0.086292468 ;
	setAttr ".uvtk[162]" -type "float2" -0.48060173 -0.085166417 ;
	setAttr ".uvtk[163]" -type "float2" -0.49705809 -0.067638181 ;
	setAttr ".uvtk[164]" -type "float2" -0.41269076 -0.084022902 ;
	setAttr ".uvtk[165]" -type "float2" -0.44282156 -0.11241817 ;
	setAttr ".uvtk[166]" -type "float2" -0.49777359 -0.067263506 ;
	setAttr ".uvtk[167]" -type "float2" -0.42763865 -0.068522952 ;
	setAttr ".uvtk[168]" -type "float2" -0.19307069 0.06595996 ;
	setAttr ".uvtk[169]" -type "float2" -0.18674611 0.06595996 ;
	setAttr ".uvtk[170]" -type "float2" -0.18953304 0.031715482 ;
	setAttr ".uvtk[171]" -type "float2" -0.19492845 0.03153497 ;
	setAttr ".uvtk[172]" -type "float2" -0.18507819 0.06595996 ;
	setAttr ".uvtk[173]" -type "float2" -0.18739276 0.06595996 ;
	setAttr ".uvtk[174]" -type "float2" -0.19279675 0.029836714 ;
	setAttr ".uvtk[175]" -type "float2" -0.18966477 0.028501987 ;
	setAttr ".uvtk[176]" -type "float2" -0.18961506 0.031099319 ;
	setAttr ".uvtk[177]" -type "float2" -0.18054868 0.06595996 ;
	setAttr ".uvtk[178]" -type "float2" -0.18660806 0.039938107 ;
	setAttr ".uvtk[179]" -type "float2" -0.18655138 0.039307848 ;
	setAttr ".uvtk[180]" -type "float2" -0.19479726 0.02898249 ;
	setAttr ".uvtk[181]" -type "float2" -0.17936541 -0.059570193 ;
	setAttr ".uvtk[182]" -type "float2" -0.18060185 -0.065944016 ;
	setAttr ".uvtk[183]" -type "float2" -0.18183573 -0.06595993 ;
	setAttr ".uvtk[184]" -type "float2" -0.18471263 -0.059618711 ;
	setAttr ".uvtk[185]" -type "float2" -0.18171577 -0.015426755 ;
	setAttr ".uvtk[186]" -type "float2" -0.18495141 -0.015426755 ;
	setAttr ".uvtk[187]" -type "float2" -0.18409006 -0.034619212 ;
	setAttr ".uvtk[188]" -type "float2" -0.17696033 -0.032515287 ;
	setAttr ".uvtk[189]" -type "float2" -0.18548195 -0.01956296 ;
	setAttr ".uvtk[190]" -type "float2" -0.18929349 -0.032565236 ;
	setAttr ".uvtk[191]" -type "float2" -0.18225251 -0.048815787 ;
	setAttr ".uvtk[192]" -type "float2" -0.17839225 -0.048433959 ;
	setAttr ".uvtk[193]" -type "float2" -0.18905137 -0.040143371 ;
	setAttr ".uvtk[194]" -type "float2" -0.18534546 2.6404858e-05 ;
	setAttr ".uvtk[195]" -type "float2" -0.19343142 0.0033012927 ;
	setAttr ".uvtk[196]" -type "float2" -0.18540154 0.00046807528 ;
	setAttr ".uvtk[197]" -type "float2" -0.19345026 0.0038043559 ;
	setAttr ".uvtk[198]" -type "float2" -0.19198613 -0.0019685626 ;
	setAttr ".uvtk[199]" -type "float2" -0.18700252 -0.0041489005 ;
	setAttr ".uvtk[200]" -type "float2" -0.19218116 -0.0035980344 ;
	setAttr ".uvtk[201]" -type "float2" -0.18661575 -0.0057734847 ;
	setAttr ".uvtk[202]" -type "float2" -0.19013266 0.0028813779 ;
	setAttr ".uvtk[203]" -type "float2" -0.18904541 -0.00043594837 ;
	setAttr ".uvtk[204]" -type "float2" -0.19487177 0.03090468 ;
	setAttr ".uvtk[205]" -type "float2" -0.1823511 0.028616905 ;
	setAttr ".uvtk[206]" -type "float2" -0.18506323 0.030432761 ;
	setAttr ".uvtk[207]" -type "float2" -0.18213944 0.027158707 ;
	setAttr ".uvtk[208]" -type "float2" -0.18506323 0.030432761 ;
	setAttr ".uvtk[209]" -type "float2" -0.19487177 0.03090468 ;
	setAttr ".uvtk[210]" -type "float2" -0.20201425 0.027158707 ;
	setAttr ".uvtk[211]" -type "float2" -0.21018998 0.030432761 ;
	setAttr ".uvtk[212]" -type "float2" -0.18660806 0.039938107 ;
	setAttr ".uvtk[213]" -type "float2" -0.19263373 0.023972213 ;
	setAttr ".uvtk[214]" -type "float2" -0.19489746 0.024270147 ;
	setAttr ".uvtk[215]" -type "float2" -0.19563828 -0.0052729249 ;
	setAttr ".uvtk[216]" -type "float2" -0.19940446 -0.0094091296 ;
	setAttr ".uvtk[217]" -type "float2" -0.20735393 0.013455123 ;
	setAttr ".uvtk[218]" -type "float2" -0.20737277 0.013958216 ;
	setAttr ".uvtk[222]" -type "float2" -0.19266824 0.025102735 ;
	setAttr ".uvtk[223]" -type "float2" -0.19486539 0.025501281 ;
	setAttr ".uvtk[224]" -type "float2" -0.19978438 0.021350145 ;
	setAttr ".uvtk[225]" -type "float2" -0.19441842 0.022467434 ;
	setAttr ".uvtk[230]" -type "float2" -0.19441251 0.021551669 ;
	setAttr ".uvtk[231]" -type "float2" -0.19966565 0.020352185 ;
	setAttr ".uvtk[232]" -type "float2" -0.19775151 0.021808207 ;
	setAttr ".uvtk[233]" -type "float2" -0.19699822 0.019215226 ;
	setAttr ".uvtk[234]" -type "float2" -0.19703905 0.018570334 ;
	setAttr ".uvtk[235]" -type "float2" -0.18171577 -0.015426755 ;
	setAttr ".uvtk[236]" -type "float2" -0.17502274 0.024270147 ;
	setAttr ".uvtk[237]" -type "float2" -0.17499061 0.025501281 ;
	setAttr ".uvtk[238]" -type "float2" -0.12598848 0.17808372 ;
	setAttr ".uvtk[239]" -type "float2" -0.11948504 0.17808372 ;
	setAttr ".uvtk[240]" -type "float2" -0.14075845 0.072190061 ;
	setAttr ".uvtk[241]" -type "float2" -0.13943833 0.07287477 ;
	setAttr ".uvtk[242]" -type "float2" -0.11976875 0.17808372 ;
	setAttr ".uvtk[243]" -type "float2" -0.13978863 0.029272892 ;
	setAttr ".uvtk[244]" -type "float2" -0.15068586 0.030674465 ;
	setAttr ".uvtk[245]" -type "float2" -0.14258295 0.066089198 ;
	setAttr ".uvtk[246]" -type "float2" -0.1402148 0.067956701 ;
	setAttr ".uvtk[247]" -type "float2" -0.14868195 0.00705529 ;
	setAttr ".uvtk[248]" -type "float2" -0.14450943 0.00705529 ;
	setAttr ".uvtk[249]" -type "float2" -0.14053941 0.025896735 ;
	setAttr ".uvtk[250]" -type "float2" -0.15388991 0.00705529 ;
	setAttr ".uvtk[251]" -type "float2" -0.16119595 -0.019608729 ;
	setAttr ".uvtk[252]" -type "float2" -0.1491579 -0.019608729 ;
	setAttr ".uvtk[253]" -type "float2" -0.13886875 -0.019608729 ;
	setAttr ".uvtk[254]" -type "float2" -0.16886862 -0.049922101 ;
	setAttr ".uvtk[255]" -type "float2" -0.14680278 -0.049922101 ;
	setAttr ".uvtk[256]" -type "float2" -0.12569648 -0.068469346 ;
	setAttr ".uvtk[257]" -type "float2" -0.15370519 -0.065098822 ;
	setAttr ".uvtk[258]" -type "float2" -0.14324075 -0.065098822 ;
	setAttr ".uvtk[259]" -type "float2" -0.15241565 -0.12145428 ;
	setAttr ".uvtk[260]" -type "float2" -0.15916683 -0.12957788 ;
	setAttr ".uvtk[261]" -type "float2" -0.15449645 -0.12957788 ;
	setAttr ".uvtk[262]" -type "float2" -0.15670408 -0.13431317 ;
	setAttr ".uvtk[263]" -type "float2" -0.1512769 0.02701477 ;
	setAttr ".uvtk[264]" -type "float2" -0.11301513 -0.0034509227 ;
	setAttr ".uvtk[265]" -type "float2" -0.18573083 0.0085752681 ;
	setAttr ".uvtk[266]" -type "float2" -0.11322387 -0.010065787 ;
	setAttr ".uvtk[267]" -type "float2" -0.24870236 0.025896735 ;
	setAttr ".uvtk[268]" -type "float2" -0.18336241 0.0051369742 ;
	setAttr ".uvtk[269]" -type "float2" -0.22138689 -0.010065787 ;
	setAttr ".uvtk[270]" -type "float2" -0.077567883 0.0085752681 ;
	setAttr ".uvtk[271]" -type "float2" -0.094031982 0.019290755 ;
	setAttr ".uvtk[272]" -type "float2" -0.075199492 0.0051369742 ;
	setAttr ".uvtk[273]" -type "float2" -0.1511348 0.058985904 ;
	setAttr ".uvtk[274]" -type "float2" -0.16147389 0.083719239 ;
	setAttr ".uvtk[275]" -type "float2" -0.16156377 0.080005512 ;
	setAttr ".uvtk[276]" -type "float2" -0.25569034 0.23056406 ;
	setAttr ".uvtk[277]" -type "float2" -0.17687194 0.23056406 ;
	setAttr ".uvtk[278]" -type "float2" -0.17577498 0.1690353 ;
	setAttr ".uvtk[279]" -type "float2" -0.17584725 0.16604744 ;
	setAttr ".uvtk[280]" -type "float2" -0.17961521 0.09157683 ;
	setAttr ".uvtk[281]" -type "float2" -0.25246185 0.091247067 ;
	setAttr ".uvtk[282]" -type "float2" -0.2528488 0.10171251 ;
	setAttr ".uvtk[283]" -type "float2" -0.25121295 0.10377257 ;
	setAttr ".uvtk[284]" -type "float2" -0.21208592 0.23056406 ;
	setAttr ".uvtk[285]" -type "float2" -0.22125384 0.16565423 ;
	setAttr ".uvtk[286]" -type "float2" -0.21257652 0.23056406 ;
	setAttr ".uvtk[287]" -type "float2" -0.21801962 0.10113122 ;
	setAttr ".uvtk[288]" -type "float2" -0.22168979 0.16217333 ;
	setAttr ".uvtk[289]" -type "float2" -0.22174445 0.16565423 ;
	setAttr ".uvtk[290]" -type "float2" -0.22970603 -0.0061746761 ;
	setAttr ".uvtk[291]" -type "float2" -0.20254593 -0.0061746761 ;
	setAttr ".uvtk[292]" -type "float2" -0.19600408 -0.03894316 ;
	setAttr ".uvtk[293]" -type "float2" -0.22266284 -0.03894316 ;
	setAttr ".uvtk[294]" -type "float2" -0.21507703 -0.0061746761 ;
	setAttr ".uvtk[295]" -type "float2" -0.20627692 -0.027819324 ;
	setAttr ".uvtk[296]" -type "float2" -0.21530326 -0.0061746761 ;
	setAttr ".uvtk[297]" -type "float2" -0.22993229 -0.0061746761 ;
	setAttr ".uvtk[298]" -type "float2" -0.22315344 -0.03894316 ;
	setAttr ".uvtk[299]" -type "float2" -0.2067675 -0.027819324 ;
	setAttr ".uvtk[300]" -type "float2" -0.18030892 -0.063842997 ;
	setAttr ".uvtk[301]" -type "float2" -0.22297403 -0.063842997 ;
	setAttr ".uvtk[302]" -type "float2" -0.20894575 -0.05107503 ;
	setAttr ".uvtk[303]" -type "float2" -0.22346464 -0.063842997 ;
	setAttr ".uvtk[304]" -type "float2" -0.20943631 -0.05107503 ;
	setAttr ".uvtk[305]" -type "float2" -0.18227078 -0.1474001 ;
	setAttr ".uvtk[306]" -type "float2" -0.17492019 -0.1474001 ;
	setAttr ".uvtk[307]" -type "float2" -0.25840795 -0.1474001 ;
	setAttr ".uvtk[308]" -type "float2" -0.22119924 0.16217333 ;
	setAttr ".uvtk[309]" -type "float2" -0.21752904 0.10113122 ;
	setAttr ".uvtk[310]" -type "float2" -0.21750863 0.099015102 ;
	setAttr ".uvtk[311]" -type "float2" -0.1797293 0.089738175 ;
	setAttr ".uvtk[312]" -type "float2" -0.2054722 0.14556594 ;
	setAttr ".uvtk[313]" -type "float2" -0.18957172 0.16202757 ;
	setAttr ".uvtk[314]" -type "float2" -0.20600039 0.1387365 ;
	setAttr ".uvtk[315]" -type "float2" -0.20596278 0.14556594 ;
	setAttr ".uvtk[316]" -type "float2" -0.1896935 0.15616539 ;
	setAttr ".uvtk[317]" -type "float2" -0.20550981 0.1387365 ;
	setAttr ".uvtk[318]" -type "float2" -0.2179992 0.099015102 ;
	setAttr ".uvtk[319]" -type "float2" -0.25238234 0.089218333 ;
	setAttr ".uvtk[320]" -type "float2" -0.22621141 0.10349624 ;
	setAttr ".uvtk[321]" -type "float2" -0.2360857 0.080348209 ;
	setAttr ".uvtk[322]" -type "float2" -0.22619461 0.099902853 ;
	setAttr ".uvtk[323]" -type "float2" -0.20484301 0.073725387 ;
	setAttr ".uvtk[324]" -type "float2" -0.18665113 0.085653707 ;
	setAttr ".uvtk[325]" -type "float2" -0.20492139 0.069955334 ;
	setAttr ".uvtk[326]" -type "float2" -0.1866404 0.081493869 ;
	setAttr ".uvtk[327]" -type "float2" -0.19705163 0.09348087 ;
	setAttr ".uvtk[328]" -type "float2" -0.19982775 0.17114313 ;
	setAttr ".uvtk[329]" -type "float2" -0.20031835 0.17114313 ;
	setAttr ".uvtk[330]" -type "float2" 0.22405469 0.3712908 ;
	setAttr ".uvtk[331]" -type "float2" 0.20455629 0.3712908 ;
	setAttr ".uvtk[332]" -type "float2" 0.20811355 0.26469404 ;
	setAttr ".uvtk[333]" -type "float2" 0.21879494 0.26469404 ;
	setAttr ".uvtk[334]" -type "float2" 0.24261129 0.3712908 ;
	setAttr ".uvtk[335]" -type "float2" 0.22435647 0.26469404 ;
	setAttr ".uvtk[336]" -type "float2" 0.22522771 0.049934886 ;
	setAttr ".uvtk[337]" -type "float2" 0.19827402 0.049934827 ;
	setAttr ".uvtk[338]" -type "float2" 0.22304106 0.019654714 ;
	setAttr ".uvtk[339]" -type "float2" 0.16519377 0.0049385056 ;
	setAttr ".uvtk[340]" -type "float2" 0.2499156 0.0049385056 ;
	setAttr ".uvtk[341]" -type "float2" 0.21446329 0.28603071 ;
	setAttr ".uvtk[342]" -type "float2" 0.20714581 0.267919 ;
	setAttr ".uvtk[343]" -type "float2" 0.21372086 0.24928236 ;
	setAttr ".uvtk[344]" -type "float2" 0.24364156 0.18699642 ;
	setAttr ".uvtk[345]" -type "float2" 0.20683092 0.19014004 ;
	setAttr ".uvtk[346]" -type "float2" 0.20810801 0.26298973 ;
	setAttr ".uvtk[347]" -type "float2" 0.21892619 0.26277581 ;
	setAttr ".uvtk[348]" -type "float2" 0.23285466 0.16061726 ;
	setAttr ".uvtk[349]" -type "float2" 0.23343748 0.15745619 ;
	setAttr ".uvtk[350]" -type "float2" 0.23744041 0.13378902 ;
	setAttr ".uvtk[351]" -type "float2" 0.24705583 0.13378902 ;
	setAttr ".uvtk[352]" -type "float2" 0.24396276 0.18387134 ;
	setAttr ".uvtk[353]" -type "float2" 0.25143406 0.13378902 ;
	setAttr ".uvtk[354]" -type "float2" 0.19383436 0.099131361 ;
	setAttr ".uvtk[355]" -type "float2" 0.2269932 0.099131361 ;
	setAttr ".uvtk[356]" -type "float2" 0.24906588 0.099131361 ;
	setAttr ".uvtk[357]" -type "float2" 0.27855617 0.099131361 ;
	setAttr ".uvtk[358]" -type "float2" 0.20068091 0.065589562 ;
	setAttr ".uvtk[359]" -type "float2" 0.2233085 0.065589622 ;
	setAttr ".uvtk[360]" -type "float2" 0.24721766 0.080982402 ;
	setAttr ".uvtk[361]" -type "float2" 0.2854026 0.065589562 ;
	setAttr ".uvtk[362]" -type "float2" 0.2829957 0.049934827 ;
	setAttr ".uvtk[363]" -type "float2" 0.25244108 0.15762797 ;
	setAttr ".uvtk[364]" -type "float2" 0.25283772 0.16067275 ;
	setAttr ".uvtk[365]" -type "float2" 0.20408475 0.15100659 ;
	setAttr ".uvtk[366]" -type "float2" 0.22214121 0.14179827 ;
	setAttr ".uvtk[367]" -type "float2" 0.25283772 0.16067275 ;
	setAttr ".uvtk[368]" -type "float2" 0.28700101 0.14631052 ;
	setAttr ".uvtk[369]" -type "float2" 0.2888065 0.15100659 ;
	setAttr ".uvtk[370]" -type "float2" 0.16771927 0.15762797 ;
	setAttr ".uvtk[371]" -type "float2" 0.1487157 0.15745619 ;
	setAttr ".uvtk[372]" -type "float2" 0.22180814 0.13739355 ;
	setAttr ".uvtk[373]" -type "float2" 0.20227927 0.14631052 ;
	setAttr ".uvtk[374]" -type "float2" 0.21109891 0.15733203 ;
	setAttr ".uvtk[375]" -type "float2" 0.20648396 0.18707708 ;
	setAttr ".uvtk[376]" -type "float2" 0.25244108 0.15762797 ;
	setAttr ".uvtk[377]" -type "float2" 0.25283772 0.16067275 ;
	setAttr ".uvtk[378]" -type "float2" 0.26513928 0.18604998 ;
	setAttr ".uvtk[379]" -type "float2" 0.26244581 0.16547278 ;
	setAttr ".uvtk[380]" -type "float2" 0.26403069 0.16258004 ;
	setAttr ".uvtk[381]" -type "float2" 0.26658574 0.18338917 ;
	setAttr ".uvtk[382]" -type "float2" 0.18186405 0.18338917 ;
	setAttr ".uvtk[383]" -type "float2" 0.17930892 0.16258004 ;
	setAttr ".uvtk[384]" -type "float2" 0.2912057 0.18707708 ;
	setAttr ".uvtk[385]" -type "float2" 0.2915526 0.19014004 ;
	setAttr ".uvtk[386]" -type "float2" 0.2032305 0.26277581 ;
	setAttr ".uvtk[387]" -type "float2" 0.19712692 0.19968747 ;
	setAttr ".uvtk[388]" -type "float2" 0.19715148 0.23664597 ;
	setAttr ".uvtk[389]" -type "float2" 0.21892619 0.26277581 ;
	setAttr ".uvtk[390]" -type "float2" -0.043486208 0.084336519 ;
	setAttr ".uvtk[391]" -type "float2" -0.044213444 0.084336519 ;
	setAttr ".uvtk[392]" -type "float2" -0.040508538 0.057584882 ;
	setAttr ".uvtk[393]" -type "float2" -0.040258378 0.055586308 ;
	setAttr ".uvtk[394]" -type "float2" -0.03941831 0.048538119 ;
	setAttr ".uvtk[395]" -type "float2" -0.03920117 0.046616822 ;
	setAttr ".uvtk[396]" -type "float2" -0.038249463 0.037586629 ;
	setAttr ".uvtk[397]" -type "float2" -0.035082072 0.037586629 ;
	setAttr ".uvtk[398]" -type "float2" -0.05007866 0.084336519 ;
	setAttr ".uvtk[399]" -type "float2" -0.048434049 0.056782573 ;
	setAttr ".uvtk[400]" -type "float2" -0.040314764 0.037586629 ;
	setAttr ".uvtk[401]" -type "float2" -0.042015463 0.046168983 ;
	setAttr ".uvtk[402]" -type "float2" -0.042402297 0.047981054 ;
	setAttr ".uvtk[403]" -type "float2" -0.043940455 0.054895312 ;
	setAttr ".uvtk[404]" -type "float2" -0.022584766 -0.069402575 ;
	setAttr ".uvtk[405]" -type "float2" -0.042576164 -0.069402575 ;
	setAttr ".uvtk[406]" -type "float2" -0.048353344 -0.084336519 ;
	setAttr ".uvtk[407]" -type "float2" -0.048622698 -0.053538918 ;
	setAttr ".uvtk[408]" -type "float2" -0.040706128 0.0014140308 ;
	setAttr ".uvtk[409]" -type "float2" -0.037827879 0.0014140308 ;
	setAttr ".uvtk[410]" -type "float2" -0.044473678 0.0014140308 ;
	setAttr ".uvtk[411]" -type "float2" -0.037380308 -0.025138199 ;
	setAttr ".uvtk[412]" -type "float2" -0.034315914 -0.025138199 ;
	setAttr ".uvtk[413]" -type "float2" -0.03758809 0.00022783875 ;
	setAttr ".uvtk[414]" -type "float2" -0.044124991 8.7857246e-05 ;
	setAttr ".uvtk[415]" -type "float2" -0.038821131 -0.02336514 ;
	setAttr ".uvtk[416]" -type "float2" -0.037373811 -0.036865771 ;
	setAttr ".uvtk[417]" -type "float2" -0.032060981 -0.036865711 ;
	setAttr ".uvtk[418]" -type "float2" -0.047048718 -0.03376478 ;
	setAttr ".uvtk[419]" -type "float2" -0.038043708 -0.051302552 ;
	setAttr ".uvtk[420]" -type "float2" -0.029120654 -0.051302493 ;
	setAttr ".uvtk[421]" -type "float2" -0.041464716 -0.04602623 ;
	setAttr ".uvtk[422]" -type "float2" -0.044826835 0.060390234 ;
	setAttr ".uvtk[423]" -type "float2" -0.047453433 0.060587227 ;
	setAttr ".uvtk[424]" -type "float2" -0.046962768 0.058699965 ;
	setAttr ".uvtk[425]" -type "float2" -0.051489562 0.048012108 ;
	setAttr ".uvtk[426]" -type "float2" -0.042531461 0.045078129 ;
	setAttr ".uvtk[427]" -type "float2" -0.051120013 0.046039999 ;
	setAttr ".uvtk[428]" -type "float2" -0.042217106 0.042895913 ;
	setAttr ".uvtk[429]" -type "float2" -0.045289725 0.034831524 ;
	setAttr ".uvtk[430]" -type "float2" -0.050235659 0.055570543 ;
	setAttr ".uvtk[431]" -type "float2" -0.04091832 0.053819805 ;
	setAttr ".uvtk[432]" -type "float2" -0.050047666 0.053683251 ;
	setAttr ".uvtk[433]" -type "float2" -0.040748566 0.051821202 ;
	setAttr ".uvtk[434]" -type "float2" -0.07932505 -0.015920877 ;
	setAttr ".uvtk[435]" -type "float2" -0.064043075 -0.0034556985 ;
	setAttr ".uvtk[436]" -type "float2" -0.080304354 -0.018997371 ;
	setAttr ".uvtk[437]" -type "float2" -0.098436326 0.00022783875 ;
	setAttr ".uvtk[438]" -type "float2" -0.064249843 -0.0068953633 ;
	setAttr ".uvtk[439]" -type "float2" -0.079686195 -0.018997371 ;
	setAttr ".uvtk[440]" -type "float2" -0.064661235 -0.0034556985 ;
	setAttr ".uvtk[441]" -type "float2" -0.074017376 -0.00063419342 ;
	setAttr ".uvtk[442]" -type "float2" -0.072553486 -0.00028926134 ;
	setAttr ".uvtk[443]" -type "float2" -0.064868122 -0.0068953633 ;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "/Users/MJ/Documents/MFA Game Design/GameStudio/multiplayer game/sketches//images/outUVPLANTS.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 1\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 1\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n"
		+ "            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 1\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 17 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 17 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :defaultTextureList1;
select -ne :lambert1;
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :initialMaterialInfo;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "groupParts1.og" "pCylinderShape1.i";
connectAttr "polyTweakUV6.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
connectAttr "groupId1.id" "pCylinderShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId2.id" "pCylinderShape1.ciog.cog[0].cgid";
connectAttr "groupParts2.og" "pCylinderShape2.i";
connectAttr "groupId3.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupId4.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "groupParts3.og" "pCylinderShape3.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCylinderShape3.uvst[0].uvtw";
connectAttr "groupId5.id" "pCylinderShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape3.iog.og[0].gco";
connectAttr "groupId6.id" "pCylinderShape3.ciog.cog[0].cgid";
connectAttr "groupParts4.og" "pCylinderShape4.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCylinderShape4.uvst[0].uvtw";
connectAttr "groupId7.id" "pCylinderShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape4.iog.og[0].gco";
connectAttr "groupId8.id" "pCylinderShape4.ciog.cog[0].cgid";
connectAttr "groupParts5.og" "pCylinderShape5.i";
connectAttr "groupId9.id" "pCylinderShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape5.iog.og[0].gco";
connectAttr "groupId10.id" "pCylinderShape5.ciog.cog[0].cgid";
connectAttr "groupParts6.og" "pCylinderShape6.i";
connectAttr "polyTweakUV5.uvtk[0]" "pCylinderShape6.uvst[0].uvtw";
connectAttr "groupId11.id" "pCylinderShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape6.iog.og[0].gco";
connectAttr "groupId12.id" "pCylinderShape6.ciog.cog[0].cgid";
connectAttr "groupParts7.og" "pCylinderShape7.i";
connectAttr "polyTweakUV2.uvtk[0]" "pCylinderShape7.uvst[0].uvtw";
connectAttr "groupId13.id" "pCylinderShape7.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape7.iog.og[0].gco";
connectAttr "groupId14.id" "pCylinderShape7.ciog.cog[0].cgid";
connectAttr "groupParts8.og" "pCylinderShape8.i";
connectAttr "polyTweakUV1.uvtk[0]" "pCylinderShape8.uvst[0].uvtw";
connectAttr "groupId15.id" "pCylinderShape8.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape8.iog.og[0].gco";
connectAttr "groupId16.id" "pCylinderShape8.ciog.cog[0].cgid";
connectAttr "polyTweakUV7.out" "polySurfaceShape4.i";
connectAttr "groupId17.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
connectAttr "polyTweakUV7.uvtk[0]" "polySurfaceShape4.uvst[0].uvtw";
connectAttr "polyUnite1.out" "groupParts9.ig";
connectAttr "groupId17.id" "groupParts9.gi";
connectAttr "pCylinderShape1.o" "polyUnite1.ip[0]";
connectAttr "pCylinderShape2.o" "polyUnite1.ip[1]";
connectAttr "pCylinderShape3.o" "polyUnite1.ip[2]";
connectAttr "pCylinderShape4.o" "polyUnite1.ip[3]";
connectAttr "pCylinderShape5.o" "polyUnite1.ip[4]";
connectAttr "pCylinderShape6.o" "polyUnite1.ip[5]";
connectAttr "pCylinderShape7.o" "polyUnite1.ip[6]";
connectAttr "pCylinderShape8.o" "polyUnite1.ip[7]";
connectAttr "pCylinderShape1.wm" "polyUnite1.im[0]";
connectAttr "pCylinderShape2.wm" "polyUnite1.im[1]";
connectAttr "pCylinderShape3.wm" "polyUnite1.im[2]";
connectAttr "pCylinderShape4.wm" "polyUnite1.im[3]";
connectAttr "pCylinderShape5.wm" "polyUnite1.im[4]";
connectAttr "pCylinderShape6.wm" "polyUnite1.im[5]";
connectAttr "pCylinderShape7.wm" "polyUnite1.im[6]";
connectAttr "pCylinderShape8.wm" "polyUnite1.im[7]";
connectAttr "polyTweakUV6.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyCylProj8.out" "polyTweakUV6.ip";
connectAttr "deleteComponent8.og" "polyCylProj8.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj8.mp";
connectAttr "polyMergeVert5.out" "deleteComponent8.ig";
connectAttr "polyTweak11.out" "polyMergeVert5.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert5.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak11.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace8.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak10.ip";
connectAttr "polyCut7.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace7.mp";
connectAttr "polyCut6.out" "polyCut7.ip";
connectAttr "pCylinderShape1.wm" "polyCut7.mp";
connectAttr "polyMergeVert4.out" "polyCut6.ip";
connectAttr "pCylinderShape1.wm" "polyCut6.mp";
connectAttr "polyTweak9.out" "polyMergeVert4.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert4.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak9.ip";
connectAttr "polyCut5.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace6.mp";
connectAttr "polyCut4.out" "polyCut5.ip";
connectAttr "pCylinderShape1.wm" "polyCut5.mp";
connectAttr "polyCut3.out" "polyCut4.ip";
connectAttr "pCylinderShape1.wm" "polyCut4.mp";
connectAttr "polyTweak8.out" "polyCut3.ip";
connectAttr "pCylinderShape1.wm" "polyCut3.mp";
connectAttr "polyMergeVert3.out" "polyTweak8.ip";
connectAttr "polyTweak7.out" "polyMergeVert3.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert2.out" "polyTweak7.ip";
connectAttr "polyTweak6.out" "polyMergeVert2.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert2.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak6.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak5.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace4.mp";
connectAttr "polyCut2.out" "polyTweak4.ip";
connectAttr "polyCut1.out" "polyCut2.ip";
connectAttr "pCylinderShape1.wm" "polyCut2.mp";
connectAttr "deleteComponent2.og" "polyCut1.ip";
connectAttr "pCylinderShape1.wm" "polyCut1.mp";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyMergeVert1.out" "deleteComponent1.ig";
connectAttr "polyTweak3.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape1.wm" "polyMergeVert1.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak3.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyCylProj2.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "deleteComponent6.og" "polyCylProj2.ip";
connectAttr "pCylinderShape2.wm" "polyCylProj2.mp";
connectAttr "polyTweak50.out" "deleteComponent6.ig";
connectAttr "polyMergeVert6.out" "polyTweak50.ip";
connectAttr "polySurfaceShape1.o" "polyMergeVert6.ip";
connectAttr "pCylinderShape2.wm" "polyMergeVert6.mp";
connectAttr "polyTweakUV3.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "polyCylProj4.out" "polyTweakUV3.ip";
connectAttr "deleteComponent12.og" "polyCylProj4.ip";
connectAttr "pCylinderShape3.wm" "polyCylProj4.mp";
connectAttr "polyTweak54.out" "deleteComponent12.ig";
connectAttr "polyMergeVert10.out" "polyTweak54.ip";
connectAttr "polyTweak22.out" "polyMergeVert10.ip";
connectAttr "pCylinderShape3.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert9.out" "polyTweak22.ip";
connectAttr "polyTweak21.out" "polyMergeVert9.ip";
connectAttr "pCylinderShape3.wm" "polyMergeVert9.mp";
connectAttr "polyExtrudeFace19.out" "polyTweak21.ip";
connectAttr "polyTweak20.out" "polyExtrudeFace19.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace19.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak20.ip";
connectAttr "polyCut13.out" "polyExtrudeFace18.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace18.mp";
connectAttr "polyCut12.out" "polyCut13.ip";
connectAttr "pCylinderShape3.wm" "polyCut13.mp";
connectAttr "polyMergeVert8.out" "polyCut12.ip";
connectAttr "pCylinderShape3.wm" "polyCut12.mp";
connectAttr "polyTweak19.out" "polyMergeVert8.ip";
connectAttr "pCylinderShape3.wm" "polyMergeVert8.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak19.ip";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace17.mp";
connectAttr "polyTweak18.out" "polyExtrudeFace16.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace16.mp";
connectAttr "polyMergeVert7.out" "polyTweak18.ip";
connectAttr "polyTweak17.out" "polyMergeVert7.ip";
connectAttr "pCylinderShape3.wm" "polyMergeVert7.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak17.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace15.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak16.ip";
connectAttr "polyCut11.out" "polyExtrudeFace14.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace14.mp";
connectAttr "polyCut10.out" "polyCut11.ip";
connectAttr "pCylinderShape3.wm" "polyCut11.mp";
connectAttr "polyCut9.out" "polyCut10.ip";
connectAttr "pCylinderShape3.wm" "polyCut10.mp";
connectAttr "polyCut8.out" "polyCut9.ip";
connectAttr "pCylinderShape3.wm" "polyCut9.mp";
connectAttr "polyTweak15.out" "polyCut8.ip";
connectAttr "pCylinderShape3.wm" "polyCut8.mp";
connectAttr "polyExtrudeFace13.out" "polyTweak15.ip";
connectAttr "polyExtrudeFace12.out" "polyExtrudeFace13.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace12.mp";
connectAttr "polyTweak14.out" "polyExtrudeFace11.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak14.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace10.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak13.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace9.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace9.mp";
connectAttr "polyCylinder2.out" "polyTweak12.ip";
connectAttr "polyTweakUV4.out" "groupParts4.ig";
connectAttr "groupId7.id" "groupParts4.gi";
connectAttr "polyCylProj5.out" "polyTweakUV4.ip";
connectAttr "deleteComponent7.og" "polyCylProj5.ip";
connectAttr "pCylinderShape4.wm" "polyCylProj5.mp";
connectAttr "polyTweak51.out" "deleteComponent7.ig";
connectAttr "polyCut14.out" "polyTweak51.ip";
connectAttr "polySurfaceShape2.o" "polyCut14.ip";
connectAttr "pCylinderShape4.wm" "polyCut14.mp";
connectAttr "polyCylProj7.out" "groupParts5.ig";
connectAttr "groupId9.id" "groupParts5.gi";
connectAttr "deleteComponent11.og" "polyCylProj7.ip";
connectAttr "pCylinderShape5.wm" "polyCylProj7.mp";
connectAttr "deleteComponent5.og" "deleteComponent11.ig";
connectAttr "polyTweak49.out" "deleteComponent5.ig";
connectAttr "polyMergeVert12.out" "polyTweak49.ip";
connectAttr "polyTweak30.out" "polyMergeVert12.ip";
connectAttr "pCylinderShape5.wm" "polyMergeVert12.mp";
connectAttr "polyExtrudeFace26.out" "polyTweak30.ip";
connectAttr "polyCut20.out" "polyExtrudeFace26.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeFace26.mp";
connectAttr "polyCut19.out" "polyCut20.ip";
connectAttr "pCylinderShape5.wm" "polyCut20.mp";
connectAttr "polyCut18.out" "polyCut19.ip";
connectAttr "pCylinderShape5.wm" "polyCut19.mp";
connectAttr "polyCut17.out" "polyCut18.ip";
connectAttr "pCylinderShape5.wm" "polyCut18.mp";
connectAttr "polyTweak29.out" "polyCut17.ip";
connectAttr "pCylinderShape5.wm" "polyCut17.mp";
connectAttr "polyMergeVert11.out" "polyTweak29.ip";
connectAttr "polyTweak28.out" "polyMergeVert11.ip";
connectAttr "pCylinderShape5.wm" "polyMergeVert11.mp";
connectAttr "polyExtrudeFace25.out" "polyTweak28.ip";
connectAttr "polyTweak27.out" "polyExtrudeFace25.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeFace25.mp";
connectAttr "polyExtrudeFace24.out" "polyTweak27.ip";
connectAttr "polyCut16.out" "polyExtrudeFace24.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeFace24.mp";
connectAttr "polyCut15.out" "polyCut16.ip";
connectAttr "pCylinderShape5.wm" "polyCut16.mp";
connectAttr "polyTweak26.out" "polyCut15.ip";
connectAttr "pCylinderShape5.wm" "polyCut15.mp";
connectAttr "polyExtrudeFace23.out" "polyTweak26.ip";
connectAttr "polyTweak25.out" "polyExtrudeFace23.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeFace23.mp";
connectAttr "polyExtrudeFace22.out" "polyTweak25.ip";
connectAttr "polyExtrudeFace21.out" "polyExtrudeFace22.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeFace22.mp";
connectAttr "polyTweak24.out" "polyExtrudeFace21.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeFace21.mp";
connectAttr "polyExtrudeFace20.out" "polyTweak24.ip";
connectAttr "polyTweak23.out" "polyExtrudeFace20.ip";
connectAttr "pCylinderShape5.wm" "polyExtrudeFace20.mp";
connectAttr "polyCylinder3.out" "polyTweak23.ip";
connectAttr "polyTweakUV5.out" "groupParts6.ig";
connectAttr "groupId11.id" "groupParts6.gi";
connectAttr "polyCylProj6.out" "polyTweakUV5.ip";
connectAttr "deleteComponent10.og" "polyCylProj6.ip";
connectAttr "pCylinderShape6.wm" "polyCylProj6.mp";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "polyMergeVert16.out" "deleteComponent9.ig";
connectAttr "polyTweak52.out" "polyMergeVert16.ip";
connectAttr "pCylinderShape6.wm" "polyMergeVert16.mp";
connectAttr "deleteComponent4.og" "polyTweak52.ip";
connectAttr "polyTweak48.out" "deleteComponent4.ig";
connectAttr "polyMergeVert14.out" "polyTweak48.ip";
connectAttr "polyTweak39.out" "polyMergeVert14.ip";
connectAttr "pCylinderShape6.wm" "polyMergeVert14.mp";
connectAttr "polyExtrudeFace34.out" "polyTweak39.ip";
connectAttr "polyTweak38.out" "polyExtrudeFace34.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace34.mp";
connectAttr "polyMergeVert13.out" "polyTweak38.ip";
connectAttr "polyTweak37.out" "polyMergeVert13.ip";
connectAttr "pCylinderShape6.wm" "polyMergeVert13.mp";
connectAttr "polyExtrudeFace33.out" "polyTweak37.ip";
connectAttr "polyTweak36.out" "polyExtrudeFace33.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace33.mp";
connectAttr "polyExtrudeFace32.out" "polyTweak36.ip";
connectAttr "polyCut26.out" "polyExtrudeFace32.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace32.mp";
connectAttr "polyCut25.out" "polyCut26.ip";
connectAttr "pCylinderShape6.wm" "polyCut26.mp";
connectAttr "polyTweak35.out" "polyCut25.ip";
connectAttr "pCylinderShape6.wm" "polyCut25.mp";
connectAttr "polyExtrudeFace31.out" "polyTweak35.ip";
connectAttr "polyCut24.out" "polyExtrudeFace31.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace31.mp";
connectAttr "polyCut23.out" "polyCut24.ip";
connectAttr "pCylinderShape6.wm" "polyCut24.mp";
connectAttr "polyExtrudeFace30.out" "polyCut23.ip";
connectAttr "pCylinderShape6.wm" "polyCut23.mp";
connectAttr "polyCut22.out" "polyExtrudeFace30.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace30.mp";
connectAttr "polyCut21.out" "polyCut22.ip";
connectAttr "pCylinderShape6.wm" "polyCut22.mp";
connectAttr "polyTweak34.out" "polyCut21.ip";
connectAttr "pCylinderShape6.wm" "polyCut21.mp";
connectAttr "polyExtrudeFace29.out" "polyTweak34.ip";
connectAttr "polyTweak33.out" "polyExtrudeFace29.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace29.mp";
connectAttr "polyExtrudeFace28.out" "polyTweak33.ip";
connectAttr "polyTweak32.out" "polyExtrudeFace28.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace28.mp";
connectAttr "polyExtrudeFace27.out" "polyTweak32.ip";
connectAttr "polyTweak31.out" "polyExtrudeFace27.ip";
connectAttr "pCylinderShape6.wm" "polyExtrudeFace27.mp";
connectAttr "polyCylinder4.out" "polyTweak31.ip";
connectAttr "polyTweakUV2.out" "groupParts7.ig";
connectAttr "groupId13.id" "groupParts7.gi";
connectAttr "polyCylProj3.out" "polyTweakUV2.ip";
connectAttr "polyMergeVert17.out" "polyCylProj3.ip";
connectAttr "pCylinderShape7.wm" "polyCylProj3.mp";
connectAttr "polyTweak53.out" "polyMergeVert17.ip";
connectAttr "pCylinderShape7.wm" "polyMergeVert17.mp";
connectAttr "deleteComponent3.og" "polyTweak53.ip";
connectAttr "polyTweak47.out" "deleteComponent3.ig";
connectAttr "polyExtrudeFace42.out" "polyTweak47.ip";
connectAttr "polyCut32.out" "polyExtrudeFace42.ip";
connectAttr "pCylinderShape7.wm" "polyExtrudeFace42.mp";
connectAttr "polyTweak46.out" "polyCut32.ip";
connectAttr "pCylinderShape7.wm" "polyCut32.mp";
connectAttr "polyExtrudeFace41.out" "polyTweak46.ip";
connectAttr "polyCut31.out" "polyExtrudeFace41.ip";
connectAttr "pCylinderShape7.wm" "polyExtrudeFace41.mp";
connectAttr "polyCut30.out" "polyCut31.ip";
connectAttr "pCylinderShape7.wm" "polyCut31.mp";
connectAttr "polyCut29.out" "polyCut30.ip";
connectAttr "pCylinderShape7.wm" "polyCut30.mp";
connectAttr "polyTweak45.out" "polyCut29.ip";
connectAttr "pCylinderShape7.wm" "polyCut29.mp";
connectAttr "polyMergeVert15.out" "polyTweak45.ip";
connectAttr "polyTweak44.out" "polyMergeVert15.ip";
connectAttr "pCylinderShape7.wm" "polyMergeVert15.mp";
connectAttr "polyExtrudeFace40.out" "polyTweak44.ip";
connectAttr "polyExtrudeFace39.out" "polyExtrudeFace40.ip";
connectAttr "pCylinderShape7.wm" "polyExtrudeFace40.mp";
connectAttr "polyCut28.out" "polyExtrudeFace39.ip";
connectAttr "pCylinderShape7.wm" "polyExtrudeFace39.mp";
connectAttr "polyCut27.out" "polyCut28.ip";
connectAttr "pCylinderShape7.wm" "polyCut28.mp";
connectAttr "polyTweak43.out" "polyCut27.ip";
connectAttr "pCylinderShape7.wm" "polyCut27.mp";
connectAttr "polyExtrudeFace38.out" "polyTweak43.ip";
connectAttr "polyTweak42.out" "polyExtrudeFace38.ip";
connectAttr "pCylinderShape7.wm" "polyExtrudeFace38.mp";
connectAttr "polyExtrudeFace37.out" "polyTweak42.ip";
connectAttr "polyTweak41.out" "polyExtrudeFace37.ip";
connectAttr "pCylinderShape7.wm" "polyExtrudeFace37.mp";
connectAttr "polyExtrudeFace36.out" "polyTweak41.ip";
connectAttr "polyTweak40.out" "polyExtrudeFace36.ip";
connectAttr "pCylinderShape7.wm" "polyExtrudeFace36.mp";
connectAttr "polyExtrudeFace35.out" "polyTweak40.ip";
connectAttr "polyCylinder5.out" "polyExtrudeFace35.ip";
connectAttr "pCylinderShape7.wm" "polyExtrudeFace35.mp";
connectAttr "polyTweakUV1.out" "groupParts8.ig";
connectAttr "groupId15.id" "groupParts8.gi";
connectAttr "polyCylProj1.out" "polyTweakUV1.ip";
connectAttr "polySurfaceShape3.o" "polyCylProj1.ip";
connectAttr "pCylinderShape8.wm" "polyCylProj1.mp";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "groupParts9.og" "polyTweakUV7.ip";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "pCylinderShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
// End of plantUnit2.ma
