nextflow.enable.dsl = 2

include { FASTQC } from './modules/fastqc.nf'
include { TRIM }   from './modules/trim.nf'

workflow {

    reads_ch = Channel.fromPath("data/*.fastq.gz")

    FASTQC(reads_ch)
    TRIM(reads_ch)
}



