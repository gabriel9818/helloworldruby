# Usar una imagen base de Ruby
FROM ruby:3.3.6

# Instalar dependencias necesarias
WORKDIR /app
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copiar el resto de los archivos del proyecto
COPY . .

# Exponer el puerto en el que la aplicación escuchará
EXPOSE 4567

# Ejecutar la aplicación Ruby
CMD ["ruby", "app.rb"]