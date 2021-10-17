bert_dir='../bert-base-chinese-model/'
python run_cail.py \
    --name train_v1 \
    --bert_model $bert_dir \
    --data_dir proc_data \
    --batch_size 2 \
    --eval_batch_size 32 \
    --lr 1e-5 \
    --gradient_accumulation_steps 1 \
    --epochs 10 \

date
