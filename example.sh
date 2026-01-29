set -x
export TRANSFORMERS_NO_CHAT_TEMPLATE=1
python -m metricx24.predict --tokenizer google/mt5-xl --model_name_or_path google/metricx-24-hybrid-xl-v2p6 --max_input_length 1536 --batch_size 1 --input_file ./input.jsonl --output_file ./output.jsonl
python -m metricx24.predict --tokenizer google/mt5-xl --model_name_or_path google/metricx-24-hybrid-xl-v2p6 --max_input_length 1536 --batch_size 1 --input_file ./input.jsonl --output_file ./qe.jsonl --qe
head {output,qe}.jsonl
set +x
