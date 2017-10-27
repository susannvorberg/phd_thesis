---
title: "PhD thesis: residue-residue contact prediction"
author: "Susann Vorberg"
date: "`r Sys.Date()`"
institute: LMU
description: "This is my PhD thesis on residue-residue contact prediction."
github-repo: "susannvorberg/phd_thesis"
bibliography: [~/Documents/work_docs/bibtex_files/library.bib]
link-citations: true
csl: csl/cell-numeric.csl
---

# Summary {-}

Despite continuous efforts in automating experimental structure prediction and systematical target selection in structural genomics projects, the gap between the number of protein sequences and solved protein structures is constantly widening.
High-throughput DNA sequencing technologies are advancing at an extraordinary pace, thereby not only decreasing the amount of time needed to sequence whole genomes but also drastically reducing costs.
By contrast, experimental techniques for structure determination are still labour intensive, time-consuming and very expensive.
This trend illustrates the essential importance of computational approaches that can complement experimental structural biology efforts in order to bridge the sequence-structure gap.

Only about half the known protein families are eligible for template-based structure prediction by which the protein structure is inferred from experimentally solved structures of homologous proteins.
The other half can theoratically be addressed by *de novo* structure prediction methods that try to identify the native protein structure without prior information.
However, in practice these approaches are limited by the immense computational costs required to search the conformational space for the lowest-energy conformation.
Recent advancements in residue-residue contact prediction have enabled the *de novo* prediction of protein structures by sufficiently constraining the overall protein fold.

<!--
With the development of sophisticated statistical models the formerly high false positive rate of predictions could be reduced.
-->
Residue-residue contact prediction is based on the idea that selection pressure on proteins to maintain structure and function can lead to compensatory mutations between spatially neighboring residues, leaving an echo of correlation signatures in the evolutionary record.
Despite the immense success of contact prediction methods, several open challeges need to be addressed to broaden their applicability.
The most evident limitation lies in the requirement of deep alignments that amplify the coevolutionary signal.
Unfortunately, the majority of protein families without associated structural information that comprise interesting targets for contact guided *de novo* structure prediction, have low numbers of homologous sequences.
Furthermore, the current contact prediction methods apply heuristics that leave certain aspects of the available coevolutionary information unexploited.
So far, the heuristics haven proven robust and resisted efforts to replace them.

This work presents two different approaches for improving contact prediction methods.
Instead of inferring the evolutionary couplings by maximizing the pseudo-likelihood, a new approach was developed that maximizes the full likelihood by an approximation to its gradient.
It achieved minor improvements in precision for protein families with low numbers of sequences.
Secondly, a principled Bayesian framework has been developed that provides posterior probability estimates for residue-residue contacts instead of heuristic contact scores.
The full information contained in the underlying statistical model is exploited by explicitely modelling the amino acid preferences in the coevolutionary coupling signal while at the same time accounting for the uncertainty in the data.
Unexpectedly, the comprehensive modelling effort did not carry over to improved precision of the top ranked predictions. 
However, the Bayesian framework not only eradicates the use of heuristics and provides a statistically clean method for predicting contacts, but also offers the possibility for further extensions, such as deriving estimates of the probability distributions of the distances between residue pairs.



# Acknowledgements {-}

I thank the world. 

<!--

I am very grateful to Johannes Söding, for giving me the opportunity to work in his lab, for his supervision and guidance on this fascinating project.
I learned a lot from you, not only analytical and statistical skills, but also about being a scientist and what holds the scientific world together at its core.
Your enthusiasm and your convincing attitude always kept me going.

I also want to thank Julien Gagneur for supervising this thesis together with the other members of my examination board: Franz Herzog, Klaus Förstermann, Karl-Peter Hopfner and Oliver Keppler.  
My thanks goes also to Roland Beckmann who was part of my thesis advisory commitee.
Special thanks goes to Julien who had great and pragmatic ideas that helped to keep the big picture in focus.

My gratitude goes also to the Quantitative Biosciences Munich graduate school.
Foremost to Ulrike Gaul and Erwin Frey for installing this great melting pot of science. 
With QBM's financial support I could visit inspiring conferences that helped me to grow as scientist and maybe even more as a person. 
Additionally, I thank the staff Mara Kieke, Julia Schlehe, Filiz Civril, Markus Hohle and Michael Mende who organized so many great lectures, workshops, and events for us and were always ready to help.

I want to thank my group, the Söding lab, for their support and distraction in- and outside the lab. 
You were more than mere colleagues, you became true friends and made me enjoy coming to work every single day.
In particular to Anja and Mark who stayed, like me, in Munich until the very end.
It will be an honor to shut down the lights in our beloved djungle office together with you.
Thanks a lot, Jessica, for finding the time for proofreading, even when there is no time at all.
My thanks also go to the Gagneur group with whom we shared the office space at the LMU gene center for many years. 
Thanks for your open office doors during my Garching visits whenever I felt I needed company. 

I also want to thank my former coaches, Henrik Lindner and Torsten Kunke, who supported my decision to leave the army and send me on my way to becoming Dr. Susi.
Without you I might still be soaring the skies. 

I want to thank my family for raising me curious and sceptical and therefore having me equipped with fundamental scientific skills. 

Daniel you are the love of my life.

-->

\tableofcontents
\addcontentsline{toc}{chapter}{Table of Contents}


\mainmatter \setcounter{page}{1}