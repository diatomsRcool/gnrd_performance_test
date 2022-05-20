# GNFinder Performance Test

This repository shows the analysis and results for a test of GNFinder performance as a tool for finding taxonomic names in text and adding them to metadata.

The code for GNFinder is [here](https://github.com/gnames/gnfinder).

dryad-paper is a nested repository containing the text files that were read by GNFinder and the csv and json output. The name of the subfolder is a number that matches the data package identifier.

GNRD_performance_text.ipynb is a Jupyter notebook showing how the performance metrics were calculated from the results in dryad-paper.

annotator_results.txt is the annotator results. Tab-delimited file
- column 'string' contains the name string as found in the text
- column 'data_package' contains the number identifier of the data package from which the name string was found
- column 'data_type' either data or pdf. Indicates if the name string was found in a data file or in the published pdf
- column 'source' either annotator_1 or annotator_2. Indicates which annotator found the name string
- column 'string_type' contains the 'vernacular' tag

errors.txt is a tab-delimited list of all false positives and false negatives
- column 'data_package' is the number identifier of the data package where the error originates
- column 'name' is the name string that is the false positive or false negative
- column 'error_type' is false positive or false negative

results.tsv is a tab-delimited list of the results per data package publication. This is the output of the Jupyter notebook
- first column is unnamed index
- column 'data_package' number identifier for the data package for the publication
- column 'true_positives' number of true positives
- column 'false_positives' number of false positives
- column 'false_negatives' number of false negatives
- column 'returned_results' total number of results returned by GNFinder
- column 'annotator_results' total number of results returned by the annotator
- column 'precision' calculated precision
- column 'recall' calculated recall
- column 'F1' calculated F1 Score
- column 'total_words' total words in the publication

linnaeus_results is a folder that contains output from the LINNAEUS tool. Each file is the output from one text file.

taxonerd_results is a folder that contains output from the TaxoNERD tool. Each file is the output from one text file.

testing is a folder that contains the calculated performance for each tool: GNFinder, LINNAEUS, Quaesitor, and TaxoNERD. Every file has the same structure.
- column 'data_package' number identifier for the data package for the publication
- column 'true_positives' number of true positives. The last row is the sum of the column.
- column 'false_positives' number of false positives. The last row is the sum of the column.
- column 'false_negatives' number of false negatives. The last row is the sum of the column.
- column 'returned_results' total number of results returned by GNFinder. The last row is the sum of the column.
- column 'annotator_results' total number of results returned by the annotator. The last row is the sum of the column.
- column 'precision' calculated precision. The last row is the precision calculated from the sums of each column.
- column 'recall' calculated recall. The last row is the recall calculated from the sums of each column.
- column 'F1' calculated F1 Score. The last row is the F1 Score calculated from the sums of each column.
- column 'total_words' total words in the publication. The last row is the sum of the column.

all_pubs.txt is a tab delimited list of all the data package identifiers and their corresponding publication DOIs
- column 'data_package_id' number identifier for the data package
- column 'publication_doi' DOI for publication in data package

quaesitor_results.txt is a tab delimited file containing the results from the Quaesitor too. 
- column 'data_package' number identifier for the data package for the publication
- column 'quaesitor_results name returned by Quaesitor for the publication in the data package

testing_pubs.txt  is a tab delimited list of the data package identifiers and their corresponding publication DOIs for the data packages that were used to test LINNAEUS, GNFinder, TaxoNERD, and Quaesitor
- column 'data_package_id' number identifier for the data package
- column 'publication_doi' DOI for publication in data package


