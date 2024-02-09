<?php

class db_themes extends CActiveRecord
{
	public static function model($className=__CLASS__)
	{
		return parent::model($className);
	}

	public function tableName()
	{
		return 'themes';
	}

	public function rules()
	{
                return array(
//                        array('name', 'required'),
//                        array('enabled', 'required'),
//                        array('active', 'required'),
//			array('dark', 'required')
                );
	}

	public function relations()
	{
		return array(
		);
	}

	public function attributeLabels()
	{
		return array(
		);
	}
}

