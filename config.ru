require '.config/environment'

use Rack::MethodOverride

use StudentsController
use CoursesController
run ApplicationController