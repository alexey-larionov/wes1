#!/bin/bash

# s03_report_config.sh
# Reporting settings for vqsr
# Alexey Larionov, 16Oct2015

pipeline_info=$(grep "^#" "${job_file}")
pipeline_info=${pipeline_info//"#"/}

echo "------------------- Pipeline summary -----------------"
echo ""
echo "${pipeline_info}"
echo ""
echo "------------------ Analysis settings -----------------"
echo ""
echo "project: ${project}"
echo "source_vcf: ${source_vcf}"
echo ""
echo "data_server: ${data_server}"
echo "project_location: ${project_location}"
echo ""
echo "remove_project_folder: ${remove_project_folder}"
echo ""
echo "------------------- HPC settings ---------------------"
echo ""
echo "working_folder: ${working_folder}"
echo ""
echo "account_to_use: ${account_to_use}"
echo "time_to_request: ${time_to_request}"
echo ""
echo "------------------ mgqnap settings -------------------"
echo ""
echo "mgqnap_user: ${mgqnap_user}"
echo "mgqnap_group: ${mgqnap_group}"
echo ""
echo "----------------- Standard settings ------------------"
echo ""
echo "scripts_folder: ${scripts_folder}"
echo ""
echo "Tools"
echo "-----"
echo ""
echo "tools_folder: ${tools_folder}"
echo ""
echo "java7: ${java7}"
echo "gatk: ${gatk}"
echo ""
echo "r_folder: ${r_folder}"
echo ""
echo "bcftools: ${bcftools}"
echo "plot_vcfstats: ${plot_vcfstats}"
echo ""
echo "python_bin: ${python_bin}"
echo ""
echo "Resources" 
echo "---------"
echo ""
echo "resources_folder: ${resources_folder}"
echo ""
echo "decompressed_bundle_folder: ${decompressed_bundle_folder}"
echo "ref_genome: ${ref_genome}"
echo "hapmap: ${hapmap}"
echo "omni: ${omni}"
echo "phase1_1k_hc: ${phase1_1k_hc}"
echo "dbsnp_138: ${dbsnp_138}"
echo "dbsnp_138_sites129: ${dbsnp_138_sites129}"
echo "mills: ${mills}"
echo ""
echo "nextera_folder: ${nextera_folder}"
echo "nextera_targets_intervals: ${nextera_targets_intervals}"
echo ""
echo "Working sub-folders on HPC"
echo "--------------------------"
echo ""
echo "project_folder: ${project_folder}"
echo ""
echo "vqsr_vcf_folder: ${vqsr_vcf_folder}"
echo "vcf_plots_folder: ${vcf_plots_folder}"
echo "" 