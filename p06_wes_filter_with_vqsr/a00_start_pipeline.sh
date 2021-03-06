#!/bin/bash

# a00_start_pipeline.sh
# Start vqsr
# Alexey Larionov, 16Oct2015

## Read parameter
job_file="${1}"
scripts_folder="${2}"

# Read job's settings
source "${scripts_folder}/a02_read_config.sh"

# Start lane pipeline log
mkdir -p "${vqsr_vcf_folder}"
mkdir -p "${vqsr_vcf_folder}/${source_vcf%.vcf}_source_files"
log="${vqsr_vcf_folder}/${source_vcf%_raw.vcf}_vqsr.log"

echo "WES library: vqsr" > "${log}"
echo "${source_vcf}" >> "${log}" 
echo "Started: $(date +%d%b%Y_%H:%M:%S)" >> "${log}"
echo "" >> "${log}" 

echo "====================== Settings ======================" >> "${log}"
echo "" >> "${log}"

source "${scripts_folder}/a03_report_settings.sh" >> "${log}"

echo "=================== Pipeline steps ===================" >> "${log}"
echo "" >> "${log}"

# Submit job
slurm_time="--time=${time_to_request}"
slurm_account="--account=${account_to_use}"

sbatch "${slurm_time}" "${slurm_account}" \
  "${scripts_folder}/s01_filter_with_vqsr.sb.sh" \
  "${job_file}" \
  "${source_vcf}" \
  "${scripts_folder}" \
  "${vqsr_vcf_folder}" \
  "${log}"

# Update pipeline log
echo "" >> "${log}"
echo "Submitted s01_filter_with_vqsr: $(date +%d%b%Y_%H:%M:%S)" >> "${log}"
echo "" >> "${log}"