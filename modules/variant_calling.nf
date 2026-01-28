process VARIANT_CALLING {

    tag "$sample_id"

    input:
    tuple val(sample_id), path(bam_file)
    path reference

    output:
    tuple val(sample_id), path("${sample_id}.vcf")

    script:
    """
    bcftools mpileup -f $reference $bam_file \
    | bcftools call -mv -Ov -o ${sample_id}.vcf
    """
}