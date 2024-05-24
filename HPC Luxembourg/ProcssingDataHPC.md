# High Performance Computing (HPC) 

Most generally refers to the practice of aggregating computing power in a way that delivers much higher performance 
than one could get out of a typical desktop computer or workstation in order to solve large problems in science, 
engineering, or business

## Accessing the HPC Platform
https://ulsurvey.uni.lu/index.php/723213?lang=en

## ULHPC price list
https://hpc-docs.uni.lu/policies/usage-charging/

## Computational resources used
Command line:  salloc -p interactive --qos debug -C batch --ntasks-per-node 28 -t 02:00:00 bash -c 'ssh -X $(scontrol show hostnames | head -n 1)' 
* Cluster: iris 
* Type of node: regular
* Partition: interactive
* Cores per node: 28
