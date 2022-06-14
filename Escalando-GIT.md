# Grupo-3-Aula-2
Empezando a trabajar en GitHub

# Instalacion de 0
1-Para descargar ir a http://https://git-scm.com/

2-Una vez descargado, ejecutar el instalador. En windows es darle a todo siguiente, 
  pero si queres ir paso a paso viendo hacia que editor se coloca como determinado y otras cosas, podes ir más lento.
  
3-a)Una vez instalado, podes levantar el CMD o Simbolos del Sistema de Windows. 
  Con tecla WINDOWS + R, o desde Inicio->Buscar Programas->"CMD"
  Aqui podemos ejecutar en la consola el comando: 
  ````
  git --version
  ````
  -Para poder ver si se instalo y la versión.
  ````
  git help
  ````
  -Para poder ver los comandos comunes.
  b)Una vez instalado, podemos usar la Bash de GIT, y utlizar los comando antes descriptos. 
# 

# Configuracion Global de GIT
1-Nos identificaremos con los siguientes comandos, desde la terminal CMD o desde la Bash de GIT
  ````
  git config --global user.name “Nombre Apellido"
  ````
  Le damos enter
2-Luego identificamos nuestro email.
  ````
  git config --global user.email “nombre@ejemplo.com”
  ````
3-Y para que ponga los colores
  ````
  git config --global color.ui true
  ````
#

# Creamos una Nueva Carpeta
1-Nombramos la carpeta.

# Desde nuestro Editor de Codigo
1-Abrimos el Editor que tengamos, ej. Visual Studio CODE

2-Podemos arrastrar la carpeta, que creamos, y soltarla dentro de nuestro editor de codigo. 
  O podemos abrir la carpeta, desde la solapa "Archivo"->"Abrir carpeta" 

3-Creamos nuestro archivo .html .css o .js o cualquier otro donde comencemos a editar. 

  Opcional: podemos crear un archivo .gitignore , para que GIT ignore los archivos o carpetas que no querramos guardar.
  Dentro del archivo .gitignore , en la primera linea y siguientes, podemos escribir el archivo que queremos ignorar.
  ej. 
  1   style.css/
  2   funcionalidad.js/
  3   node_modules/
  Guardar cambios.
  La diagonal le dice a GIt que ignorar. Ademas podremos ver en el panel izquierdo como se oscurecen los archivos.

4-Luego de editar, podemos levantar la terminal desde Visual Studio CODE, desde la solapa superior, "Terminal"-> New Terminal.
  Debajo se abre la Terminal, que estará ubicada automaticamente en nuestra carpeta(directorio).
 
# Comandos Basicos
1-Luego de hacer nuestras ediciones de archivos, para iniciar nuestro Repo Local, usamos el siguiente comando
  ````
  git init
  ````
2-Para poder hacer una copia de los archivos de nuestra carpeta.
  ej. index.html
      styles.css
      funcionalidades.js
  Utilizamos el siguiente comando
  ````
  git add .
  ````
  El "add .", hace una copia de todos nuestros archivos.
  
3-Para poder hacer el guardado completo, tenemos que terminar con el siguiente codigo.
  ````
  git commmit -m "Mensaje que queramos poner,ej, coloque h1 y le di estilo genial"
  ````
4- Si borramos accidentalmente algo, como por ej. 
  styles.css
  Podemos usar el comando 
  ````
  git checkout -- .
  ````
  Asi recuperamos el archivo o la carpeta completa.

# Como desplegar desde nuestro Repo Local a Repo Remoto(GitHub)
1-Luego de tener creado nuestra cuenta en GitHub, y crear el nuevo repositorio en GitHub, nos ubimos en la solapa de GitHub "<code>". 
  Tendremos que copiar el comando que estará abajo, y que se parecerá al siguiente:
  ````
  git remote add origin https://github.com/Usuario/RepoRemoto.git
  ````
  Una vez copiado, volvemos a nuestra terminal, que tenemos levantada en Visual Studio CODE y dentro de nuestra carpeta de trabajo.
  y la pegamos en la terminal, y damos enter.
  

  
