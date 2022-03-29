python3 ../../../main_pretrain.py \
    --dataset imagenet100 \
    --backbone vit_tiny \
    --data_dir ~/workspace/datasets/ \
    --train_dir imagenet-100/train \
    --val_dir imagenet-100/test \
    --max_epochs 200 \
    --gpus 0,1 \
    --accelerator gpu \
    --strategy ddp \
    --sync_batchnorm \
    --precision 32 \
    --optimizer adamw \
    --scheduler warmup_cosine \
    --lr 0.005 \
    --warmup_start_lr 1e-6 \
    --classifier_lr 3e-3 \
    --weight_decay 1e-4 \
    --batch_size 64 \
    --num_workers 4 \
    --brightness 0.4 \
    --contrast 0.4 \
    --saturation 0.2 \
    --hue 0.1 \
    --gaussian_prob 1.0 0.1 \
    --solarization_prob 0.0 0.2 \
    --num_crops_per_aug 1 1 \
    --name vit_tiny_res18 \
    --project Imagenet100-200ep \
    --entity kaistaim2 \
    --wandb \
    --save_checkpoint \
    --method dino \
    --proj_output_dim 256 \
    --proj_hidden_dim 2048 \
    --num_prototypes 65536 \
    --norm_last_layer false \
    --base_tau_momentum 0.9995 \
    --final_tau_momentum 1.0 \
    --knn_eval \
