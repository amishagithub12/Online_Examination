@extends('master') 

@section('content')
<div class="container custom-login">
    <div class="row">
        <div class="col-sm-4 col-sm-offset-4">      
            <form action="{{route('store')}}" method="post">
             @csrf 
            <h3>Registraion</h3>
            <br>
                <div class="form-group">                   
                    <label for="exampleInputEmail1">Name</label>
                    <input type="text" name="name"  class="form-control"  aria-describedby="emailHelp" placeholder="Enter Name">
                </div>
                

                <div class="form-group">                   
                    <label for="exampleInputEmail1">Email</label>
                    <input type="email" name="email"  class="form-control"  aria-describedby="emailHelp" placeholder="Enter email">
                      </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                </div>
              
                <button type="submit" class="btn btn-primary">Register</button>
            </form>
            <a href="http://localhost/Online_Examination/user/login.php">Aleready Registred!</a>
        </div>
    </div>
</div>
</body>
</html>
@endsection