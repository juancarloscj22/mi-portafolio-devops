# Imagen base
FROM node:18-alpine

# Directorio de trabajo
WORKDIR /app

# Copiar package.json e instalar dependencias
COPY package.json ./
RUN npm install --only=production

# Copiar el resto del código
COPY . .

# Puerto expuesto
EXPOSE 3000

# Comando por defecto
CMD ["node", "index.js"]
