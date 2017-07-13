# Introduction

In his Nobel Prize speech in 1973 [@Anfinsen1973] Anfinsen postulated one of the basic principles in molecular biology, which is known as *Anfinsen's dogma*: a protein's native structure is uniquely determined by its amino acid sequence. With certain exceptions, this dogma has proven to hold true for the majority of proteins.

<iframe src="pfam_pdb.html" frameborder="0" allowtransparency="true" width=100% height=600px></iframe>


Ever since, it is regarded as the holy grail of structural bioinformatics [@Anfinsen1973], to realiably predict a protein's structure given only its amino acid sequence. *De-novo* protein structure prediction methods use physical or knowledge based energy potentials to find a protein conformation that minimizes the protein's energy landscape. However, these methods are limited by the complexity of the conformational space and the accuracy of the energy potentials. Regarding the rotational and translational degrees of freedom of the protein chain, the complexity scales with XXX [@Anfinsen1973].

Far more successfull are methods that make use of existing structural information. Since protein structure is conserved stronger than sequence [@Anfinsen1973], the structure of a homologue protein can be used as template to model the target protein. These template-based methods are crucially dependent on sensitive sequence search tools that are able to detect even distantly related proteins. Modern tools, like HHblits[@Anfinsen1973], are able to identify remote homologs sharing as little as 10% sequence identity [@Anfinsen1973]. Of course, the availability of a structural templates poses the main limitation for this methodology. 

Unfortunately, the number of solved proteins structures increases only slowly. X-ray crystallography and $\ac{NMR}$ spectroscopy are the standard methods for structure determination. Recently, $\ac{cryo-EM}$ has been able to solve structures with resolutions up to 2A[citation]. 
There are advantages and disadvantages to all methods. The main disadvantage of \ac{NMR} concerns the limited size of proteins that this technique can solve. 
X-ray crystallography cannot account for conformational flexibility. The conformation of a protein in the unit cell of a crystal must not resemble the native state of a protein. 
The limit of $\ac{cryo-EM}$ lies in the size of proteins.

In constrast, the number of sequenced genomes rises tremendously. With the latest sequencing technologies [examples], it takes only hours to sequence millions of basepaires at low costs [example numbers]. 

The difference in efficiency for determining sequences and structure consequently results in what has been called the sequence-structure gap. The UniProtKB [@TheUniProtConsortium2013], the leading resource for sequence information on the web, contains more than 40 million sequence entries (as of 24 July 2013) [@StatisticsSP],[@statisticsT]. In contrast, the \ac{PDB}  [@Berman2000] grows at a much slower rate and currently contains about 90,000 experimentally solved protein structures \autoref{fig:pdb_prot_growth}.  

[Figure sequence structure gap]

Protein structure determines protein function. Therefore, structural insights are of uttermost importance. They are essential for a detailed understanding of chemical reactions, regulatory processes and transport mechanisms.
They are fundamental for the design of drugs and antibiotics. Moreover structural abnormalities can lead to misfolding and aggregation potentially causing diseases so studying them is pathologically relevant.

Because of the aformentioned trends, is becomes increasingly popular/attractive to tackle *Ansinsens Dogma* and reliably predict protein strutures from sequence alone. 



## Structure Prediction

Despite the knowledge of Anfinsen's postulate, we are not able to reliably predict the structure of a protein from its sequence alone. Generally it is assumed that a protein folds into a unique, well-defined native structure that is near the global free energy minimum (\autoref{fig:folding_funnel}). Levinthal's paradox [@Levinthal1969] describes the complexity of the folding process towards this minimum. It stresses the problem that it is not possible for a protein to exhaustively search the conformational space to get to its native fold. Due to the "combinatorial explosion" of possible conformations, an exhaustive search would take unreasonably long. Hence, it is not a feasible approach for structure prediction to scan all possible conformations. Different approaches have been developed over time to overcome or elude this problem.


### Template based methods

Homology Modelling is applied in the case where homologous proteins with solved structures are available and can be identified via sequence alignments. The underlying assumption for this strategy relates to the fact that structure is more conserved than sequence. That is, if we find a related protein that shows sufficient similarity on the sequence level, we can safely infer that both proteins share a similar structure. Homology Modelling is assumed to yield reliable results when query and target protein share more than 30\% sequence similarity, depending on the sequence length (\textit{safe homology zone}) [@Sander1991}. For proteins sharing less than 30\% sequence similarity, the structure will not necessarily be conserved. Within this \textit{twilight zone} of homology modelling the number of false positives regarding structural similarity explodes [@Rost1999} and other structure prediction methods have to be applied (see \autoref{fig:schneider_sander_HM_threshold}). When a suitable target structure has been identified, the backbone of the model is generated by simply copying the coordinates of the target backbone atoms onto the model. Non-aligned residues due to gaps in the alignment have to be modelled \textit{de-novo}, meaning from scratch. This can be done by a knowledge-based search for suitable fragments in the PDB or by true energy-based \textit{de-novo} modelling. When the backbone is generated, the side chains are modelled, usually by searching rotamer libraries for energetically favoured residue conformations. Finally, the model is energetically optimized in an iterative procedure. Force fields are applied to correct the backbone and side chain conformations [@Gu2009}. By now, many automated homology modelling servers are well-established (Modeller [@Eswar2007}, 3D-Jigsaw [@Bates2001}, SwissModel [@Arnold2006}) which allow more or less manual intervention in the modelling process. 


Homology modeling is by far the most successful approach to structure prediction. 
It is applied in the case where homologous proteins with solved structures are available and can be identified via sequence alignments. 
The underlying assumption for this strategy relates to the fact that structure is more conserved than sequence.
That is, if we find a related protein that shows sufficient similarity on the sequence level, we can safely infer that both proteins share a similar structure.
Several automated homology modelling servers are well-established , e.g. Modeller \citep{Eswar2007}, 3D-Jigsaw \citep{Bates2001} or SwissModel \citep{Arnold2006}.

 The limits of homology modeling lie in the identification of suitable templates. As can be seen in \autoref{fig:pfam}, most protein families have no known structure that can be used for homology modeling. In these cases, other techniques, like fold recognition or ab initio predictions might succeed.
         
Fold Recognition describes the inverse folding problem \citep{Bowie1993}: instead of finding the compatible structure for a given sequence, one tries to find sequences that fit onto a given structure. Whether the query sequence fits a structure from the database is not determined by sequence similarities but rather energetic or environment specific measures. Thus, fold recognition methods are able to recognize structural similarity even in the absence of sequence similarity. The rationale basis for this strategy is the assumption that the fold space is limited. It has been found that seemingly unrelated proteins often adopt similar folds. This might be due to divergent evolution (proteins are related, but homology cannot be detected at the corresponding sequence level) or convergent evolution (functional requirements lead to similar folds for unrelated proteins) \citep{Gu2009}. Early approaches include profile based methods. Here, the structural information of the protein is encoded into profiles, which subsequently are aligned to the sequences \citep{Bowie1991,Fischer1996,Ouzounis1993}. Advanced techniques are known as  "threading" techniques, describing the process of threading a sequence through a structure and determining the optimal fit via energy functions. \citep{Jones1992,Jones1998,Lemer1995}


         
Use a homologue protein structure as template. Only possible if a homologue protein structure can be detected (usually via sequence profile searches). 

Threading techniques try to identify structural elements that fit to the sequence. 

### Template-free structure prediction

Ab initio or de-novo modeling techniques implement Anfinsen’s Dogma most closely in mimicking the folding process based only on physico-chemical principles.
Energy functions (physical or knowledge-based) are used to describe the folding landscape and are minimized to arrive at the global energy minimum corresponding to the native conformation. 
Since the native conformation can be found near the global energy minimum of the folding landscape, energy functions (physical or knowledge-based) have been developed to describe this landscape.
With respect to the idea of a folding funnel, the energy function is minimized to mimic the folding process that automatically leads to the global minimum.
 Again, there exist numerous webservers that combine energy minimization,  threading techniques and fragment-based approaches, e.g. Rosetta \citep{Simons1999}, Tasser \citep{Zhang2004}, Touchstone II \citep{Zhang2003}.

Drawbacks of these methods are the time requirements due to the computational complexity of energy functions as well as their inaccuracy. 
    
    

Minimize a physical or knowledge-based energy function for the protein. This has huge complexity due to large conformational space that needs to be sampled. 

### contact assisted denovo predictions

Structure Reconstruction from true contacts maps works well. Even a small number of contacts is sufficient to reconstruct the fold of the protein. Distance maps work even better. 

What is the optimal distance cutoff to define a contact? 
Duarte et al 2010: between 8 and 12A
Dyrka et al 2016
Konopka et al 2014
Sathyapriya et al 2009

Many studies that successfuly predict structures denovo with the help of predicted contact.

## Contact Prediction

### Correlated mutations

contact prediction methods aim to identify correlated mutations from an  alignment of homologue protein sequences. 
main assumption is that two interacting amino acid residues are coevolving: mutation of one of the two residues can be compensated by mutation of the other residue

### Benchamrking methods

- threshold for defining a contact: 
usually distance between $C_\beta$ atoms ($C_\alpha$ for Glycin) < 8 angstrom. 

- PPV: TP/(FP+TP)
fraction of correct predictions among all predictions

### Pitfalls

Coevolution of residues can be mediated by molecules (e.g zinc ions) and will not always imply spatial proximity in structure. Transitivity can lead to correlation signals. Phylogenetic bias can also lead to correlations. Sampling bias needs to be taken into account. 


## State of the Art CP

### Local methods
MI and correlation measures suffer from transitivity of correlations

### Direct coupling analysis
Can disentangle direct and indirect correlations.

Infer parameters of a maximum entropy model, more specifically a Potts model (statistical physics) aka markov random fiels (computer science).
Likelihood function is convex, but Maximum Likelihood inference of model is infeasible: 
Likelihood function needs to be reevaluated at each iteration during optimization but partition function term sums over 20^L sequences.


Many approximations:
- mean field (Marks), Psicov
- pseudo-likelihood 
- belief-propagation (accurate but slow)

### Computing contact map from coupling matrix

- direct information
- frobenius norm

average product correction (also for MI)

(benchmark plot for localmethods + ccmpred)

### Meta-predictors

- combining different approaches
 - jones et al: overlap between methods but also many unique predictions
- machine learning methods incorporate sequence-derived features:
  - secondary structure predictions
  - solvent accessibilty
  - contact potentials
  - msa properties
  - pssms 
  - physico-chemcial properties of amino acids

However, Meta-predictors will improve if basic methods improve. Ultra-deep learning paper identifies coevolution features as crucial feature. 


