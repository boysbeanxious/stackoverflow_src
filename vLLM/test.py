from vllm import LLM, SamplingParams

llm = LLM(
    model="/usr/share/d_ollama/.ollama/models/hf_model/Llama-3.2-1B-Instruct",
    tensor_parallel_size=1,
    dtype="auto",
    gpu_memory_utilization=0.3,   # 7GB 정도만 확보 시도
    swap_space=4   ,               # 필요시 CPU RAM 4GB 사용
    max_model_len=8192
)

# 생성 파라미터 설정
params = SamplingParams(temperature=0.7, top_p=0.9, max_tokens=128)

# 프롬프트 실행
outputs = llm.generate(["안녕하세요, 오늘 기분이 어떠세요?"], params)

print(outputs[0].outputs[0].text)