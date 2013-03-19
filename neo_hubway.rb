require 'rubygems'
require 'neography'
require 'sinatra'
require 'oj'

def stations
  neo = Neography::Rest.new
            
  cypher = "start from=node:node_auto_index('*:*') 
            match from-[r]->to 
            return from.name, to.name, r.volume"            
  neo.execute_query(cypher)["data"]            
end

#get '/visualization' do
#  results = stations
#  results.group_by(&:first).map {|k,v| {"name" => k, "follows" => v.collect{|n| { "name" => n[1], "counts" => n[2] }}}}.to_json
#end

get '/' do
  File.read(File.join('public', 'index.html'))
end