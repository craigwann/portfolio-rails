add gems jquery-rails, rspec-rails, launchy, pry, shoulda-matchers

rake db:create
create_table "projects"

app/models/project.rb

$ rails g cancan:ability

application.html.erb
<% if current_user.nil? %>
  <%= link_to new_user_session_path, class: 'login-button' do %>Sign in<% end %>
<% else %>
  <%= link_to rails_admin_path, class: 'login-button' do %>Admin dashboard<% end %>
  <%= link_to destroy_user_session_path, class: 'logout-button' do %>logout<% end %>
<% end %>

index.html.erb
<ul>
  <% @projects.each do |project| %>
    <li><%= link_to project.name, project_path(project) %></li>
  <% end %>
</ul>


create_table "projects", force: :cascade do |t|
  t.string "name"
  t.string "category"
  t.string "image"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.string "imgsm"
  t.string "description"

blue man
<a href="https://imgur.com/2q7koU5"><img src="https://i.imgur.com/2q7koU5.jpg" title="source: imgur.com" /></a>
<a href="https://imgur.com/dqINJvm"><img src="https://i.imgur.com/dqINJvm.jpg" title="source: imgur.com" /></a>

pp cluster bags
<a href="https://imgur.com/wxVZq0E"><img src="https://i.imgur.com/wxVZq0E.jpg" title="source: imgur.com" /></a>
<a href="https://imgur.com/supvCxq"><img src="https://i.imgur.com/supvCxq.jpg" title="source: imgur.com" /></a>

refocus
<a href="https://imgur.com/tU8ogLl"><img src="https://i.imgur.com/tU8ogLl.jpg" title="source: imgur.com" /></a>
<a href="https://imgur.com/Y5vw7uu"><img src="https://i.imgur.com/Y5vw7uu.jpg" title="source: imgur.com" /></a>

<% if current_user.superadmin_role? || current_user.supervisor_role? %>
  <p>Visible only for superadmins and supervisors! </p>
<% end %>
