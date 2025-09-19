Rails.application.routes.draw do
  get("/", { :controller => "calc", :action => "calculators" })

  get("/square/new", { :controller => "calc", :action => "sq_new" })

  get("/square/result", { :controller => "calc", :action => "sq_result" })

  get("/square_root/new", { :controller => "calc", :action => "sq_root_new" })

  get("/square_root/result", { :controller => "calc", :action => "sq_root_result" })

  get("/payment/new", { :controller => "calc", :action => "payment_new" })

  get("/payment/result", { :controller => "calc", :action => "payment_result" })

  get("/random/new", { :controller => "calc", :action => "random_new" })

  get("/random/result", { :controller => "calc", :action => "random_result" })
end
