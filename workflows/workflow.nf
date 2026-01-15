workflow {

    Channel
        .fromPath('data/*.fastq.gz')
        .set { raw_reads }

    trimmed_reads = TRIM(raw_reads)

    FASTQC(trimmed_reads)
}


