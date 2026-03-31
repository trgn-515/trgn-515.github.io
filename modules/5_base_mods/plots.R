rm(list=ls())

# library(NanoMethViz)

# in_dir='/Users/arturo/Documents/teaching/usc_genomics/trgn515/markdowns/week6/data/bedMethyl/'
# chr='chr1'
# 
# norm_file=paste(in_dir, 'normal_',chr,'_bedmethyl.gz', sep = '')
# tumor_file=paste(in_dir, 'tumor_',chr,'_bedmethyl.gz', sep = '')
# 
# norm=as.data.frame(data.table::fread(norm_file))
# tumor=as.data.frame(data.table::fread(tumor_file))
# 
# norm = norm[norm$V4 == 'm',]
# tumor = norm[tumor$V4 == 'm',]



in_dir='/Users/arturo/Documents/teaching/usc_genomics/trgn515/markdowns/week6/data/dmr_results/'
chr='chr1'

dmr_file=paste(in_dir,chr,'_dmr.bed', sep = '')

dmr=as.data.frame(data.table::fread(dmr_file))


dmr=dmr[,c(2,13,14,15,16)]

pos = 13241929

st = pos - 10000
end = st + 10000

dmr_region=dmr[dmr$V2 >= st & dmr$V2 <= end,]
  
plot(dmr_region$V2, dmr_region$V13, type = 'p', pch = 19, cex = 1.3, col = adjustcolor('steelblue', 0.5))
points(dmr_region$V2, dmr_region$V14, pch = 19, cex = 1.3, col = adjustcolor('tomato3', 0.5))

plx_n = predict(loess(dmr_region$V13~dmr_region$V2), se = T)
plx_t = predict(loess(dmr_region$V14~dmr_region$V2), se = T)

lines(dmr_region$V2, plx_n$fit, col = 'steelblue', lwd = 2)
lines(dmr_region$V2, plx_t$fit, col = 'tomato3', lwd = 2)

lines(dmr_region$V2, plx_n$fit - qt(0.975,plx_n$df)*plx_n$se, lty=2, col = 'steelblue', lwd = 2)
lines(dmr_region$V2, plx_n$fit + qt(0.975,plx_n$df)*plx_n$se, lty=2, col = 'steelblue', lwd = 2)

lines(dmr_region$V2, plx_t$fit - qt(0.975,plx_t$df)*plx_t$se, lty=2, col = 'tomato3', lwd = 2)
lines(dmr_region$V2, plx_t$fit + qt(0.975,plx_t$df)*plx_t$se, lty=2, col = 'tomato3', lwd = 2)


# At random
st=dmr[sample(nrow(dmr), 1, replace = F),1]
end=st+10000
  
dmr_region=dmr[dmr$V2 >= st & dmr$V2 <= end,]

plot(dmr_region$V2, dmr_region$V13, type = 'p', pch = 19, cex = 1.3, col = adjustcolor('steelblue', 0.5))
points(dmr_region$V2, dmr_region$V14, pch = 19, cex = 1.3, col = adjustcolor('tomato3', 0.5))

plx_n = predict(loess(dmr_region$V13~dmr_region$V2), se = T)
plx_t = predict(loess(dmr_region$V14~dmr_region$V2), se = T)

lines(dmr_region$V2, plx_n$fit, col = 'steelblue', lwd = 2)
lines(dmr_region$V2, plx_t$fit, col = 'tomato3', lwd = 2)

lines(dmr_region$V2, plx_n$fit - qt(0.975,plx_n$df)*plx_n$se, lty=2, col = 'steelblue', lwd = 2)
lines(dmr_region$V2, plx_n$fit + qt(0.975,plx_n$df)*plx_n$se, lty=2, col = 'steelblue', lwd = 2)

lines(dmr_region$V2, plx_t$fit - qt(0.975,plx_t$df)*plx_t$se, lty=2, col = 'tomato3', lwd = 2)
lines(dmr_region$V2, plx_t$fit + qt(0.975,plx_t$df)*plx_t$se, lty=2, col = 'tomato3', lwd = 2)

