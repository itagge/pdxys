# ideas for displaying studios/teachers/classes based on styles


# this will go inside the html:

studios.sort_by! { |s| s[:name]}.each do |s|
  next unless s.style == selected_style
  # includes some sort of CSS block around this code?
  puts s.name
  puts s.description
  puts s.address
end
  
  
# how to intelligently implement filters!?
# each class will have its own filter method

# instructors filter specs
f = ['location', 'private', 'style']
# studios filter specs
f = ['location', 'style', 'budget']
# classes filter specs
f = ['location','level','style','budget','niche'] # this will get complicated w/ niche b/c will
# have to check (1) is_niche? and (2) what_niche?

# search operations:  if no search specified, show all objs within class
# if search specified, show only objs within class that match that search; nil does not count as match
# perhaps this should employ 'collect'

obj_list.each do |a|
  tmp_list << obj if a.f_match(filt_spec)?
end

def f_match(filt_spec)
  filt_spec.each do |f,@f0| #f is the value in the filter, @f0 is the value of the obj
    if f == nil || f==@f0
      fm = 1
    else
      fm = 0
      break
    end
  end
end

# dynamically create list of yoga styles and make it global
# need to use a unique? or include? method to check if the list already contains the style being added?
# absolutely need to implement this for Niche yoga classes
# Niche yoga page will need to display both workshops and classes


#TODO
  
# implement some sort of admin page for each user that will allow them to view/edit/create all their workshops/studios/classes

# learn to use studio_id integer

# still need link to yoga studio's actual page

# yoga_classes/new does not have input fields for all required info

# implement search/sort/filter function application_controller ?

# make sure all classes/workshops/instructors/etc are associated with a specific user so only that user (or admin) can edit, and each user only 
# has access to their own postings


# PRIORITY:
# admin page for each user
# implement CSS to at least begin making pages pretty
