# Nextflow QC and Alignment Pipeline

## Overview
This project implements a basic **Nextflow pipeline** for preprocessing and alignment of sequencing data.  
The pipeline performs **quality control, trimming, post-trimming quality check, and read alignment** on a single FASTQ file.

Only **code files** are tracked in GitHub.  
Input data, intermediate files, and results are **not pushed*

## Pipeline Steps
### Step 1: Raw Read Quality Control (FastQC)
- Performs quality assessment on the raw FASTQ file
- Generates reports for base quality, GC content, and adapter contamination
**Tool used:**
- FastQC

### Step 2: Read Trimming
- Removes low-quality bases and adapters from raw reads
- Improves read quality for downstream analysis
**Tool used:**
- Trimmomatic (Single-end mode)

### Step 3: Quality Control After Trimming
- Runs FastQC again on the trimmed reads
- Confirms improvement in read quality after trimming
**Tool used:**
- FastQC

### Step 4: Read Alignment
- Aligns trimmed reads to the reference genome
- Produces alignment output in BAM format
- BAM file is generated inside the Nextflow `work/` directory
**Tool used:**
- Aligner used in workflow (as configured in the pipeline)

## Input Data
Single FASTQ file:
data/sample_R1.fastq

Input data is used locally for execution and is **not included** in the GitHub repository.

## Output
- FastQC reports (raw and trimmed)
- Trimmed FASTQ file
- Alignment output (BAM file)

All outputs are stored in the Nextflow `work/` directory by default.

## Project Structure
nf_pipeline/
├── main.nf
├── nextflow.config
├── README.md
├── modules/
│ ├── fastqc.nf
│ ├── trim.nf
│ └── align.nf
└── workflows/
└── workflow.nf


## How to Run the Pipeline

From the project directory:
```bash
nextflow run main.nf
nextflow run main.nf -resume


