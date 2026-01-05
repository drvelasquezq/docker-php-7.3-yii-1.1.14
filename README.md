# puede visualizarse en ejecución en

<a href="https://php-7-3-yii-1-1-14.drvelasquezq.site" target="_blank">https://php-7-3-yii-1-1-14.drvelasquezq.site</a>

## Descripción

Este proyecto da los pasos para utilizar y crear imagen de docker que ejecuta una aplicación de Yii 1.1.14 con PHP integrando Apache en Debian, según: 
<br>
https://www.yiiframework.com/doc/guide/1.1/es/quickstart.installation
<br>
https://www.yiiframework.com/download
<br>
https://github.com/yiisoft/yii/releases
<br>
https://github.com/yiisoft/yii/tags

<ul>
<li>Apache: 2.4.62</li>
<li>Yii: 1.1.14</li>
<li>PHP: 7.3.33</li>
<li>Debian: Bookworm</li>
</ul>

## Docker hub

[https://hub.docker.com/r/drvelasquezq/php-7.3-yii-1.1.14](https://hub.docker.com/r/drvelasquezq/php-7.3-yii-1.1.14)

## caracteristicas

<ul>
<li>Permite depurar el código con VS Code con Xdebug 3.1.6 con Docker</li>
</ul>

# Uso

```bash
# clonar proyecto
git clone https://github.com/drvelasquezq/docker-php-7.3-yii-1.1.14.git
# ingresar al proyecto
cd docker-php-7.3-yii-1.1.14
# crear contenedor
docker compose up -d
```
luego podrá ingresar a:
<br>
<a href="http://localhost:8051/yii-1.1.14/testdrive/index.php" target="_blank">http://localhost:8051/yii-1.1.14/testdrive/index.php</a>
<br>
<a href="http://localhost:8051/yii-1.1.14/requirements/" target="_blank">http://localhost:8051/yii-1.1.14/requirements/</a>

### ejemplo para construir proyecto en el contenedor: 
```bash
cd /var/www/yii-1.1.14
php framework/yiic.php webapp ./testdrive
```

### ejemplo para construir la imagen: 
```bash
docker build --no-cache --progress=plain --tag drvelasquezq/php-7.3-yii-1.1.14:latest . > output-build-image/output.log 2>&1
```

### ejemplo para crear contenedor que solo ejecute el script sh que ya está en la imagen
```bash
docker run --name container-php-7.3-yii-1.1.14 drvelasquezq/php-7.3-yii-1.1.14:latest
```

### ejemplo para crear contenedor con la imagen y ejecutarlo de manera interactiva:
```bash
docker run --tty --interactive -p 8051:80 --name container-php-7.3-yii-1.1.14 drvelasquezq/php-7.3-yii-1.1.14:latest bash
```

### ejemplo para crear contenedor con la imagen y ejecutarlo en segundo plano
```bash
docker run -d -p 8051:80 --name container-php-7.3-yii-1.1.14 drvelasquezq/php-7.3-yii-1.1.14:latest
```
```bash
# para luego ingresar al contenedor
docker exec -ti container-php-7.3-yii-1.1.14 bash
```

### ejemplo para remover contenedor:
```bash
docker rm -f container-php-7.3-yii-1.1.14
```

### ejemplo de copia de archivo:
```
docker cp container-php-7.3-yii-1.1.14:/etc/php/8.2/cli/php.ini ./etc/php/8.2/cli/
```

### ejemplo para subir imagen a docker hub
```bash
docker tag drvelasquezq/php-7.3-yii-1.1.14:latest usuario/php-7.3-yii-1.1.14:latest
```
```
docker push drvelasquezq/php-7.3-yii-1.1.14:latest
```