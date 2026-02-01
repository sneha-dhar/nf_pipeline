process VARIANT_CALLING {

    tag "$sample_id"

    input:
    tuple val(sample_id), path(bam_file)
    path reference

    output:
    tuple val(sample_id), path("${sample_id}.vcf")

    script:
    """
    ${params.bcftools} mpileup -f ${reference} ${bam_file} |
        ${params.bcftools} call -mv -Ov -o ${sample_id}.vcf
    """
}