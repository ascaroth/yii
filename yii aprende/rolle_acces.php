<?php 
public function accessRules()
	{
		return array(
			array('allow',
				'actions'=>array('index'),
				'users'=>array('?'),
			),
			array('allow',
				'actions'=>array('view'),
				'users'=>array('@'),
			),
			array('allow',
				'actions'=>array('create','update','admin','delete'),

				'expression'=>'Yii::app()->user->checkAccess("adminFinanciero")',
			    // or
			    // 'roles'=>array('adminFinanciero'),

			),
			array('deny',
				'users'=>array('*'),
			),
		);
	}
 ?>