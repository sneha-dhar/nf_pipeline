include { FASTQC } from '../modules/fastqc.nf'
include { TRIM } from '../modules/trim.nf'
include { FASTQC_TRIMMED } from '../modules/fastqc_trimmed.nf'

workflow PIPELINE {

    Channel
        .fromPath('data/*.fastq.gz')
        .set { raw_reads }

    FASTQC(raw_reads)

    trimmed_reads = TRIM(raw_reads)

    FASTQC_TRIMMED(trimmed_reads)
}



