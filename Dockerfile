FROM public.ecr.aws/lambda/python:3.12

# Copy requirements.txt
COPY requirements.txt ${LAMBDA_TASK_ROOT}

#Install the specified packages
RUN pip install -r requirements.txt

# Copy the function code
COPY lambda_function.py ${LAMBDA_TASK_ROOT}

# Set the command to your handler 
CMD [ "lambda_function.lambda_handler"]