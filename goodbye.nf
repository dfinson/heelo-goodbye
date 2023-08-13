#!/usr/bin/env nextflow
nextflow.enable.dsl=2 

process sayGoodbye {
  input: 
    val x
  output:
    stdout
  script:
    """
    echo '$x world!'
    """
}

workflow {
  Channel.of('Au revoir', 'Arrivederci', 'Goodbye', 'Adiós') | sayGoodbye | view
}
