python ./src/run.py \
        -model=text_only_bart \
        -train_src_path=./data/summary_train.csv \
        -train_tgt_path=./data/summary_train.csv \
        -val_src_path=./data/summary_val.csv \
        -val_tgt_path=./data/summary_val.csv \
        -test_src_path=./data/summary_test.csv \
        -test_tgt_path=.data/summary_test.csv \
        -image_feature_path=./dataset/video_action_features/ \
        -val_save_file=./evaluation/temp_valid_file \
        -test_save_file=./evaluation/results/summaries.txt \
        -log_name=Bart_text_only \
        -gpus='0,1' \
        -batch_size=4 \
        -learning_rate=3e-5 \
        -scheduler_lambda1=10 \
        -scheduler_lambda2=0.95 \
        -num_epochs=100 \
        -grad_accumulate=5 \
        -max_input_len=512 \
        -max_output_len=64 \
        -max_img_len=256 \
        -n_beams=5 \
        -random_seed=0 \
        -do_train=True \
        -do_test=False \
        -limit_val_batches=1 \
        -val_check_interval=1 \
        -img_lr_factor=5 \
        -checkpoint=None


find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf