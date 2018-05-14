<div class="row">
  <hr>
  <p>
    <%= comment.user.first_name %>  <small><em><%= "#{time_ago_in_words(comment.created_at)} ago" %></em></small>
    <% if current_user && current_user.admin? %>
      <%= link_to ('<span class="glyphicon glyphicon-remove"></span>').html_safe, product_comment_path(comment.product, comment), method: :delete, data: { confirm: 'Are you sure?' } %>
    <% end %>
  </p>
  <div class="rated" data-score="<%= comment.rating %>"></div>
  <p><%= comment.body %></p>
</div>
