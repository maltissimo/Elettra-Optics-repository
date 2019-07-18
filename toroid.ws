# SHADOW GUI version 1.0
#
# Do NOT change the line above. It is used internally to
# to recognize SHADOW Workspace saved previously by GUI
#

#
# [HEADER]
#

global workspace gvars
set workspace(beamline)  "{SOURCE 1} {2 0 3} {0 2} {0 3}"
set workspace(machine)   "dhaka.xraylith.wisc.edu"
set workspace(timestamp) "Sat Apr 12 15:39:04 CDT 1997"
set workspace(username)  "khan"

#
# [ANNOTATION]
#

proc State:_load_annotation {} {
    global workspace
    set workspace(title) {SHADOW Demo: Toroidal Mirror}
    set workspace(subtitle) {}
    set workspace(annotation) {This is a simple demo to illustrate how to build a simple workspace with a Synchrotron source and 2 OEs, and also how to get mirror parameters using Mirinfo. To run the demo,

    - Create the SOURCE image by clicking on "Ray_Trace->Source" in 
       the Toolbox on your left (or you can use the shortcuts in Toolbar).

    - Ray trace the system using "Ray_Trace->System" or using the
       shortcut in the Toolbar above.

Now you can also veiw the mirror parameters using Mirinfo. Select the "Mirinfo 3" icon in your workspace (in the area labeled System below the Toolbox) and choose Run from the Toolbar.


}
}
State:_load_annotation
rename State:_load_annotation {}


if $gvars(state_peek) {return}


#
# [SOURCE]
#

State:add_source
proc State:_add_source {} {
    set nml {
        {plasma_angle "0"}
        {bener "1"}
        {cone_max "0"}
        {cone_min "0"}
        {conv_fact "0"}
        {epsi_dx "0"}
        {epsi_dz "0"}
        {epsi_x "0"}
        {epsi_z "0"}
        {fdistr "FLAT"}
        {fgrid "RAN/RAN"}
        {file_bound "NONE SPECIFIED"}
        {file_source "begin.dat"}
        {file_traj "NONE SPECIFIED"}
        {fsour "POINT"}
        {fsource_depth "OFF"}
        {f_bound_sour "NO"}
        {f_coher "COHERENT"}
        {f_color "OFF"}
        {f_new "NO"}
        {f_opd "OFF"}
        {f_phot "eV"}
        {f_pol "TOTAL"}
        {f_polar "OFF"}
        {f_wiggler "NONE"}
        {f_sr_type "PHOTON"}
        {hdiv1 "0.05"}
        {hdiv2 "0.05"}
        {ido_vx "1"}
        {ido_vz "1"}
        {ido_xl "1"}
        {ido_xn "1"}
        {ido_zl "1"}
        {ido_zn "1"}
        {ido_x_s "1"}
        {ido_y_s "1"}
        {ido_z_s "1"}
        {istar1 "12853"}
        {npoint "5000"}
        {n_circle "7"}
        {n_color "1"}
        {n_cone "1"}
        {ph1 "10"}
        {ph10 "10"}
        {ph2 "10"}
        {ph3 "10"}
        {ph4 "10"}
        {ph5 "10"}
        {ph6 "10"}
        {ph7 "10"}
        {ph8 "10"}
        {ph9 "10"}
        {pol_angle "0"}
        {pol_deg "0"}
        {r_aladdin "208.33"}
        {r_magnet "2.0833"}
        {sigdix "0"}
        {sigdiz "0"}
        {sigmax "0"}
        {sigmay "0"}
        {sigmaz "0"}
        {sigxl1 "0"}
        {sigxl10 "0"}
        {sigxl2 "0"}
        {sigxl3 "0"}
        {sigxl4 "0"}
        {sigxl5 "0"}
        {sigxl6 "0"}
        {sigxl7 "0"}
        {sigxl8 "0"}
        {sigxl9 "0"}
        {sigzl1 "0"}
        {sigzl10 "0"}
        {sigzl2 "0"}
        {sigzl3 "0"}
        {sigzl4 "0"}
        {sigzl5 "0"}
        {sigzl6 "0"}
        {sigzl7 "0"}
        {sigzl8 "0"}
        {sigzl9 "0"}
        {vdiv1 "0.02"}
        {vdiv2 "0.02"}
        {wxsou "0"}
        {wysou "0"}
        {wzsou "0"}
        {ncol "0"}
        {oe_number "0"}
        {idummy "0"}
        {dummy "0"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset source $var $value
    }
}
State:_add_source
rename State:_add_source {}
State:add_source_inspector PLOTXY 1
proc State:_add_src_ins1 {} {
    set nml {
        {plx_spec_file "YES"}
        {plx_infile "begin.dat"}
        {plx_image "Cont Plane"}
        {plx_plot_what "SOURCE"}
        {plx_rayopts "GOOD ONLY"}
        {plx_comments "SOURCE"}
        {plx_row_horiz "phase-X"}
        {plx_row_vert "phase-Z"}
        {plx_unit "cm-1"}
        {plx_scale_opts "Automatic"}
        {plx_ext_hmin "0"}
        {plx_ext_hmax "0"}
        {plx_ext_vmin "0"}
        {plx_ext_vmax "0"}
        {plx_plot_type "Scattered"}
        {plx_hairline "NO"}
        {plx_ovl_mirror "NO"}
        {plx_do_hist "YES"}
        {plx_hist_lim "NO"}
        {plx_hist_xctr "0"}
        {plx_hist_xwid "0"}
        {plx_hist_yctr "0"}
        {plx_hist_ywid "0"}
        {plx_hist_xbins "25"}
        {plx_hist_ybins "25"}
        {plx_device "X Windows"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset inspector source 1 $var $value
    }
}
State:_add_src_ins1
rename State:_add_src_ins1 {}




#
# [SYSTEM]
#

#
# [OE 1]
#

State:add_oe 1
proc State:_add_oe1 {} {
    set nml {
        {alfa "0"}
        {alpha "0"}
        {alpha_i "0"}
        {alpha_s "0"}
        {axmaj "0"}
        {axmin "0"}
        {azim_fan "0"}
        {a_bragg "0"}
        {blaze "0"}
        {cil_ang "0"}
        {cod_len "0"}
        {cod_wid "0"}
        {coma_fac "0"}
        {cone_a "0"}
        {dist_fan "0"}
        {d_spacing "0"}
        {dummy "0"}
        {ell_the "0"}
        {fcyl "NO"}
        {fdummy "NO"}
        {fhit_c "OFF"}
        {file_fac "NONE SPECIFIED"}
        {file_koma "NONE SPECIFIED"}
        {file_koma_ca "NONE SPECIFIED"}
        {file_mir "NONE SPECIFIED"}
        {file_refl "NONE SPECIFIED"}
        {file_rip "NONE SPECIFIED"}
        {file_rough "NONE SPECIFIED"}
        {file_segment "NONE SPECIFIED"}
        {file_segp "NONE SPECIFIED"}
        {file_source "begin.dat"}
        {fmirr "TOROIDAL"}
        {fshape "RECTANGLE"}
        {fslit "NO"}
        {fstat "NO"}
        {fwrite "ALL"}
        {fzp "NO"}
        {f_angle "NO"}
        {f_bragg_a "NO"}
        {f_central "NO"}
        {f_convex "CONCAVE"}
        {f_crystal "NO"}
        {f_default "COINCIDENT"}
        {f_ext "INTERNAL"}
        {f_exit_shape "NO"}
        {f_facet "NO"}
        {f_fac_orient "Y-AXIS"}
        {f_fac_latt "RECTANGLE"}
        {f_grating "MIRROR"}
        {f_g_s "SINE"}
        {f_hunt "FIRST"}
        {f_inc_mnor_ang "NO"}
        {f_koma "NO"}
        {f_koma_bounce "NO"}
        {f_koma_ca "NO"}
        {f_mono "TGM"}
        {f_johansson "NO"}
        {f_mosaic "NO"}
        {f_move "NO"}
        {f_phot_cent "eV"}
        {f_plate "NO"}
        {f_polsel "FARTHEST"}
        {f_pw "SPSP"}
        {f_pw_c "SPSP"}
        {f_refl "FILE"}
        {f_reflec "OFF"}
        {f_refrac "REFLECTOR"}
        {f_ripple "NO"}
        {f_roughness "NO"}
        {f_ruling "CONSTANT"}
        {f_rul_abs "ABSOLUTE"}
        {f_r_ran "SINE"}
        {f_screen "OFF"}
        {f_segment "NO"}
        {f_side "SOURCE"}
        {f_thick "NO"}
        {f_torus "LOWER/OUTER"}
        {f_virtual "R/R"}
        {gamma "0"}
        {holo_del "-20"}
        {holo_gam "-20"}
        {holo_r1 "300"}
        {holo_r2 "300"}
        {holo_rt1 "0"}
        {holo_rt2 "0"}
        {holo_w "4879.86"}
        {hunt_h "0"}
        {hunt_l "0"}
        {ifac_x "11"}
        {ifac_y "11"}
        {iseg_xnum "1"}
        {iseg_ynum "1"}
        {mosaic_seed "1626261131"}
        {n_plates "0"}
        {n_screen "0"}
        {oe_number "0"}
        {offx "0"}
        {offy "0"}
        {offz "0"}
        {off_soux "0"}
        {off_souy "0"}
        {off_souz "0"}
        {order "-1"}
        {param "0"}
        {phot_cent "5"}
        {rdsour "0"}
        {rfac_lenx "10"}
        {rfac_leny "10"}
        {rfac_phax "0"}
        {rfac_phay "0"}
        {rfac_delx1 "0"}
        {rfac_delx2 "0"}
        {rfac_dely1 "0"}
        {rfac_dely2 "0"}
        {rkoma_cx "0"}
        {rkoma_cy "0"}
        {rlen1 "0"}
        {rlen2 "0"}
        {rmirr "0"}
        {rough_x "0"}
        {rough_y "0"}
        {rtheta "0"}
        {ruling "12000"}
        {rul_a1 "0"}
        {rul_a2 "0"}
        {rul_a3 "0"}
        {rul_a4 "0"}
        {rwidx1 "0"}
        {rwidx2 "0"}
        {r_ind_obj "1"}
        {r_ind_ima "1"}
        {r_johansson "0"}
        {r_lambda "5000"}
        {r_maj "0"}
        {r_min "0"}
        {seg_lenx "0"}
        {seg_leny "0"}
        {simag "0"}
        {sllen "0"}
        {slwid "0"}
        {sltilt "0"}
        {spread_mos "0"}
        {ssour "0"}
        {theta "0"}
        {theta_i "0"}
        {thickness "0"}
        {t_image "120"}
        {t_incidence "45"}
        {t_reflection "45"}
        {t_source "100"}
        {x_phase "0"}
        {x_rip_amp "0"}
        {x_rip_wav "0"}
        {x_rot "0"}
        {x_sour "0"}
        {x_sour_rot "0"}
        {y_phase "0"}
        {y_rip_amp "0"}
        {y_rip_wav "0"}
        {y_rot "0"}
        {y_sour "0"}
        {y_sour_rot "0"}
        {zko_length "0"}
        {z_rot "0"}
        {z_sour "0"}
        {z_sour_rot "0"}
        {npoint "0"}
        {ncol "0"}
        {scr_number(1) "0"}
        {scr_number(2) "0"}
        {scr_number(3) "0"}
        {scr_number(4) "0"}
        {scr_number(5) "0"}
        {scr_number(6) "0"}
        {scr_number(7) "0"}
        {scr_number(8) "0"}
        {scr_number(9) "0"}
        {scr_number(10) "0"}
        {i_screen(1) "0"}
        {i_screen(2) "0"}
        {i_screen(3) "0"}
        {i_screen(4) "0"}
        {i_screen(5) "0"}
        {i_screen(6) "0"}
        {i_screen(7) "0"}
        {i_screen(8) "0"}
        {i_screen(9) "0"}
        {i_screen(10) "0"}
        {i_abs(1) "0"}
        {i_abs(2) "0"}
        {i_abs(3) "0"}
        {i_abs(4) "0"}
        {i_abs(5) "0"}
        {i_abs(6) "0"}
        {i_abs(7) "0"}
        {i_abs(8) "0"}
        {i_abs(9) "0"}
        {i_abs(10) "0"}
        {i_stop(1) "0"}
        {i_stop(2) "0"}
        {i_stop(3) "0"}
        {i_stop(4) "0"}
        {i_stop(5) "0"}
        {i_stop(6) "0"}
        {i_stop(7) "0"}
        {i_stop(8) "0"}
        {i_stop(9) "0"}
        {i_stop(10) "0"}
        {i_slit(1) "0"}
        {i_slit(2) "0"}
        {i_slit(3) "0"}
        {i_slit(4) "0"}
        {i_slit(5) "0"}
        {i_slit(6) "0"}
        {i_slit(7) "0"}
        {i_slit(8) "0"}
        {i_slit(9) "0"}
        {i_slit(10) "0"}
        {k_slit(1) "0"}
        {k_slit(2) "0"}
        {k_slit(3) "0"}
        {k_slit(4) "0"}
        {k_slit(5) "0"}
        {k_slit(6) "0"}
        {k_slit(7) "0"}
        {k_slit(8) "0"}
        {k_slit(9) "0"}
        {k_slit(10) "0"}
        {istar1 "0"}
        {ig_seed "0"}
        {file_abs(1) ""}
        {file_abs(2) ""}
        {file_abs(3) ""}
        {file_abs(4) ""}
        {file_abs(5) ""}
        {file_abs(6) ""}
        {file_abs(7) ""}
        {file_abs(8) ""}
        {file_abs(9) ""}
        {file_abs(10) ""}
        {thick(1) "0"}
        {thick(2) "0"}
        {thick(3) "0"}
        {thick(4) "0"}
        {thick(5) "0"}
        {thick(6) "0"}
        {thick(7) "0"}
        {thick(8) "0"}
        {thick(9) "0"}
        {thick(10) "0"}
        {rx_slit(1) "0"}
        {rx_slit(2) "0"}
        {rx_slit(3) "0"}
        {rx_slit(4) "0"}
        {rx_slit(5) "0"}
        {rx_slit(6) "0"}
        {rx_slit(7) "0"}
        {rx_slit(8) "0"}
        {rx_slit(9) "0"}
        {rx_slit(10) "0"}
        {d_plate(1) "0"}
        {d_plate(2) "0"}
        {d_plate(3) "0"}
        {d_plate(4) "0"}
        {d_plate(5) "0"}
        {rz_slit(1) "0"}
        {rz_slit(2) "0"}
        {rz_slit(3) "0"}
        {rz_slit(4) "0"}
        {rz_slit(5) "0"}
        {rz_slit(6) "0"}
        {rz_slit(7) "0"}
        {rz_slit(8) "0"}
        {rz_slit(9) "0"}
        {rz_slit(10) "0"}
        {sl_dis(1) "0"}
        {sl_dis(2) "0"}
        {sl_dis(3) "0"}
        {sl_dis(4) "0"}
        {sl_dis(5) "0"}
        {sl_dis(6) "0"}
        {sl_dis(7) "0"}
        {sl_dis(8) "0"}
        {sl_dis(9) "0"}
        {sl_dis(10) "0"}
        {n_rip "0"}
        {idummy "0"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset oe 1 $var $value
    }
}
State:_add_oe1
rename State:_add_oe1 {}
State:add_oe_inspector 1 PLOTXY 1
proc State:_add_oe1_ins1 {} {
    set nml {
        {plx_spec_file "YES"}
        {plx_infile "star.01"}
        {plx_image "Cont Plane"}
        {plx_plot_what "OE"}
        {plx_rayopts "GOOD ONLY"}
        {plx_comments "OE 1"}
        {plx_row_horiz "X"}
        {plx_row_vert "Z"}
        {plx_unit "cm-1"}
        {plx_scale_opts "Automatic"}
        {plx_ext_hmin "0"}
        {plx_ext_hmax "0"}
        {plx_ext_vmin "0"}
        {plx_ext_vmax "0"}
        {plx_plot_type "Scattered"}
        {plx_hairline "NO"}
        {plx_ovl_mirror "NO"}
        {plx_do_hist "YES"}
        {plx_hist_lim "NO"}
        {plx_hist_xctr "0"}
        {plx_hist_xwid "0"}
        {plx_hist_yctr "0"}
        {plx_hist_ywid "0"}
        {plx_hist_xbins "25"}
        {plx_hist_ybins "25"}
        {plx_device "X Windows"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset inspector oe 1 1 $var $value
    }
}
State:_add_oe1_ins1
rename State:_add_oe1_ins1 {}
State:add_oe_inspector 1 MINMAX 2
proc State:_add_oe1_ins2 {} {
    set nml {
        {min_infile "star.01"}
        {min_rayopts "GOOD ONLY"}
        {min_oe_loss "1"}
        {min_comments "OE 1"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset inspector oe 1 2 $var $value
    }
}
State:_add_oe1_ins2
rename State:_add_oe1_ins2 {}




#
# [OE 2]
#

State:add_oe 2
proc State:_add_oe2 {} {
    set nml {
        {alfa "0"}
        {alpha "180"}
        {alpha_i "0"}
        {alpha_s "0"}
        {axmaj "0"}
        {axmin "0"}
        {azim_fan "0"}
        {a_bragg "0"}
        {blaze "0"}
        {cil_ang "0"}
        {cod_len "0"}
        {cod_wid "0"}
        {coma_fac "0"}
        {cone_a "0"}
        {dist_fan "0"}
        {d_spacing "0"}
        {dummy "0"}
        {ell_the "0"}
        {fcyl "NO"}
        {fdummy "NO"}
        {fhit_c "OFF"}
        {file_fac "NONE SPECIFIED"}
        {file_koma "NONE SPECIFIED"}
        {file_koma_ca "NONE SPECIFIED"}
        {file_mir "NONE SPECIFIED"}
        {file_refl "NONE SPECIFIED"}
        {file_rip "NONE SPECIFIED"}
        {file_rough "NONE SPECIFIED"}
        {file_segment "NONE SPECIFIED"}
        {file_segp "NONE SPECIFIED"}
        {file_source "star.01"}
        {fmirr "TOROIDAL"}
        {fshape "RECTANGLE"}
        {fslit "NO"}
        {fstat "NO"}
        {fwrite "ALL"}
        {fzp "NO"}
        {f_angle "NO"}
        {f_bragg_a "NO"}
        {f_central "NO"}
        {f_convex "CONCAVE"}
        {f_crystal "NO"}
        {f_default "COINCIDENT"}
        {f_ext "INTERNAL"}
        {f_exit_shape "NO"}
        {f_facet "NO"}
        {f_fac_orient "Y-AXIS"}
        {f_fac_latt "RECTANGLE"}
        {f_grating "MIRROR"}
        {f_g_s "SINE"}
        {f_hunt "FIRST"}
        {f_inc_mnor_ang "NO"}
        {f_koma "NO"}
        {f_koma_bounce "NO"}
        {f_koma_ca "NO"}
        {f_mono "TGM"}
        {f_johansson "NO"}
        {f_mosaic "NO"}
        {f_move "NO"}
        {f_phot_cent "eV"}
        {f_plate "NO"}
        {f_polsel "FARTHEST"}
        {f_pw "SPSP"}
        {f_pw_c "SPSP"}
        {f_refl "FILE"}
        {f_reflec "OFF"}
        {f_refrac "REFLECTOR"}
        {f_ripple "NO"}
        {f_roughness "NO"}
        {f_ruling "CONSTANT"}
        {f_rul_abs "ABSOLUTE"}
        {f_r_ran "SINE"}
        {f_screen "OFF"}
        {f_segment "NO"}
        {f_side "SOURCE"}
        {f_thick "NO"}
        {f_torus "LOWER/OUTER"}
        {f_virtual "R/R"}
        {gamma "0"}
        {holo_del "-20"}
        {holo_gam "-20"}
        {holo_r1 "300"}
        {holo_r2 "300"}
        {holo_rt1 "0"}
        {holo_rt2 "0"}
        {holo_w "4879.86"}
        {hunt_h "0"}
        {hunt_l "0"}
        {ifac_x "11"}
        {ifac_y "11"}
        {iseg_xnum "1"}
        {iseg_ynum "1"}
        {mosaic_seed "1626261131"}
        {n_plates "0"}
        {n_screen "0"}
        {oe_number "0"}
        {offx "0"}
        {offy "0"}
        {offz "0"}
        {off_soux "0"}
        {off_souy "0"}
        {off_souz "0"}
        {order "-1"}
        {param "0"}
        {phot_cent "5"}
        {rdsour "0"}
        {rfac_lenx "10"}
        {rfac_leny "10"}
        {rfac_phax "0"}
        {rfac_phay "0"}
        {rfac_delx1 "0"}
        {rfac_delx2 "0"}
        {rfac_dely1 "0"}
        {rfac_dely2 "0"}
        {rkoma_cx "0"}
        {rkoma_cy "0"}
        {rlen1 "0"}
        {rlen2 "0"}
        {rmirr "0"}
        {rough_x "0"}
        {rough_y "0"}
        {rtheta "0"}
        {ruling "12000"}
        {rul_a1 "0"}
        {rul_a2 "0"}
        {rul_a3 "0"}
        {rul_a4 "0"}
        {rwidx1 "0"}
        {rwidx2 "0"}
        {r_ind_obj "1"}
        {r_ind_ima "1"}
        {r_johansson "0"}
        {r_lambda "5000"}
        {r_maj "0"}
        {r_min "0"}
        {seg_lenx "0"}
        {seg_leny "0"}
        {simag "0"}
        {sllen "0"}
        {slwid "0"}
        {sltilt "0"}
        {spread_mos "0"}
        {ssour "0"}
        {theta "0"}
        {theta_i "0"}
        {thickness "0"}
        {t_image "120"}
        {t_incidence "45"}
        {t_reflection "45"}
        {t_source "100"}
        {x_phase "0"}
        {x_rip_amp "0"}
        {x_rip_wav "0"}
        {x_rot "0"}
        {x_sour "0"}
        {x_sour_rot "0"}
        {y_phase "0"}
        {y_rip_amp "0"}
        {y_rip_wav "0"}
        {y_rot "0"}
        {y_sour "0"}
        {y_sour_rot "0"}
        {zko_length "0"}
        {z_rot "0"}
        {z_sour "0"}
        {z_sour_rot "0"}
        {npoint "0"}
        {ncol "0"}
        {scr_number(1) "0"}
        {scr_number(2) "0"}
        {scr_number(3) "0"}
        {scr_number(4) "0"}
        {scr_number(5) "0"}
        {scr_number(6) "0"}
        {scr_number(7) "0"}
        {scr_number(8) "0"}
        {scr_number(9) "0"}
        {scr_number(10) "0"}
        {i_screen(1) "0"}
        {i_screen(2) "0"}
        {i_screen(3) "0"}
        {i_screen(4) "0"}
        {i_screen(5) "0"}
        {i_screen(6) "0"}
        {i_screen(7) "0"}
        {i_screen(8) "0"}
        {i_screen(9) "0"}
        {i_screen(10) "0"}
        {i_abs(1) "0"}
        {i_abs(2) "0"}
        {i_abs(3) "0"}
        {i_abs(4) "0"}
        {i_abs(5) "0"}
        {i_abs(6) "0"}
        {i_abs(7) "0"}
        {i_abs(8) "0"}
        {i_abs(9) "0"}
        {i_abs(10) "0"}
        {i_stop(1) "0"}
        {i_stop(2) "0"}
        {i_stop(3) "0"}
        {i_stop(4) "0"}
        {i_stop(5) "0"}
        {i_stop(6) "0"}
        {i_stop(7) "0"}
        {i_stop(8) "0"}
        {i_stop(9) "0"}
        {i_stop(10) "0"}
        {i_slit(1) "0"}
        {i_slit(2) "0"}
        {i_slit(3) "0"}
        {i_slit(4) "0"}
        {i_slit(5) "0"}
        {i_slit(6) "0"}
        {i_slit(7) "0"}
        {i_slit(8) "0"}
        {i_slit(9) "0"}
        {i_slit(10) "0"}
        {k_slit(1) "0"}
        {k_slit(2) "0"}
        {k_slit(3) "0"}
        {k_slit(4) "0"}
        {k_slit(5) "0"}
        {k_slit(6) "0"}
        {k_slit(7) "0"}
        {k_slit(8) "0"}
        {k_slit(9) "0"}
        {k_slit(10) "0"}
        {istar1 "0"}
        {ig_seed "0"}
        {file_abs(1) ""}
        {file_abs(2) ""}
        {file_abs(3) ""}
        {file_abs(4) ""}
        {file_abs(5) ""}
        {file_abs(6) ""}
        {file_abs(7) ""}
        {file_abs(8) ""}
        {file_abs(9) ""}
        {file_abs(10) ""}
        {thick(1) "0"}
        {thick(2) "0"}
        {thick(3) "0"}
        {thick(4) "0"}
        {thick(5) "0"}
        {thick(6) "0"}
        {thick(7) "0"}
        {thick(8) "0"}
        {thick(9) "0"}
        {thick(10) "0"}
        {rx_slit(1) "0"}
        {rx_slit(2) "0"}
        {rx_slit(3) "0"}
        {rx_slit(4) "0"}
        {rx_slit(5) "0"}
        {rx_slit(6) "0"}
        {rx_slit(7) "0"}
        {rx_slit(8) "0"}
        {rx_slit(9) "0"}
        {rx_slit(10) "0"}
        {d_plate(1) "0"}
        {d_plate(2) "0"}
        {d_plate(3) "0"}
        {d_plate(4) "0"}
        {d_plate(5) "0"}
        {rz_slit(1) "0"}
        {rz_slit(2) "0"}
        {rz_slit(3) "0"}
        {rz_slit(4) "0"}
        {rz_slit(5) "0"}
        {rz_slit(6) "0"}
        {rz_slit(7) "0"}
        {rz_slit(8) "0"}
        {rz_slit(9) "0"}
        {rz_slit(10) "0"}
        {sl_dis(1) "0"}
        {sl_dis(2) "0"}
        {sl_dis(3) "0"}
        {sl_dis(4) "0"}
        {sl_dis(5) "0"}
        {sl_dis(6) "0"}
        {sl_dis(7) "0"}
        {sl_dis(8) "0"}
        {sl_dis(9) "0"}
        {sl_dis(10) "0"}
        {n_rip "0"}
        {idummy "0"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset oe 2 $var $value
    }
}
State:_add_oe2
rename State:_add_oe2 {}
State:add_oe_inspector 2 PLOTXY 1
proc State:_add_oe2_ins1 {} {
    set nml {
        {plx_spec_file "YES"}
        {plx_infile "star.02"}
        {plx_image "Cont Plane"}
        {plx_plot_what "OE"}
        {plx_rayopts "GOOD ONLY"}
        {plx_comments "OE 2"}
        {plx_row_horiz "X"}
        {plx_row_vert "Z"}
        {plx_unit "cm-1"}
        {plx_scale_opts "Automatic"}
        {plx_ext_hmin "0"}
        {plx_ext_hmax "0"}
        {plx_ext_vmin "0"}
        {plx_ext_vmax "0"}
        {plx_plot_type "Scattered"}
        {plx_hairline "NO"}
        {plx_ovl_mirror "NO"}
        {plx_do_hist "YES"}
        {plx_hist_lim "NO"}
        {plx_hist_xctr "0"}
        {plx_hist_xwid "0"}
        {plx_hist_yctr "0"}
        {plx_hist_ywid "0"}
        {plx_hist_xbins "25"}
        {plx_hist_ybins "25"}
        {plx_device "X Windows"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset inspector oe 2 1 $var $value
    }
}
State:_add_oe2_ins1
rename State:_add_oe2_ins1 {}
State:add_oe_inspector 2 MINMAX 2
proc State:_add_oe2_ins2 {} {
    set nml {
        {min_infile "star.02"}
        {min_rayopts "GOOD ONLY"}
        {min_oe_loss "1"}
        {min_comments "OE 2"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset inspector oe 2 2 $var $value
    }
}
State:_add_oe2_ins2
rename State:_add_oe2_ins2 {}
State:add_oe_inspector 2 MIRINFO 3
proc State:_add_oe2_ins3 {} {
    set nml {
        {mir_infile "end.02"}
        {mir_title "OE 2"}
        {mir_comments ""}
        {mir_outfile "mirinfo.txt"}
    }
    foreach item $nml {
        set var [lindex $item 0]
        set value [lindex $item 1]
        beamline vset inspector oe 2 3 $var $value
    }
}
State:_add_oe2_ins3
rename State:_add_oe2_ins3 {}






