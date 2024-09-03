

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>


<% if $Results %>
    <% loop $Results %>
        <a  class="d-flex my-2 " href="$VideoPage.Link" >
            <div class="col-6" >
            $VideoThumbnail.Fill(200,200)
            </div>
            <div class="col-6">
        <h2 style="margin-top:70px">$Title</h2>
            </div>
        </a>
    <% end_loop %>
<% else %>
<p>No Result</P>
<% end_if %>