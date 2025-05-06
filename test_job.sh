#!/bin/bash
#SBATCH --job-name=T8
#SBATCH --output=Output/job%j.txt
#SBATCH --error=Output/error%j.txt
#SBATCH -N 1
#SBATCH --time=12:00:00
#SBATCH --partition=kimq
#SBATCH --gres=gpu:1
#SBATCH --mem=8G

echo "Activating My custom environment"
source ~/venv/bin/activate

#echo "Running T8 Test"
#python3 tools/train.py configs/pspnet_unet_s5-d16_64x64_40k_drive.py --options model.pretrained=swin_transformer.py [model.backbone.use_checkpoint=True]

echo "Deactivating TensorFlow-2.6.2 environment"
deactivate

echo "Done."