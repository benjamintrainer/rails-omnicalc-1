Rails.application.routes.draw do
  
  get("/", {:controller => "calculations", :action => "home"})

  get("/square/new", {:controller => "calculations", :action => "square_form"})
  get("/square_root/new", {:controller => "calculations", :action => "square_root_form"})
  get("/random/new", {:controller => "calculations", :action => "random_form"})
  get("/payment/new", {:controller => "calculations", :action => "payment_form"})

  get("/square/results", {:controller => "calculations", :action => "square_results"})
  get("/square_root/results", {:controller => "calculations", :action => "square_root_results"})
  get("/random/results", {:controller => "calculations", :action => "random_results"})
  get("/payment/results", {:controller => "calculations", :action => "payment_results"})
end 
