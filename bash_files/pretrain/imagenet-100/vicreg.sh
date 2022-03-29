python3 ../../../main_pretrain.py \
    --dataset imagenet100 \
    --backbone resnet18 \
    --data_dir ~/workspace/datasets/ \
    --train_dir imagenet-100/train \
    --val_dir imagenet-100/val \
    --max_epochs 200 \
    --gpus 0,1 \
    --accelerator gpu \
    --strategy ddp \
    --sync_batchnorm \
    --precision 16 \
    --optimizer sgd \
    --lars \
    --grad_clip_lars \
    --eta_lars 0.02 \
    --exclude_bias_n_norm \
    --scheduler warmup_cosine \
    --lr 0.3 \
    --weight_decay 1e-4 \
    --batch_size 128 \
    --num_workers 4 \
    --dali \
    --min_scale 0.2 \
    --brightness 0.4 \
    --contrast 0.4 \
    --saturation 0.2 \
    --hue 0.1 \
    --solarization_prob 0.1 \
    --num_crops_per_aug 2 \
    --name vicreg_res18 \
    --entity kaistaim2 \
    --project Imagenet100-200ep \
    --wandb \
    --save_checkpoint \
    --method vicreg \
    --proj_hidden_dim 2048 \
    --proj_output_dim 2048 \
    --sim_loss_weight 25.0 \
    --var_loss_weight 25.0 \
    --cov_loss_weight 1.0 \
    --knn_eval \
