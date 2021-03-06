<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-review" data-toggle="tooltip" title="" class="btn btn-primary" data-original-title="Save"><i class="fa fa-save"></i></button>
        <a href="#catalog/review" data-toggle="tooltip" title="" class="btn btn-default" data-original-title="Cancel"><i class="fa fa-reply"></i></a></div>
      <h1>Reviews</h1>
      <ul class="breadcrumb">
                <li><a href="#common/dashboard">Home</a></li>
                <li><a href="#catalog/review">Reviews</a></li>
              </ul>
    </div>
  </div>
  <div class="container-fluid">
        <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> Add Review</h3>
      </div>
      <div class="panel-body">
        <form action="#catalog/review/add" method="post" enctype="multipart/form-data" id="form-review" class="form-horizontal">
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-author">Author</label>
            <div class="col-sm-10">
              <input type="text" name="author" value="" placeholder="Author" id="input-author" class="form-control">
                          </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-product"><span data-toggle="tooltip" title="" data-original-title="(Autocomplete)">Product</span></label>
            <div class="col-sm-10">
              <input type="text" name="product" value="" placeholder="Product" id="input-product" class="form-control" autocomplete="off"><ul class="dropdown-menu"></ul>
              <input type="hidden" name="product_id" value="">
                          </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-text">Text</label>
            <div class="col-sm-10">
              <textarea name="text" cols="60" rows="8" placeholder="Text" id="input-text" class="form-control"></textarea>
                          </div>
          </div>
          <div class="form-group required">
            <label class="col-sm-2 control-label" for="input-name">Rating</label>
            <div class="col-sm-10">
              <label class="radio-inline">
                                <input type="radio" name="rating" value="1">
                1
                              </label>
              <label class="radio-inline">
                                <input type="radio" name="rating" value="2">
                2
                              </label>
              <label class="radio-inline">
                                <input type="radio" name="rating" value="3">
                3
                              </label>
              <label class="radio-inline">
                                <input type="radio" name="rating" value="4">
                4
                              </label>
              <label class="radio-inline">
                                <input type="radio" name="rating" value="5">
                5
                              </label>
                          </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status">Status</label>
            <div class="col-sm-10">
              <select name="status" id="input-status" class="form-control">
                                <option value="1">Enabled</option>
                <option value="0" selected="selected">Disabled</option>
                              </select>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  <script type="text/javascript"><!--
$('input[name=\'product\']').autocomplete({
    'source': function(request, response) {
        $.ajax({
            url: 'index.php?route=catalog/product/autocomplete&token=89ce18606f22b1e49470e103765216bb&filter_name=' +  encodeURIComponent(request),
            dataType: 'json',           
            success: function(json) {
                response($.map(json, function(item) {
                    return {
                        label: item['name'],
                        value: item['product_id']
                    }
                }));
            }
        });
    },
    'select': function(item) {
        $('input[name=\'product\']').val(item['label']);
        $('input[name=\'product_id\']').val(item['value']);     
    }   
});
//--></script></div>