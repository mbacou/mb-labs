<% 
  function getImage(item) {
    if (item.image) return item.image;
    if (!item.body) return null;
    const img = item.body.querySelector('.preview-image img')[1];
    return img ? img.getAttribute('src') : null;
  }
%>

```{=html}
  <% for (const item of items) { %>
    <div class="grid gap-md-3 py-3" <%= metadataAttrs(item) %> >

      <div class="g-col-12 d-md-none">
        <ul class="navbar-nav d-flex flex-row gap-2 text-sans text-uppercase">
        <% for (const cat of (item.categories || [])) { %>
          <li class="nav-item fs-4 text-primary fw-bold" onclick="window.quartoListingCategory('<%= utils.b64encode(cat) %>'); return false;"><%= cat %></li>
        <% } %>
        </ul>
      </div>    

      <div class="g-col-12 g-col-md-3 order-md-1 bg-light" style="overflow: clip; max-height: <%- templateParams['image-height'] %>;">
        <a href="<%- item.path %>" class="no-external">
        <% const imgSrc = getImage(item) || (templateParams['image-placeholder']); %>
        <% if (imgSrc) { %>
        <img src="<%- imgSrc %>" alt="<%- item['image-alt'] || item.title %>" class="img-fluid shadow-md img-zoom" />
        <% } %>
        </a>
      </div>          
      
      <div class="g-col-12 g-col-md-6 order-md-2">
        <ul class="d-none d-md-flex navbar-nav d-flex flex-row gap-2 text-sans text-uppercase">
        <% for (const cat of (item.categories || [])) { %>
          <li class="nav-item fs-4 text-primary fw-bold" onclick="window.quartoListingCategory('<%= utils.b64encode(cat) %>'); return false;"><%= cat %></li>
        <% } %>
        </ul>      
        <h4 class="no-anchor mt-md-0">
        <a href="<%- item.path %>" class="text-body"><%= item.title %></a>
        </h4>
        <p class="small"><%= item.description %></p>
      </div>

      <div class="g-col-12 g-col-md-3 order-md-3 pt-md-4">
        <div class="d-flex d-md-block flex-row gap-2">
          <% if (item.date) { %>
          <p class="mb-0"><mark class="1 fs-1 secondary"><%= item.date %></mark></p>
          <% } %>

          <% if (item.author) { %>
          <p><i class="bi bi-user"></i> 
            <% if (Array.isArray(item.author)) { %>
              <%= item.author.join('<br/><i class="bi bi-user"></i> ') %>
            <% } else { %>
              <%= item.author %>
            <% } %>      
          </p>
          <% } %>

          <% if (item['reading-time']) { %>
          <p class="fs-2 text-muted ms-auto">
          <i class="bi bi-stopwatch"></i> <%= item['reading-time'] %>
          </p>
          <% } %>
        </div>      
      </div>

    </div>
  <% } %>
```
