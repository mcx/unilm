accelerate launch train_textdiffuser2_t2i_full_angle.py \
    --pretrained_model_name_or_path="runwayml/stable-diffusion-v1-5" \
    --train_batch_size=18 \
    --gradient_accumulation_steps=4 \
    --gradient_checkpointing \
    --mixed_precision="fp16" \
    --num_train_epochs=6 \
    --learning_rate=1e-5 \
    --max_grad_norm=1 \
    --lr_scheduler="constant" \
    --lr_warmup_steps=0 \
    --output_dir="diffusion_experiment_result" \
    --enable_xformers_memory_efficient_attention \
    --dataloader_num_workers=8 \
    --index_file_path='/path/to/train_dataset_index.txt' \
    --dataset_path='/path/to/laion-ocr-select/' \
    --granularity=128 \
    --coord_mode="ltrb" \
    --max_length=77 \
    --resume_from_checkpoint="latest"