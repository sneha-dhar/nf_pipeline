# Nextflow DSL-2 FASTQ Quality Control Pipeline

## 📌 Project Overview
This project demonstrates the development of a **Nextflow DSL-2 based bioinformatics pipeline** for preprocessing of FASTQ sequencing data.  
The pipeline performs **quality control before and after read trimming**, ensuring high-quality data for downstream analysis.

The workflow was implemented using **modular design principles of DSL-2**, where each analysis step is written as an independent and reusable module.

---

## 🧬 Pipeline Steps
The pipeline consists of the following steps:

1. **Initial Quality Control (FastQC)**
   - Performs quality assessment on raw FASTQ files.
   - Generates reports on read quality, GC content, sequence length distribution, etc.

2. **Read Trimming (Trimmomatic)**
   - Removes low-quality bases and adapters from raw reads.
   - Improves overall sequencing data quality.

3. **Post-trimming Quality Control (FastQC)**
   - Runs FastQC again on trimmed reads.
   - Confirms improvement in read quality after trimming.

---

## 🛠 Tools & Technologies Used
- **Nextflow (DSL-2)**
- **FastQC**
- **Trimmomatic**
- Linux / Ubuntu (WSL)
- Git & GitHub for version control

---

## 📂 Project Structure
nf_pipeline/
│── main.nf
│── nextflow.config
│── README.md
│
├── data/
│ └── sample_R1.fastq.gz
│
├── modules/
│ ├── fastqc.nf
│ ├── trim.nf
│ └── fastqc_trimmed.nf
│
└── workflows/
└── workflow.nf


---

## ▶️ How to Run the Pipeline

1. Place FASTQ files inside the `data/` directory.
2. Run the pipeline using:
```bash
nextflow run main.nf

Outputs will be generated in the work/ and results/ directories.