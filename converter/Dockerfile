FROM python:3.10
WORKDIR /app
RUN pip install transformers safetensors onnx onnxruntime flask
COPY convert_model.py .
COPY server.py .
CMD ["python", "server.py"]
