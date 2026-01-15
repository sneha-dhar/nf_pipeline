process FASTQC_TRIMMED {

    input:
    path reads

    output:
    path "*_fastqc.zip"

    script:
    """
    fastqc $reads
    """
}
