process FASTQC {

    input:
    path reads

    output:
    path "*_fastqc.zip"
    path "*_fastqc.html"

    script:
    """
    fastqc $reads
    """
}



