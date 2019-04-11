    <!-- Bootstrap core JavaScript -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jsbarcode@3.8.0/dist/barcodes/JsBarcode.code128.min.js"></script>
    <script type="text/javascript">
      $(function () {
        $('.change-layout').click(function() {
            console.log("changing layout");
            $( ".container, .container-fluid" ).toggleClass( ".container" ).toggleClass( ".container-fluid" );
        });
      });
    </script>