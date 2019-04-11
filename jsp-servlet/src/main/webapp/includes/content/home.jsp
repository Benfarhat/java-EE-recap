    <nav class="pt-4">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#"><fmt:message key="label.home" /></a></li>
        <li class="breadcrumb-item"><a href="#">Search</a></li>
        <li class="breadcrumb-item active">View Result</li>
      </ol>
      <ul class="nav justify-content-end nav-pills">
        <li class="nav-item"><a class="nav-link " href="#">Add New</a></li>
        <li class="nav-item"><a class="nav-link " href="#">Search</a></li>
      </ul>
    </nav>


    <div class="card mb-3 box-shadow">
      <div class="card-body align-items-start">
        <h3 class="card-title">Cardholder Profile</h3>
        <div class="row">
          <div class="col-md">
            <div class="row">
              <div class="col-md form-group">
                <label for="lastName">Last name</label>
                <input type="text" class="form-control" id="lastName" placeholder="" value="White (Seattle)" required />
              </div>
              <div class="col-md form-group">
                <label for="firstName">First name</label>
                <input type="text" class="form-control" id="firstName" placeholder="" value="Jason" required />
              </div>
            </div>
            <div class="row">
              <div class="col-md form-group">
                <label for="employeeId">Employee ID</label>
                <input type="text" class="form-control" id="employeeId" placeholder="" value="367474" required />
              </div>
              <div class="col-md form-group">
                <label for="uid">Login</label>
                <span class="small float-right"><a href="//phonetool.amazon.com/users/jasowhit">Phonetool <span class="octicon octicon-link-external"></span></span>
                  <input type="text" class="form-control" id="uid" placeholder="" value="jasowhit" required />
              </div>
            </div>
            <div class="row mt-md-3 text-md-left mb-2 text-right form-group">
              <div class="col mt-6">
                <button class="btn btn-primary">Modify</button>
              </div>
            </div>
          </div>

          <div class="col-md-auto col-sm-12 text-center mt-3 mt-md-0 border-left">
            <figure class="figure mb-0">
              <a href="//badgephotos.amazon.com/?employeeId=367474">
                <img src="//badgephotos.amazon.com/?employeeId=367474" class="figure-img img-fluid img-thumbnail embed-responsive-item w-100" alt="A generic square placeholder image with rounded corners in a figure.">
              </a>
              <figcaption class="figure-caption"><input class="form-control form-control-sm" placeholder="Photo URL" value="https//badgephotos.amazon.com/?employeeId=367474" /></figcaption>
            </figure>
          </div>
        </div>
      </div>
    </div>