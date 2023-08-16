transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+/home/krish/Desktop/MTech_IIT-B/Sem2_Spring_2021-22/EE739_Proc_Design/course_content/pd_project1/v {/home/krish/Desktop/MTech_IIT-B/Sem2_Spring_2021-22/EE739_Proc_Design/course_content/pd_project1/v/alu.v}

