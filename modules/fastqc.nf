process FASTQC {

    tag "$sample_id"

    input:
    tuple val(sample_id), path(reads)

    output:
    path "*_fastqc.html"
    path "*_fastqc.zip"

    script:
    """
    fastqc $reads
    """
}






