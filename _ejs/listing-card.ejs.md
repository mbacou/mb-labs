<% 
  function getImage(item) {
    if (item.image) return item.image;
    if (!item.body) return null;
    const img = item.body.querySelector('.preview-image img')[1];
    return img ? img.getAttribute('src') : null;
  }
%>

```{=html}
  <div class="grid mt-2" style="--bs-columns: <%- templateParams['grid-columns'] %>; --bs-gap: 2rem;">

    <% for (const item of items) { %>
      <div class="g-col-<%- templateParams['grid-columns'] %>  g-col-md-1" <%= metadataAttrs(item) %> >
        <p style="overflow: clip; height: <%- templateParams['image-height'] %>;">
          <a href="<%- item.path %>" class="no-external">
          <% const imgSrc = getImage(item) || (templateParams['image-placeholder']); %>
          <% if (imgSrc) { %>
          <img src="<%- imgSrc %>" alt="<%- item['image-alt'] || item.title %>" class="img-fluid shadow-md img-zoom" />
          <% } %>
          </a>
        </p>
        <div class="mx-md-2">

          <h4 class="no-anchor">
          <a href="<%- item.path %>" class="text-body"><%= item.title %>
          </a></h4>
          <p class="small"><%= item.description %></p>
          <ul class="navbar-nav d-flex flex-row gap-2 text-sans fs-2">
          <% for (const key of (item.keywords || [])) { %>
          <li class="nav-item fs-4 text-primary"><%= key %></li>
          <% } %>
          </ul>

        </div>
      </div>

    <% } %>
  </div>
```

