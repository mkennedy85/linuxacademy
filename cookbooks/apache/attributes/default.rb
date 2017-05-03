default["apache"]["sites"]["smiehe4"] = { "site_title" => "Smiehe4s websites coming soon", "port" => 80, "domain" => "smiehe4.mylabserver.com" }
default["apache"]["sites"]["smiehe4b"] = { "site_title" => "Smiehe4bs website coming soon!", "port" => 80, "domain" => "smiehe4b.mylabserver.com" }
default["apache"]["sites"]["smiehe6"] = { "site_title" => "Smiehe6 website", "port" => 80, "domain" => "smiehe6.mylabserver.com" }

default["author"]["name"] = "mike"

case node["platform"]
when "centos"
	default["apache"]["package"] = "httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
end
