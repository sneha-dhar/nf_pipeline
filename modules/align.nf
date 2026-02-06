process ALIGN {
    tag "$sample_id"

    input:
    tuple val(sample_id), path(reads)
    path reference

    output:

    tuple val(sample_id), path("${sample_id}.bam")

    script:
    """
    ${params.bwa_bin} mem ${reference} ${reads} |
        ${params.samtools_bin} sort -o ${sample_id}.bam

    ${params.samtools_bin} index ${sample_id}.bam
    """
}