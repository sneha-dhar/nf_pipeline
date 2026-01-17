process ALIGN {
    tag "$sample_id"
    input:
    tuple val(sample_id), path(reads)
    path reference
    output:
    tuple val(sample_id), path("${sample_id}.bam")
    script:
    """
    bwa mem ${reference} ${reads} | samtools sort -o ${sample_id}.bam
    samtools index ${sample_id}.bam
    """
}
