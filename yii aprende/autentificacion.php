<?php 
'authManager'=>array(
        'class'=>'CDbAuthManager',
        'connectionID'=>'db',
		'itemTable'=>'AuthItem', // Tabla que contiene los elementos de autorizacion
		'itemChildTable'=>'AuthItemChild', // Tabla que contiene los elementos padre-hijo
		'assignmentTable'=>'AuthAssignment', // Tabla que contiene la signacion usuario-autorizacion
    ),
 ?>