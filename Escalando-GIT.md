# Grupo-3-Aula-2

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

Opcional:
  -Para que Git trabaje de manera predeterminada con el editor Visual Studio CODE:
  ````
  git config --global core.editor "code --wait"
  ````


# Como Ver la Configuracion Global de GIT, en GIT bash
1-Utilizaremos el siguiente comando:
  ````
  git config --list
  ````
  Opcional:
  Tambien podemos utilizar el siguiente comando, pero que se abrirà en nuestros editores de codigo
  ````
  git config --global -e
  ````


# Ver mas configuraciones de GIT
1-Utilizaremos el siguiente codigo
  ````
  git config -h
  ````


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


# ¿Dònde guardar Git la informacion de cada cambio que hacemos?
1-Una vez inicializado nuestro repo en la Carpeta que hayamos creado(ej.MiWeb), Git crea dentro de Miweb, una Carpeta Oculto. Para abrirla y ver como 
  funciona Git, podemos abrir la Git BASH, dentro de MiWeb.
  Con el comando: 
  ```
  ls -l
  ````
  podremos listar los archivos que tenga nuestra Carpeta Creada, la cual no tendra nada, en un principio, pero entonce Donde esta la Carpeta Oculta?,
  Utiliza el siguiente comando:
  ```
  ls -a
  ````
  Podràs ver en el resultado la Carpeta Oculta con el nombre: .git
  Para poder entrar a ella,
  utiliza el siguiente comando
  ```
  cd .git/
  ````
  Ya estaras dentro de la Carpeta Oculta de Git, allì podrà ver varias cosas interesante.


# Como desplegar desde nuestro Repo Local a Repo Remoto(GitHub)
1-Luego de tener creado nuestra cuenta en GitHub, y crear el nuevo repositorio en GitHub, nos ubimos en la solapa de GitHub "code". 
  Tendremos que copiar el comando que estará abajo, y que se parecerá al siguiente:
  
  ````
  git remote add origin https://github.com/Usuario/RepoRemoto.git
  ````
  Una vez copiado, volvemos a nuestra terminal, que tenemos levantada en Visual Studio CODE y dentro de nuestra carpeta de trabajo.
  y la pegamos en la terminal, y damos enter.
  

# ¿Còmo ver el historial de COMMITS?
1)utilizamos el siguiente comando:
  ````
  git log
  ````
  Opcional: para ver el historial mas corto,(sin nombre de autor o fecha) 
  podemos utilizar el siguiente comando:
  ````
  git log --oneline
  ````
  
 
# Para clonar un repositorio de GitHub

1) En GitHub vamos al repositorio que queremos clonar. Vamos a la solapa COODE(En verde), y copiamos
   la direccion HTTPS://...

2) creamos una carpeta nueva en nuestra computadora.ej
 
3) Hacemos click derecho dentro de la carpeta nueva, y seleccionamos Git Bash Here.
   Se abrirá la CONSOLA DE GIT, que podrás ver que se encuentra ubicada dentro de la carpeta nueva.

4) Dentro de la consola de git 
   utilizaremos el siguiente comando para clonar el repositorio remoto(GitHub)
   ````
   git clone [url]
   ````
   y damos enter. Listo se clono el repo a nuestra computadora.

5) Podremos ver en la carpeta los mismo archivos que veiamos en el Repositorio Remoto(GitHbu).


# Para Crear una Rama y poder trabajar

1) Para poder crear una nueva branch(Rama), volvemos a la Git Bash, que aun esta ubicada en nuestra
   carpeta
   y utilizamos el siguiente comando:
   ````
   git branch [elNombreDeLaRamaODeLoQueHAgamos]
   ````
   y damos enter. Listo se creó una nueva rama.

   Pero podemos ver que aún estamos en la MAIN, por lo que tendremos que posicionarnos en la branch recien
   creada.  
   Utilizaremos el siguiente comando para posicionarnos en la branch:
   ````
   git checkout [elNombreDeLaRamaODeLoQueHAgamos]
   ````
   y damos enter. Listo nos ubicamos en la rama. El mismo comando nos permite volver a la Main.
   Podemos ver que cambio de MAIN a [elNombreDeLaRamaODeLoQueHAgamos].
   A trabajar  nuestro editor de codigo o ide!!
   Podemos crear nuevos arhivos para trabajar.
   No cerremos la GIT BASH, la seguiremos usando seguidamente.
   
   Opcional: Tambièn podemos crear una rama y posicionarnos directamente con el siguiente comando:
   ````
   git branch -b [elNombreDeLaRamaODeLoQueHAgamos]
   ````


#  Verificar el estado de nuestros archivo, luego de trabajar en nuestro editor o ide, y mandar nuestro Commit

1) Al trabajar siempre guardamos con Ctrl + S, o vamos a la solapa Archivo Guardar, pero necesitamos guardar
   nuestros camibios en Git.
   Por eso volvemos a levantar la GIT BASH dentro de nuestra carpeta
   Utilizamos el siguiente comando que nos dira que hicimos:
   ````
   git status
   ````
   Podremos ver como estan los archivos que trabajamos.Nos dirá los que hemos modificado.
   Aparecerá probablemente en Rojo.
   
   Opcional: Podemos utilizar el comando corto de status:
   ````
   git status -s
   ````

2) Para guardar los cambios que hicimos en GIT, y posteriormente subirlo al Repositorio Remoto(GitHub)
   primero tenemos que mandar los archivos modificados, al STAGING AREA(digamos En proceso...), 
   utilizando el siguiente comando:
   ````
   git add .
   ````
   Este comando copia TODOS los archivos que hayamos creado.Es el menos recomendado utilizarr a menos que subamos pocos archivos. 
   Tambien podemos utilizar el comando
   ````
   git add [archivosQueHayamosCreado]
   ````
   Este comando copia SOLO  el archivos que queremos guardar.Es el más recomendado de utlizar.
   También podemos utilizar el comando:
   ````
   git add .css
   ````
   Para agregar TODOS los archivos con Extension .css.
   Para agregar Más de un archivo, utilicemos el siguiente comando:
   ````
   git add [archivo.txt] [archivo.txt] [archivo.txt] [archivo.txt]
   ````

3) Volvemos a verificar con:
   ````
   git status
   ````
   Podremos ver que los archivos modificados, estarán en Verde(en la STAGING AREA)
   
3)a-Para poder ver los cambios de nuestro archivo, de manera grafica, utilicemos el siguiente comando:
   ````
   git diff
   ````

4) Para culminar, y pasar de la STAGING AREA(En proceso...), utilizamos el siguiente comando:
   ````
   git commit -m "MensajeDeLoQueSeHizo-Primer commit de mi nueva Rama"
   ````
   Y si Guardamos y le dijimos a GIT "Esta listo para subir al Repositorio Remoto"
   Como te darás cuenta aún estamos en nuestro Repositorio Local.

  
# Como deshacer un cambio, que se encuentre en la Stage area
1) Habiendo previamente realizado el comando:
   ````
   git add archivo.txt
   ````
   por lo tanto enviando el archivo a la Stage area, podemos traerlo hacia atras con el comando:
   ````
   git restore --staged archivo.txt
   ````


# Enviamos al Repositorio Remoto(GitHub)

1) Antes de Enviar, necesitamos ver si nuestro compañeros han realizado alguna actualizacion 
   en el Repositorio Remoto.
   Desde nuestra GIT BASH. utilizamos el siguiente comando:
   ````
   git pull origin main
   ```` 
   Podremos ver si hubo algun cambio o no.

2) Ahora damos le siguiente comando para subir todo lo que trabajamos en nuestra rama, a nuestro Repositorio Remoto, por Primera Vez,(incorporamos nuestra
   rama(branch)al repo).
   ````
   git push --set-upstream origin [elNombreDeLaRamaODeLoQueHAgamos]
   ````
   Opcional: Si no es nuestra Primera Vez, porque en nuestro repositorio Remoto ya se encuentra actualizada nuestra rama(branch), podemos usar el comando simple:
   ````
   git push
   ````
3) Podremos ver en GitHub, en nuestro Repo, el Main. Para ver la rama que subimos tenemos que cambiar de Main, 
   haciendole CLick, veremos en el desplegable [elNombreDeLaRamaODeLoQueHAgamos]


# Como unir una Branch al Main en el Repositorio Remoto(GitHub)

1) Haremos un merge
   Para esto, en GitHub, ubicamos la solapa Pull Request y entramos.
   
2) Ubicamos New Pull Request.

3) Seleccionamos la Main y la branch. Podremos ver los cambios que se hicieron al archivo.

4) Create Pull Request y vamos creando, podremos darle titulo y descripcion.

5) En el procesos se verificará que no haya conflictos.

6) Les damos Merge pull request.

7) Listo se fucionó la rama, y se cerro. Podemos ver que nos permite borrar la rama, no es recomendable hacerlo
   y asi poder seguir trabando en ella. 

 
# Como Ver las Branch que tenemos en git

1) Dentro de nuestra carpeta abrimos la GIT BASH.

2) Con el siguiente comando podemos ver las ramas o la main:
  ````
   git branch
   ````


# Como Renombrar la Branch en git

1) Utilizaremos el siguiente comando en la GIT BASH
   ````
   git branch -m [NOMBRE DE LA RAMA VIEJA] [NOMBRE NUEVO PARA LA RAMA]
   ````
   Alternativa:
   ````
   git branch --move [NOMBRE DE LA RAMA VIEJA] [NOMBRE NUEVO PARA LA RAMA]
   ````


 # Como Eliminar una Branch en git
 
 1) Antes de eliminar la rama, tienes que estar fuera de ella, sino git no te permitirá hacerlo. Recuerda que con git checkout
 
 2) Utilizaremos el siguiente comando:
    ````
    git branch -d [NOMBRE DE LA RAMA A ELIMINAR] 
    ````
    Alternativa:
    ````
    git branch --delete [NOMBRE DE LA RAMA A ELIMINAR] 
    ````


# Mas ayuda para las Branch en git

1) Utilizaremos el siguiente comando:
   ````
    git help brach
    ```` 
  
   
   



  
