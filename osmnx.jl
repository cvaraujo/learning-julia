using PyCall

ENV["PYTHON"] = "/usr/bin/python3"

ox = pyimport("osmnx")

g = ox.graph_from_address("Alto Santo, Ceará", dist=500)

println(g.nodes)
