process TRIM {
    tag "$sample_id"
    input:
    tuple val(sample_id), path(reads)
    output:
    tuple val(sample_id), path("*_trimmed.fastq.gz")
    script:
    """
    trimmomatic SE \
      $reads \
      ${sample_id}_trimmed.fastq.gz \
      SLIDINGWINDOW:4:20 MINLEN:36
    """
}
