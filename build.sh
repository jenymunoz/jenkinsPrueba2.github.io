#!/usr/bin/bash

##########################################################################################
echo "Iniciando tarea 01"
echo "comprobando si existe el archivo w3.css"

if [ -e w3.css  ]; then
	echo "El archivo existe. No es necesario descargar"
else
	echo "El chivo no existe"
	echo "Iniciando descarga"
	wget https://www.w3schools.com/w3css/4/w3.css
		if [ $? = 0 ]; then
			echo "Descarga correcta"
			echo $?
		else
			echo "Descarga incorrecta."
			echo "descargando"
			echo $?
			exit 1
		fi
fi

echo "Tarea terminada" $?

if [ -e w3.css ]; then
	echo "El archivo existe"
	$?
else
	echo "El archivo no existe. Por ende no se pudo descargar, revisa el código"
	echo "Tarea terminada"
	$?
	exit 1
fi
echo "Tarea 01 terminada" $?

##############################################################################################

echo "Iniciando tarea 02"
	echo "creando archivos.html."
	mkdir cabecera.html
	mkdir cuerpo.html
	mkdir pie.html
	mkdir index.html
	ls
echo "Tarea 02 terminada"

##############################################################################################

echo "Iniciando tarea 03"
##############################################################################################
echo "Pasando código a cabecera.html"
cat << EOF >> cabecera.html
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="Stylesheet" href="w3.css">
    <title>Cabecera</title>
</head>
<body>
    <header class='w3-blue'>
        <nav>
            <p><a href="index.html">index.html</a></p>
            <p><a href="pie.html">pie.html</a></p>
            <p><a href="cuerpo.html">Cuerpo.html</a></p>
        </nav>
    </header>
    <h1> Elementos que pueden ir dentro de una etiqueta "<header></header>" </h1>
</body>
</html>

EOF
echo "Código cabecera fin"

###########################################################################################
echo "pasando código cuerpo"

cat << EOF >> cuerpo.html
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="Stylesheet" href="w3.css">
    <title>cuerpo</title>
</head>
<body class='w3-red'>
    <h1>Elementos que pueden ir dentro de la etiqueta "<body></body>" </h1>
</body>
</html>

EOF

echo "código cuerpo fin"

###########################################################################################
echo "pasando código pie"

cat << EOF >> pie.html
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="Stylesheet" href="w3.css">
    <title>Document</title>
</head>
<body>
    <h1>Elementos que pueden ir dentro de una etiqueta "<footer></footer>" </h1>
    <footer class='w3-green'></footer>
</body>
</html>

EOF

echo "código pie fin"

#############################################################################################

echo "pasando coódigo total a index.html"

cat << EOF >> index.html

<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="Stylesheet" href="w3.css">
    <title>Cabecera</title>
</head>
<body>
    <header class='w3-blue'>
        <nav>
            <p><a href="index.html">index.html</a></p>
            <p><a href="pie.html">pie.html</a></p>
            <p><a href="cuerpo.html">Cuerpo.html</a></p>
        </nav>
    </header>
    <h1> Elementos que pueden ir dentro de una etiqueta "header" </h1>

	<h1>Elementos que pueden ir dentro de una etiqueta "<footer></footer>" </h1>
    <footer class='w3-green'></footer>

</body>
</html>
<body>

EOF
echo "pasando texto a index.html tarea terminada"

###########################################################################################






