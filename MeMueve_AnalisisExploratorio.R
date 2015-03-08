########################################################################################
###	MeMueve_AnalisisExploratorio.R
###	author	hreyes
### date	07 March	
###	Determina la necesidad de nuestra aplicacion que determina la habilidad de un humano
### para conducir un automovil y hacerse acreedor a una licencia
### perdon por los magic numbers.
########################################################################################

## servicios atendidos en delegaciones del DF 
## http://datos.labcd.mx/dataset/46388e65-a035-4953-b15d-57d399ccbf06/resource/916162f5-a807-42de-8d95-1681ffd519c1/download/serviciosatendidosdelegacion2014.csv

servicios <- strsplit(readLines("serviciosatendidosdelegacion2014.csv"), ";")
# consistencia de las entradas
unlist(lapply(servicios, length))
# eliminar entradas controvertidas
servicios <- do.call(rbind, servicios[which(unlist(lapply(servicios, length)) == 19)])
# shape data
colnames(servicios) <- servicios[1, ]
colnames(servicios) <-  gsub(" ", "_", colnames(servicios))
servicios <- servicios[2:23 , ]
servicios[ , 1] <- gsub(" ", "_", servicios[ , 1])
servicios <- as.data.frame(servicios)
change <- function(vec) { 
	newVec <- as.numeric(as.character(vec))
	return(newVec)
}
servicios[ , 2:dim(servicios)[2]] <- apply(servicios[ , 2:dim(servicios)[2]], 2, change)

# reshape again (oops, my bad)
lugar <- unlist(lapply(colnames(servicios)[2:19], function(x) {
	return(rep(x, dim(servicios)[1]))
	}))
servicio <- rep(servicios$TIPO_DE_SERVICIO, length(colnames(servicios)[2:19]))

cantidad <- unlist(c(servicios[ , 2:19]))
servicios_atendidos <- as.data.frame(cbind(lugar, as.character(servicio), cantidad))
colnames(servicios_atendidos) <- c("lugar", "servicio", "cantidad")
rownames(servicios_atendidos) <- NULL
rm(cantidad, lugar, servicio, servicios)
servicios_atendidos$cantidad <- change(servicios_atendidos$cantidad)

# graficar
library(ggplot2)
ggplot(servicios_atendidos[!(servicios_atendidos$lugar %in% "TOTAL") , ], aes(servicio, cantidad)) + geom_bar(stat="identity", aes(fill=lugar)) + coord_flip() + ggtitle("Servicios Atendidos en Area Metropolitana, 2014") + ylab("Número de Eventos") + xlab("Servicio") + scale_fill_manual(values=c("antiquewhite1", "cadetblue1", "aquamarine3", "azure3", "coral1", "brown4", "gold3", "green", "navyblue", "deeppink3", "yellow", "lightsalmon3", "olivedrab3", "black", "plum", "mediumvioletred", "seagreen"))

#################
## reportes viales atendidos en el DF (072)
## http://datos.labcd.mx/dataset/c4f22325-9c86-4c99-9543-820a544dc515/resource/30b47958-3937-435b-bbd5-00b3cd129129/download/viales2014.csv

viales <- read.csv("viales2014.csv")

#visualizacion exploratoria
ggplot(viales, aes(Asunto)) + geom_bar() + coord_flip()
 
# hay que parsear la categoria Asunto y el dframe
privacidad <- viales[46219:46225 , ]
viales <- viales[1:46218 , ]

# descartar categorias (visibilidad y falta de metadata) y comprimir categorias
asuntos_dict <- strsplit(as.character(unique(viales$Asunto)), "-")
asuntos_dict <- as.data.frame(do.call(rbind, asuntos_dict)) 		# Rs recycling is useful here
colnames(asuntos_dict) <- c("clave", "asunto")

asuntos_dict$clave <- toupper(as.character(asuntos_dict$clave))
asuntos_dict$asunto <- toupper(as.character(asuntos_dict$asunto))
asuntos_dict$clave <- gsub(" $","", asuntos_dict$clave, perl=T)
asuntos_dict$asunto <- gsub("^ ","", asuntos_dict$asunto, perl=T)

asuntos_dict <- asuntos_dict[!duplicated(asuntos_dict$clave), ]


# use dictionary to replace in original dframe, uppercase before
asuntos <- strsplit(as.character((viales$Asunto)), "-")
asuntos <-  as.data.frame(do.call(rbind, asuntos)) 
colnames(asuntos) <- c("clave", "asunto")
asuntos$clave <- gsub(" $","", asuntos$clave, perl=T)
asuntos$clave <- toupper(as.character(asuntos$clave))

newAsuntos <- unlist(lapply(asuntos$clave, function(x) { 
	return(asuntos_dict$asunto[asuntos_dict$clave == x])
}))

viales <- cbind(asuntos$clave, newAsuntos, viales)
colnames(viales)[1:2] <- c("clave", "asunto")
viales <- viales[ , c(1:4, 6:12)]

# PLOOOOOOT 
ggplot(viales[!(viales$asunto %in% c("TLCIA VEHICULAR", "TLC", "TL TRANSITO LENTO", "PLANTÓN", "M", "IO", "F", "EVE", "ENC", "BLO", "AVENIDA", "ACVANSITO LENTO", "AC", "AAACV")) , ], aes(asunto)) + geom_bar(aes(fill=Zona)) + coord_flip()  + theme(plot.title=element_text(size=13), axis.text.y = element_text(size=7), axis.text.x = element_text(size=6.4), axis.title.y=element_text(size=10), axis.title.x=element_text(size=10), legend.position="none") + ggtitle("Reportes Viales Atendidos 2014") + xlab("Asunto") + ylab("Número de Reportes") + scale_fill_hue(l=80, c=150) + facet_wrap(~Zona, nrow=1)



















