# De alpine versie voor de nieuwe opbouw van de Dockerfile
FROM node:20-alpine

# Stel de poort in waarop de applicatie draait
EXPOSE 3000

# Stel de werkdirectory in binnen de container
WORKDIR /app

# Kopieer de package.json en yarn.lock bestanden naar de werkdirectory
COPY package.json yarn.lock ./

# Installeer de afhankelijkheden via Yarn
RUN yarn install --frozen-lockfile

# Kopieer de rest van de applicatie naar de container
COPY . .

# Start de applicatie
CMD ["yarn", "start"]