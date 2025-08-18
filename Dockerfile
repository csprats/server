# Usa la imagen oficial de Node.js, versión 18
FROM node:18

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de configuración
COPY package*.json ./

# Instala todas las dependencias
RUN npm install

# Copia el resto del código de la aplicación
COPY . .

# Comando final para iniciar el servidor
CMD ["npm", "run", "server"]