nextflow.enable.dsl = 2

include { PIPELINE } from './workflows/workflow.nf'

workflow {
    PIPELINE()
}






