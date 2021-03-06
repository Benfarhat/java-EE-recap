<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!--  Template from:
https://codepen.io/AaronHarris/pens/forked/?sort_col=item_updated_at#
 -->
 <fmt:setLocale value="${sessionScope.lang}"/>
 <fmt:setBundle basename="messages"/>
<!doctype html>
<html lang="${cookie['lang'].value}">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>${title}</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/octicons/4.4.0/font/octicons.min.css">
    <!--  FontAwesome CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
	
    <!-- Custom styles for this template -->
    <link href="starter-template.css" rel="stylesheet">
  </head>

<body>

  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#"><fmt:message key="label.application.com" /></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="#"><span class="octicon octicon-home"></span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><fmt:message key="label.demander" /></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><fmt:message key="label.suivre" /></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><fmt:message key="label.s_informer" /></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><fmt:message key="label.connexion" /></a>
        </li>
        <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          <fmt:message key="label.langue" />
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="?sessionLocale=fr"><fmt:message key="label.fr" /></a>
	          <a class="dropdown-item" href="?sessionLocale=en"><fmt:message key="label.en" /></a>
	          <a class="dropdown-item" href="?sessionLocale=es"><fmt:message key="label.es" /></a>
	        </div>
	      </li>
      </ul>
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="text" placeholder="<fmt:message key="label.rechercher" />" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><fmt:message key="label.rechercher" /></button>
      </form>
    </div>
  </nav>

  <main role="main" class="container pt-5">    
    <nav class="pt-4">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="#">Home</a></li>
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

    
    <div class="card text-center mb-3 box-shadow">
      <div class="card-header">
        <ul class="nav nav-tabs card-header-tabs">
          <li class="nav-item">
            <a class="nav-link active" href="#list-badges" data-toggle="tab">Badges</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#attributes" data-toggle="tab">Cardholder Attributes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#add-badge" data-toggle="tab"><span class="octicon octicon-plus"></span> Add</a>
          </li>
        </ul>
      </div>
      <fieldset class="card-body tab-content">
        <div class="tab-pane fade table-responsive show active" id="list-badges">
          <table class="table table-hover">
            <thead>
              <tr>
                <th scope="col">Badge #</th>
                <th scope="col">Status</th>
                <th scope="col">Activate on (UTC)</th>
                <th scope="col">Deactivate on (UTC)</th>
                <th scope="col">Pin?</th>
                <th scope="col">Actions</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <th scope="row">7000854</th>
                <td><span class="badge badge-success">Active</span></td>
                <td>01/01/2017 00:00</td>
                <td>01/01/2017 00:00</td>
                <td><span class="octicon octicon-lock"></span></td>
                <td>
                  <div class="btn-group">
                    <button type="button" class="btn btn-primary" data-toggle="tooltip" title="Modify Badge"><span class="octicon octicon-pencil"></span></button>
                    <button type="button" class="btn btn-danger" data-toggle="tooltip" title="Delete badge"><span class="octicon octicon-trashcan"></span></button>
                  </div>
                </td>
              </tr>
              <tr>
                <th scope="row">3984308</th>
                <td><span class="badge badge-secondary">Broken</span></td>
                <td>01/01/2017 00:00</td>
                <td>01/01/2017 00:00</td>
                <td></td>
                <td><div class="btn-group">
                    <button type="button" class="btn btn-warning" data-toggle="tooltip" title="Activate Badge"><span class="octicon octicon-plug"></span></button>
                    <button type="button" class="btn btn-primary" data-toggle="tooltip" title="Modify Badge"><span class="octicon octicon-pencil"></span></button>
                    <button type="button" class="btn btn-danger" data-toggle="tooltip" title="Delete badge"><span class="octicon octicon-trashcan"></span></button>
                  </div></td>
              </tr>
              <tr>
                <th scope="row">4040595</th>
                <td><span class="badge badge-secondary">Lost</span></td>
                <td>01/01/2017 00:00</td>
                <td>01/01/2017 00:00</td>
                <td></td>
                <td><div class="btn-group">
                    <button type="button" class="btn btn-warning" data-toggle="tooltip" title="Activate Badge"><span class="octicon octicon-plug"></span></button>
                    <button type="button" class="btn btn-primary" data-toggle="tooltip" title="Modify Badge"><span class="octicon octicon-pencil"></span></button>
                    <button type="button" class="btn btn-danger" data-toggle="tooltip" title="Delete badge"><span class="octicon octicon-trashcan"></span></button>
                  </div></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="tab-pane fade" id="attributes">
          <form>
            <div class="row text-left">
              <div class="col-md-4 border-right">
                <fieldset class="border-bottom">
                  <legend>General</legend>
                  <div class="form-group">
                    <label for="maxBadges">Max Active Badges</label>
                    <input type="number" min="1" class="form-control" value="1" />
                  </div>
                </fieldset>
                <fieldset>
                  <legend>Barcode</legend>
                  <div class="form-group">
                    <label for="barcode">Barcode</label>
                    <input type="text" class="form-control" id="barcode" placeholder="" value="0011315" required>
                    <div class="text-center">
                    <svg class="barcode"
                         jsbarcode-value="11315"
                         jsbarcode-displayValue="false"
                         jsbarcode-fontoptions="bold"
                         jsbarcode-marginTop="30">
                    </svg>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="barcodeAsInt">Barcode as Int</label>
                    <input type="text" class="form-control" id="barcodeAsint" placeholder="" value="1315" disabled>
                  </div>
                </fieldset>
              </div>
              <div class="col-md-8">
                <fieldset>
                  <div class="row">
                    <legend class="col-12">People API</legend>
                    <div class="form-group col-md-6">
                      <label for="personId">Person ID</label>
                      <input type="text" class="form-control" id="personId" placeholder="" value="f45b889f-6e2c-4c20-b5a0-5acfcb43aede">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="serviceDate">Service Date</label>
                      <input type="date" class="form-control" id="personId" value="2012-08-27">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="jobStatus">Job Status</label>
                      <input type="text" class="form-control" id="jobStatus" value="A">
                    </div>

                    <div class="form-group col-md-6">
                      <label for="employeeStatus">Employee Status</label>
                      <input type="text" class="form-control" id="employeeStatus" value="A">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="primaryEmail">Primary Email</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <span class="octicon octicon-mail"></span>
                          </span>
                        </div>
                        <input type="text" class="form-control" id="primaryEmail" value="jasowhit@amazon.com">
                      </div>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="primaryPhone">Primary Phone</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                          <span class="input-group-text">
                            <span class="octicon octicon-device-mobile"></span>
                          </span>
                          </div>
                        <input type="phone" class="form-control" id="primaryPhone" value="206/266-7799">
                      </div>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="employeeAltName">Employee Alt Name</label>
                      <input type="text" class="form-control" id="employeeAltName"  value="">
                    </div>
                    <div class="form-group col-md-6">
                      <label for="regulatoryRegion">Regulatory Region</label>
                      <input type="text" class="form-control" id="regulatoryRegion"  value="USA">
                    </div>
                  </div>
                </fieldset>
              </div>
              
            </div>
          </form>
        </div>
        <div class="tab-pane fade" id="add-badge">
          <h5 class="card-title">New Badge Information</h5>
          <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="btn btn-primary">Add Badge</a>
        </div>
      </fieldset>
    </div>
    <!-- Search Result Example -->
    <nav>
      <ul class="pagination justify-content-end">
        <li class="page-item disabled">
          <a class="page-link" href="#" tabindex="-1">Previous</a>
        </li>
        <li class="page-item active"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">3</a></li>
        <li class="page-item">
          <a class="page-link" href="#">Next</a>
        </li>
      </ul>
    </nav>

  </main><!-- /.container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jsbarcode@3.8.0/dist/barcodes/JsBarcode.code128.min.js" integrity="sha384-7hD4NLP6Lz5YfWFjMY4sMxpRXf0HERtQCs2mMoKEV46Hz7euXfRwtdmuAmLcySFJ" crossorigin="anonymous"></script>
    <script type="text/javascript">
      $(function () {
        $('[data-toggle="tooltip"]').tooltip();
        JsBarcode(".barcode").init();
      });
    </script>
</body>
</html>
