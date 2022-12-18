torchrun \
    --nproc_per_node 4 \
    --nnodes=1 \
    --node_rank=0 \
    --master_addr="10.28.1.31" \
    --master_port=12355 \
    run_clip.py \
    --output_dir ./clip-roberta-finetuned \
    --model_name_or_path ./clip-roberta \
    --data_dir /data2/xyzhao/coco \
    --dataset_name ydshieh/coco_dataset_script \
    --dataset_config_name=2017 \
    --image_column image_path \
    --caption_column caption \
    --remove_unused_columns=False \
    --do_train  --do_eval \
    --per_device_train_batch_size="64" \
    --per_device_eval_batch_size="64" \
    --learning_rate="5e-5" --warmup_steps="0" --weight_decay 0.1 \
    --max_train_samples 1000 \
    --dataloader_drop_last True