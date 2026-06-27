```{=html}
  <% 
    function getImage(item) {
      if (item.image) return item.image;
      if (!item.body) return null;
      const img = item.body.querySelector('.preview-image img');
      return img ? img.getAttribute('src') : null;
    }
  %>

  <% for (const item of items) { %>
    <div class="grid gap-3 py-2" <%= metadataAttrs(item) %> >

      <div class="g-col12 g-col-md-2 order-md-3">
        <p class="fs-1"><%= item.date %></p>
        <p>
          <% for (const aut of (Array.isArray(item.author) ? item.author : [])) { %>
          <i class="bi bi-user"></i> <%= aut.name %><br />
          <% } %>
        </p>
        <p class="fs-2 text-muted"><i class="bi bi-stopwatch"></i> <%= item['reading-time'] %></p>
      </div>

      <div class="g-col12 g-col-md-4 order-md-1" style="overflow: clip; height: <%- templateParams['image-height'] %>;">
        <a href="<%- item.path %>" class="no-external">
        <% const imgSrc = getImage(item) || (templateParams && templateParams['image-placeholder']); %>
        <% if (imgSrc) { %>
        <img src="<%- imgSrc %>" alt="<%- item['image-alt'] || item.title %>" class="img-fluid shadow-md img-zoom" />
        <% } %>
        </a>
      </div>          
      
      <div class="g-col12 g-col-md-6 order-md-2">
        <ul class="navbar-nav d-flex flex-row gap-2 text-sans text-uppercase">
        <% for (const cat of (item.categories || [])) { %>
        <li class="nav-item fs-4 text-primary fw-bold" onclick="window.quartoListingCategory('<%= utils.b64encode(cat) %>'); return false;"><%= cat %></li>
        <% } %>
        </ul>      
        <h4 class="no-anchor mt-0"><a href="<%- item.path %>" class="text-body"><%= item.title %></a></h4>
        <p class="small"><%= item.description %></p>
      </div>

    </div>
  <% } %>
```