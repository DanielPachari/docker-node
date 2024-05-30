# Usar la imagen oficial de Node.js
FROM node:14

# Crear un directorio de trabajo
WORKDIR /usr/src/app

# Copiar package.json y package-lock.json
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto en el que la aplicación escuchará
EXPOSE 3000

# Comando para correr la aplicación
CMD ["npm", "start"]
