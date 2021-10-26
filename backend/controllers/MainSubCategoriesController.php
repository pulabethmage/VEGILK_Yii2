<?php

namespace backend\controllers;

use Yii;
use backend\models\MainSubCategories;
use backend\models\MainSubCategoriesSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * MainSubCategoriesController implements the CRUD actions for MainSubCategories model.
 */
class MainSubCategoriesController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all MainSubCategories models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new MainSubCategoriesSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single MainSubCategories model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new MainSubCategories model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new MainSubCategories();

        if ($model->load(Yii::$app->request->post())) {

           //////////
            $imageSubCatId = Yii::$app->security->generateRandomString(10);
            $imageName = $imageSubCatId.'_';

            $model->subcatimageurlfile = UploadedFile::getInstance($model,'subcatimageurlfile'); 
            $model->subcatimageurlfile->saveAs('uploads/subcatimage/'.$imageName.'.'.$model->subcatimageurlfile->extension);
            
            /// save the parth to database
            $model->sub_cat_imageurl = 'http://vegi.lk/admin/backend/web/uploads/subcatimage/'.$imageName.'.'.$model->subcatimageurlfile->extension;

            $model->save();
            /////////////////


            return $this->redirect(['view', 'id' => $model->sub_catid]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing MainSubCategories model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post())) {
           
            //////

            $imageSubCatId = Yii::$app->security->generateRandomString(20);
            $imageName = $imageSubCatId.'_';

            $model->subcatimageurlfile = UploadedFile::getInstance($model,'subcatimageurlfile'); 
            $model->subcatimageurlfile->saveAs('uploads/subcatimage/'.$imageName.'.'.$model->subcatimageurlfile->extension);
            
            /// save the parth to database
            $model->sub_cat_imageurl = 'http://vegi.lk/admin/backend/web/uploads/subcatimage/'.$imageName.'.'.$model->subcatimageurlfile->extension;

            $model->save();

            ////

            return $this->redirect(['view', 'id' => $model->sub_catid]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing MainSubCategories model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the MainSubCategories model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return MainSubCategories the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = MainSubCategories::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
