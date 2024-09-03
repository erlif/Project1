<% if Sofas.exists %>
    <div class="sofa-list">
        <% loop Sofas %>
            <div class="sofa-item">
                <h2>$Title</h2>
                <p>Description: $Description</p>
                <p>Price: $Harga</p>
                <p>Specifications: $Spesifikasi</p>
                <p>Important Info: $Infopenting</p>
                <p>Stock: $Stok</p>
                <img src="$Sofa.URL" alt="$Title Sofa 1">
                <img src="$Sofa2.URL" alt="$Title Sofa 2">
                <img src="$Sofa3.URL" alt="$Title Sofa 3">
                <a href="$Link">View Details</a>
            </div>
        <% end_loop %>
    </div>
<% else %>
    <p>No sofas found in this category.</p>
<% end_if %>
