#
# Cookbook Name:: localusers
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

search(:users, "*:*").each do |data|
	user data["id"] do
		manage_home data["manage_home"]
		comment data["comment"]
		uid data["uid"]
		gid data["gid"]
		home data["home"]
		shell data["shell"]
		action :create
	end
end
include_recipe "localusers::groups"
