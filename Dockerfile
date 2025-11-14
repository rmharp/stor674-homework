FROM pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime
WORKDIR /app
# upgrade pip and install any extras
RUN pip install --no-cache-dir --upgrade pip
COPY compute_bench.py /app/compute_bench.py
# runs the benchmark
CMD ["python", "/app/compute_bench.py"]