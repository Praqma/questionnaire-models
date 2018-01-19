# Use the engine image for the base
FROM questionnaire-engine:1.0

# Change working directory
WORKDIR /usr/src/app

# Copy the questionnaires into the container's content folder
# COPY <from> <to>
COPY ./content ./content

# Launch application
CMD [ "npm", "start" ]