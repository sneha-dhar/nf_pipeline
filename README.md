# Nextflow QC, Alignment and Variant Calling Pipeline

## Overview
This project implements a **modular Nextflow pipeline** for basic **NGS data preprocessing and analysis**.  
The pipeline performs quality control, trimming, post-trimming quality check, read alignment, and variant calling on a **single FASTQ file**.

---

## Pipeline Workflow 

Raw FASTQ  
↓  
FastQC (Raw Reads)  
↓  
Read Trimming  
↓  
FastQC (Trimmed Reads)  
↓  
Read Alignment (BAM generation)  
↓  
Variant Calling (VCF generation)

---

## Pipeline Steps

### Step 1: Raw Read Quality Control
- Performs quality assessment on raw FASTQ reads
- Generates reports for base quality, GC content, and adapters

**Tool:** FastQC

---

### Step 2: Read Trimming
- Removes low-quality bases and adapters
- Improves read quality for downstream analysis

**Tool:** Trimmomatic (Single-end)

---

### Step 3: Quality Control After Trimming
- Runs FastQC on trimmed reads
- Confirms improvement in read quality

**Tool:** FastQC

---

### Step 4: Read Alignment
- Aligns trimmed reads to the reference genome (chr22)
- Generates sorted and indexed BAM file

**Tools:** BWA, Samtools

---

### Step 5: Variant Calling
- Performs variant calling from BAM file
- Generates VCF file containing SNPs/variants

**Tool:** BCFtools

---

## Input Data
- Single FASTQ file  
  `data/sample_R1.fastq`

- Reference genome  
  `data/reference/chr22.fa`

Input data is used locally and is **not included** in GitHub.

---

## Output
- FastQC reports (raw and trimmed)
- Trimmed FASTQ file
- BAM and BAI files
- VCF file

All outputs are generated inside the Nextflow `work/` directory.

---

## Project Structure 
```bash
nf_pipeline/
│
├── main.nf
├── nextflow.config
├── environment.yml
├── README.md
│
├── modules/
│   ├── fastqc.nf
│   ├── trim.nf
│   ├── align.nf
│   └── variant_calling.nf
│
└── workflows/
    └── workflow.nf

---
```

## Clone the Git Repository

```bash
git clone <your-github-repo-url>
cd nf_pipeline

---
```
## Create and Activate Conda Environment
```bash

conda env create -f environment.yml
conda activate bnf

---
```
## How to Run the Pipeline

From the project directory
```bash
nextflow run main.nf
nextflow run main.nf -resume










