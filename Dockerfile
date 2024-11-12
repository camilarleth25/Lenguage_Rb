# Usa una imagen oficial de Ruby como base
FROM ruby:3.3

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo Gemfile y Gemfile.lock al contenedor
COPY Gemfile Gemfile.lock ./

# Instala las dependencias
RUN bundle install

# Copia el resto del código de la aplicación al contenedor
COPY . .

# Expone el puerto 8080
EXPOSE 8080

# Comando para ejecutar la aplicación
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
