# README

El ejercicio consiste en la creación de un backend con una API de consulta a la base de datos que se ha proporcionado.

## Descripcion

La API contiene diferentes endpoints que sirven para consumir la data dependiendo de la búsqueda que se haga desde el Frontend. <br/>
La tabla products tiene un CRUD completo y los siguientes endpoints:
- ```products/search?name=<name>```: Retorna una lista de productos que coincidan con el nombre. <br/>
- ```products/order_by_category?category=<category>```: Retorna una lista de productos ordenados por categoría. <br/>

La tabla categories solo tiene un CRUD completo.

la url en producción es: https://shop-api-production.up.railway.app/

para probar la api en local:
- bundle install
- rails s
- curl -X GET http://localhost:3000/products/search?name=PISCO
- curl -X GET http://localhost:3000/products/order_by_category?category_id=1
## requerimientos
- ruby version 2.7.2
- rails version 6.1.4.4
- bundler version 2.2.24


