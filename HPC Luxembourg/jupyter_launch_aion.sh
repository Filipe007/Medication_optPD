#!/bin/bash -l
#SBATCH -J Jupyter_     # Name of the job
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH -c 128                # Cores assigned to each tasks
#SBATCH --time=0-10:00:00     # Time how long to run 10h in this case. For students max run time 48h
#SBATCH -p batch              # Partiton  https://hpc.uni.lu/old/users/docs/slurm.html
#SBATCH --mail-user ******@student.uni.lu       # Optional if you want to be notified to add your e-mail address
#SBATCH --mail-type BEGIN,END,FAIL          # Optional if you want to be notified

module load lang/Python

python -m venv jupyter_env
source jupyter_env/bin/activate
python -m pip install --upgrade pip
python -m pip install jupyter ipykernel
python -m ipykernel install --sys-prefix --name jupyter_env


echo "== Starting run at $(date)"
echo "== Job ID: ${SLURM_JOBID}, Task ID: ${SLURM_ARRAY_TASK_ID}"
echo "== Node list: ${SLURM_NODELIST}"
echo "== Submit dir. : ${SLURM_SUBMIT_DIR}"

jupyter notebook --ip $(hostname -i) --no-browser  &
pid=$!
sleep 5s
jupyter notebook list
jupyter --paths
jupyter kernelspec list
echo "Enter this command on your laptop: ssh -p 8022 -NL 8888:$(hostname -i):8888 ${USER}@access-aion.uni.lu" > notebook.log
wait $pid	