module ApplicationHelper


  def date_string date
    date.strftime("%a, %d %b %Y")    
  end

  def time_string date
    date.strftime("%l:%M%P")    
  end


  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to(name, "javascript:void(0);", :class => "remove_link")
  end

  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.create
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    id = new_object.object_id
    link_to(name, '#', class: "add_link", data: {class: id, fields: fields.gsub("\n", "")})
  end


end
