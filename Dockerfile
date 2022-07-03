# Extend the official Rasa SDK image
FROM rasa/rasa-sdk:2.8.7

# Use subdirectory as working directory
WORKDIR /app

# Copy any additional custom requirements, if necessary (uncomment next line)
# COPY actions/requirements.txt ./

# Change back to root user to install dependencies
USER root

# Install extra requirements for actions code, if necessary (uncomment next line)
# RUN pip install -r requirements.txt

# Copy actions folder to working directory
COPY ./data /app/data


# By best practices, don't run the code with root user
USER 1001
# # Extend the official Rasa SDK image
# FROM rasa/rasa-sdk:2.8.7

# # Use subdirectory as working directory
# WORKDIR /app

# # Copy any additional custom requirements, if necessary (uncomment next line)
# COPY actions/requirements.txt ./

# # Change back to root user to install dependencies
# USER root

# # Install extra requirements for actions code, if necessary (uncomment next line)
# RUN pip install -r requirements.txt

# # Copy actions folder to working directory
# COPY ./actions /app/actions

# # By best practices, don't run the code with root user
# USER 1001