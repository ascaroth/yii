class HelloController extends Controller
{

    public function actionIndex($message = 'hello world')
    {
        echo $message . "\n";

        return ExitCode::OK;
    }
}


clases poo
