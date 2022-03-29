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
    --num_workers 4 \
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
    --dali \
    --brightness 0.4 \
    --contrast 0.4 \
    --saturation 0.2 \
    --hue 0.1 \
    --gaussian_prob 1.0 0.1 \
    --solarization_prob 0.0 0.2 \
    --num_crops_per_aug 1 1 \
    --name barlow_res18 \
    --entity kaistaim2 \
    --project Imagenet100-200ep \
    --wandb \
    --save_checkpoint \
    --scale_loss 0.1 \
    --method barlow_twins \
    --proj_hidden_dim 2048 \
    --proj_output_dim 2048 \
    --knn_eval \
