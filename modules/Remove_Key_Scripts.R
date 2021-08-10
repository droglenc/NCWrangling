## Script to remove the module exercise answer key scripts

fns <- paste0("modules/",list.dirs("modules",full.names=FALSE,recursive=FALSE),"/CE_1.r")
fns <- fns[file.exists(fns)]
fns
file.remove(fns)
