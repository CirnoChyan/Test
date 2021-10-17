INPUT_TRAIN_FILE=$1/train.json
INPUT_DEV_FILE=$1/dev.json

OUTPUT_DIR=$2 #this dir must the same as the data_dir in train.sh

mkdir ${OUTPUT_DIR}
tokenizer_path='../bert-base-chinese-model/'

python data_process.py \
    --tokenizer_path=$tokenizer_path \
    --full_data=${INPUT_TRAIN_FILE} \
    --example_output=${OUTPUT_DIR}/train_example.pkl.gz \
    --feature_output=${OUTPUT_DIR}/train_feature.pkl.gz \

python data_process.py \
    --tokenizer_path=$tokenizer_path \
    --full_data=${INPUT_DEV_FILE} \
    --example_output=${OUTPUT_DIR}/dev_example.pkl.gz \
    --feature_output=${OUTPUT_DIR}/dev_feature.pkl.gz \


