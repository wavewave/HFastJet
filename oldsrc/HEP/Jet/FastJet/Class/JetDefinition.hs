{-# LANGUAGE EmptyDataDecls #-}

module HEP.Jet.FastJet.Class.JetDefinition where

data Strategy = N2MinHeapTiled 
              | N2Tiled
              | N2PoorTiled
              | N2Plain
              | N3Dumb
              | Best 
              | NlnN
              | NlnN3pi
              | NlnN4pi
              | NlnNCam4pi
              | NlnNCam2pi2R 
              | NlnNCam
              | PluginStrategy

data JetAlgorithm = KTAlgorithm
                  | CambridgeAlgorithm
                  | AntiKTAlgorithm 
                  | GenKTAlgorithm
                  | CambridgeForPassiveAlgorithm
                  | GetKTForPassiveAlgorithm 
                  | EEKTAlgorithm
                  | EEGenKTAlgorithm 
                  | PluginAlgorithm

data RecombinationScheme = EScheme
                         | PTScheme
                         | PT2Scheme
                         | ETScheme
                         | ET2Scheme
                         | BIPTScheme
                         | BIPT2Scheme
                         | ExternalScheme

data ClusterSequence

data JetDefinition

data Recombiner

data DefaultRecombiner 

data Plugin 

