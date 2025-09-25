
mySequenceFile <- system.file("examples", "exampleAA.fasta", package="msa")
aa_stringset <- Biostrings::readAAStringSet(mySequenceFile)
aa_stringset_sub <- subseq(aa_stringset, start = 320, end = 360)
writeXStringSet(aa_stringset_sub, 'example_AA_msa.fasta')


ggmsa::available_colors()

ggmsa:::scheme_AA |> as_tibble(rownames = 'symbol') |> 
  readr::write_csv('palette_amino_acids.csv')
