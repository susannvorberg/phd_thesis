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

Despite continuous efforts in automating experimental structure determination and systematic target selection in structural genomics projects, the gap between the number of known amino acid sequences and solved 3D structures for proteins is constantly widening.
While DNA sequencing technologies are advancing at an extraordinary pace, thereby constantly increasing throughput while at the same time reducing costs, protein structure determination is still labour intensive, time-consuming and expensive.
This trend illustrates the essential importance of complementary computational approaches in order to bridge the so called sequence-structure gap.

<!--
Only about half the known protein families are eligible for template-based structure prediction by which the protein structure is inferred from experimentally solved structures of homologous proteins.
The other half can theoratically be addressed by *de novo* structure prediction methods that try to identify the native protein structure without prior information.
However, in practice these approaches are limited by the immense computational costs required to search the conformational space for the lowest-energy conformation.
-->
<!--
With the development of sophisticated statistical models the formerly high false positive rate of predictions could be reduced.
-->

About half of the protein families lack structural annotation and therefore are not amenable to template-based prediction techniques that infer protein structure from homologs.
They can be addressed by *de novo* structure prediction approaches that in practice are often limited by the immense computational costs required to search the conformational space for the lowest-energy conformation.
Increased accuracies of predicted residue-residue contacts have extended the applicability of *de novo* methods to larger proteins by sufficiently constraining the overall protein fold.
Residue-residue contact prediction is based on the idea that selection pressure on protein structure and function can lead to compensatory mutations between spatially close residues.
This leaves an echo of correlation signatures that can be traced down from the evolutionary record.
Despite the immense success of contact prediction methods, there are several challenges.
The most evident limitation lies in the requirement of deep alignments, which excludes the majority of protein families without associated structural information that are the focus for contact guided *de novo* structure prediction.
The heuristics applied by current contact prediction methods pose annother challenge, since they omit available coevolutionary information.

This work presents two different approaches for addressing the limitations of contact prediction methods.
Instead of inferring evolutionary couplings by maximizing the pseudo-likelihood, I maximize the full likelihood of the statistical model for protein sequence families.
This approach performed with comparable precision up to minor improvements over the pseudo-likelihood methods for protein families with low numbers of sequences.
A Bayesian statistical approach has been developed that provides posterior probability estimates for residue-residue contacts and eradicates the use of heuristics.
The full information of coevolutionary signatures is exploited by explicitely modelling the distribution of statistical couplings that reflects the nature of residue-residue interactions.
Surprisingly, the posterior probabilities do not directly translate into more precise predictions than obtained by pseudo-likelihood methods combined with prior knowledge.
However, the Bayesian framework offers a statistically clean and theoretically solid treatment for the contact prediction problem.
The flexible and transparent framework provides a convenient starting point for further developments, such as integrating more complex prior knowledge or extending the model towards the derivation of probability estimates for residue-residue distances.








# Acknowledgements {-}


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


\tableofcontents
\addcontentsline{toc}{chapter}{Table of Contents}


\mainmatter \setcounter{page}{1}