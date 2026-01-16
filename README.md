# Nextflow QC Pipeline (FastQC + Trimming)

## Overview
This project implements a simple Nextflow pipeline to perform quality control on raw FASTQ sequencing data.  
The pipeline includes:
1. Quality check of raw reads using FastQC  
2. Trimming of reads using Trimmomatic  
3. Quality check of trimmed reads using FastQC  

## Pipeline Structure
nf_pipeline/
├── main.nf
├── nextflow.config
├── README.md
├── modules/
│ ├── fastqc.nf
│ ├── trim.nf
│ └── fastqc_trimmed.nf
├── workflows/
│ └── workflow.nf
└── data/

## Tools Used
- Nextflow  
- FastQC  
- Trimmomatic  

## Input
- Single FASTQ file placed in the `data/` directory  

## Workflow Description
- Raw FASTQ files are read from the `data/` directory  
- FastQC is performed on raw reads  
- Trimmomatic trims low-quality bases and adapters  
- FastQC is performed again on trimmed reads  

## How to Run
From the project directory:

```bash
nextflow run main.nf

To resume from cache:

nextflow run main.nf -resum

