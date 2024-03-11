#!/bin/bash -l 
#SBATCH --mem=500M 
#SBATCH --time=00:05:00 
#SBATCH -o /home/springnuance/reinvent-hitl/Chemists-Component/./results/Task2_demo_thompson_25-02-2024_seed_1718/./loop0/slurm/out_1718_sampling_%a.out
#SBATCH --array=0-10

module purge
module load anaconda
source activate ../../miniconda3/envs/cc_env_reinvent

config_index=$(($SLURM_ARRAY_TASK_ID*1))
conf_filename="/home/springnuance/reinvent-hitl/Chemists-Component/./results/Task2_demo_thompson_25-02-2024_seed_1718/./loop0/config_t${config_index}_sampling.json"
srun python ../Reinvent/input.py $conf_filename
