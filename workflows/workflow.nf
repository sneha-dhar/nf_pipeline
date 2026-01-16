include { FASTQC as FASTQC_RAW } from '../modules/fastqc.nf'
include { TRIM }                from '../modules/trim.nf'
include { FASTQC as FASTQC_TRIMMED } from '../modules/fastqc.nf'

workflow QC_PIPELINE {

    reads_ch = Channel
        .fromPath("data/*.fastq.gz")
        .map { file -> tuple(file.baseName, file) }

    // STEP 1: FastQC on raw reads
    FASTQC_RAW(reads_ch)

    // STEP 2: Trimming
    trimmed_ch = TRIM(reads_ch)

    // STEP 3: FastQC on trimmed reads
    FASTQC_TRIMMED(trimmed_ch)
}





