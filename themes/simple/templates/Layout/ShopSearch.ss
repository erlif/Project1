<div class="video-search-page container">
    <% include Pagination %>
    <div class="row">

        <div class="col-lg-2">
            <div class="search-form">
                $VideoSearchForm
                <% if $ActiveFilters %>
                    <% loop $ActiveFilters %>
                    <p> Searching for $Title</p>
                    <% end_loop %>
                <% end_if %>
            </div>
        </div>

    <div class="col-lg-8">
        <div class="search-results">
            <% include ShopSearchController %>
        </div>
    </div> 
    
    </div>
    
    <% include Pagination %>
</div>