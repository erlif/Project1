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