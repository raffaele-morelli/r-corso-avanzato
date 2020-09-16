# leggo il file di dati in formato csv esportato da LimeSurvey
# data <- read.csv("survey_256638_R_data_file.csv", quote = "'\"", sep = ";", na.strings=c("", "\"\""), stringsAsFactors=FALSE, fileEncoding="UTF-8")


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"

# LimeSurvey Field type: A
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "Qualifica"
data[, 2] <- factor(data[, 2], levels=c("A1","A2"),labels=c("Studente", "Docente"))
names(data)[2] <- "D1"

# LimeSurvey Field type: A
data[, 3] <- as.character(data[, 3])
attributes(data)$variable.labels[3] <- "Sesso"
data[, 3] <- factor(data[, 3], levels=c("A2","A3"),labels=c("Maschio", "Femmina"))
names(data)[3] <- "D2"

# LimeSurvey Field type: F
data[, 4] <- as.numeric(data[, 4])
attributes(data)$variable.labels[4] <- "Anno di nascita"
names(data)[4] <- "D3"

# LimeSurvey Field type: A
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "Comune di residenza"
data[, 5] <- factor(data[, 5], levels=c("A1","A2"),labels=c("Roma", "Altri comuni"))
names(data)[5] <- "D4"

# LimeSurvey Field type: A
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "Indirizzo Scolastico"
data[, 6] <- factor(data[, 6], levels=c("A1","A2","A3"),labels=c("Istituto Tecnico", "Liceo Scientifico", "Liceo Sc. - scienze applicate e indirizzo sportivo"))
names(data)[6] <- "D5"

# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "Classe"
data[, 7] <- factor(data[, 7], levels=c("A2","A3","A4","A5","A6"),labels=c("Prima", "Seconda", "Terza", "Quarta", "Quinta"))
names(data)[7] <- "D6"

# LimeSurvey Field type: F 
# Composizione della famiglia
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "Madre"
data[, 8] <- factor(data[, 8], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[8] <- "D7_SQ002"
# LimeSurvey Field type: F
data[, 9] <- as.numeric(data[, 9])
attributes(data)$variable.labels[9] <- "Padre"
data[, 9] <- factor(data[, 9], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[9] <- "D7_SQ003"
# LimeSurvey Field type: F
data[, 10] <- as.numeric(data[, 10])
attributes(data)$variable.labels[10] <- "Fratelli e/o sorelle"
data[, 10] <- factor(data[, 10], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[10] <- "D7_SQ004"
# LimeSurvey Field type: F
data[, 11] <- as.numeric(data[, 11])
attributes(data)$variable.labels[11] <- "Altro (nonni,zio/a ecc.)"
data[, 11] <- factor(data[, 11], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[11] <- "D7_SQ005"


# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "Livello di istruzione madre"
data[, 12] <- factor(data[, 12], levels=c("A1","A2","A3","A4","A5"),labels=c("Licenza elementare", "Licenza media", "Diploma di maturità", "Diploma di laurea", "Non so"))
names(data)[12] <- "D8"

# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Livello di istruzione padre"
data[, 13] <- factor(data[, 13], levels=c("A2","A3","A4","A5","A6"),labels=c("Licenza elementare", "Licenza media", "Diploma di maturità", "Diploma di laurea", "Non so"))
names(data)[13] <- "D9"

# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "Tipologia di materie insegnate"
data[, 14] <- factor(data[, 14], levels=c("A1","A2"),labels=c("Umanistico/Letterario (lettere, filosofia, diritto, inglese, religione)", "Tecnico/Scientifico (matematica, scienze, fisica, informatica, elettronica, scienze motorie, disegno)"))
names(data)[14] <- "D10"

# LimeSurvey Field type: F
# Dove più frequentemente senti parlare e/o discuti di temi ambientali?
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "In famiglia"
data[, 15] <- factor(data[, 15], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[15] <- "I1_SQ002"
# LimeSurvey Field type: F
data[, 16] <- as.numeric(data[, 16])
attributes(data)$variable.labels[16] <- "Durante le lezioni scolastiche"
data[, 16] <- factor(data[, 16], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[16] <- "I1_SQ003"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "Con gli amici"
data[, 17] <- factor(data[, 17], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[17] <- "I1_SQ004"
# LimeSurvey Field type: F
data[, 18] <- as.numeric(data[, 18])
attributes(data)$variable.labels[18] <- "Durante convegni,seminari e corsi extracurriculari"
data[, 18] <- factor(data[, 18], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[18] <- "I1_SQ005"


# LimeSurvey Field type: F
# Dove più frequentemente senti parlare e/o discuti di temi ambientali?
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "Su internet (es. Facebook, twitter, quotidiani on line e altri siti di informazione, ecc.)"
data[, 19] <- factor(data[, 19], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[19] <- "I1_SQ006"
# LimeSurvey Field type: F
data[, 20] <- as.numeric(data[, 20])
attributes(data)$variable.labels[20] <- "In programmi radiofonici e/o televisivi"
data[, 20] <- factor(data[, 20], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[20] <- "I1_SQ007"
# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "Su quotidiani cartacei, riviste specializzate e non, libri"
data[, 21] <- factor(data[, 21], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[21] <- "I1_SQ008"
# LimeSurvey Field type: F
data[, 22] <- as.numeric(data[, 22])
attributes(data)$variable.labels[22] <- "In associazione o gruppi organizzati (es. scout,associazioni culturali, ecc.)"
data[, 22] <- factor(data[, 22], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[22] <- "I1_SQ009"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "Altro"
names(data)[23] <- "I1_other"


# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "Ritieni che la conoscenza e l\'informazione sui temi ambientali sia importante?"
data[, 24] <- factor(data[, 24], levels=c("A2","A3","A4","A5","A6"),labels=c("Molto", "Abbastanza", "Poco", "Per niente", "Non so"))
names(data)[24] <- "I2"

# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "Sei soddisfatto dell\'informazione che i mezzi di comunicazione forniscono sui temi ambientali?"
data[, 25] <- factor(data[, 25], levels=c("A1","A2","A3","A4","A5"),labels=c("Molto", "Abbastanza", "Poco", "Per niente", "Non so"))
names(data)[25] <- "I3"


# LimeSurvey Field type: F
# Quale problematica ambientale ti preoccupa maggiormente ?
data[, 26] <- as.numeric(data[, 26])
attributes(data)$variable.labels[26] <- "Effetto serra, buco dell\'ozono"
data[, 26] <- factor(data[, 26], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[26] <- "P1_SQ001"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "Estinzioni di alcune specie vegetali/animali"
data[, 27] <- factor(data[, 27], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[27] <- "P1_SQ002"
# LimeSurvey Field type: F
data[, 28] <- as.numeric(data[, 28])
attributes(data)$variable.labels[28] <- "Cambiamenti climatici (innalzamento delle temperature, variazioni del regime delle precipitazioni)"
data[, 28] <- factor(data[, 28], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[28] <- "P1_SQ003"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "Produzione e smaltimento rifiuti"
data[, 29] <- factor(data[, 29], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[29] <- "P1_SQ004"
# LimeSurvey Field type: F
data[, 30] <- as.numeric(data[, 30])
attributes(data)$variable.labels[30] <- "Rumore"
data[, 30] <- factor(data[, 30], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[30] <- "P1_SQ005"
# LimeSurvey Field type: F
data[, 31] <- as.numeric(data[, 31])
attributes(data)$variable.labels[31] <- "Inquinamento dell\'aria"
data[, 31] <- factor(data[, 31], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[31] <- "P1_SQ006"
# LimeSurvey Field type: F
data[, 32] <- as.numeric(data[, 32])
attributes(data)$variable.labels[32] <- "Inquinamento del suolo"
data[, 32] <- factor(data[, 32], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[32] <- "P1_SQ007"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "Inquinamento dell\'acqua (falde, fiumi, laghi, mare)"
data[, 33] <- factor(data[, 33], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[33] <- "P1_SQ008"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "Dissesto idrogelogico (terremoti, alluvioni, inondazioni, allagamenti, frane, valanghe)"
data[, 34] <- factor(data[, 34], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[34] <- "P1_SQ009"
# LimeSurvey Field type: F
data[, 35] <- as.numeric(data[, 35])
attributes(data)$variable.labels[35] <- "Distruzioni delle foreste"
data[, 35] <- factor(data[, 35], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[35] <- "P1_SQ010"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "Inquinamento elettromagnetico (causato da ripetitori radio-TV e telefonici, linee elettriche ad alta tensione)"
data[, 36] <- factor(data[, 36], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[36] <- "P1_SQ011"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "Rovina del paesaggio causata dall\'eccessiva costruzione di edifici"
data[, 37] <- factor(data[, 37], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[37] <- "P1_SQ012"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "Esaurimento delle risorse naturali del mondo (acqua, minerali, petrolio, ecc..)"
data[, 38] <- factor(data[, 38], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[38] <- "P1_SQ013"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "Altro"
names(data)[39] <- "P1_other"


# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "Ritieni che il comune dove risiedi sia inquinato?"
data[, 40] <- factor(data[, 40], levels=c("A2","A3","A4","A5","A6"),labels=c("Molto", "Abbastanza", "Poco", "Per niente", "Non so"))
names(data)[40] <- "P2"

# LimeSurvey Field type: F
# Quale comportamento adotti maggiormente?
data[, 41] <- as.numeric(data[, 41])
attributes(data)$variable.labels[41] <- "Fai la raccolta differenziata"
data[, 41] <- factor(data[, 41], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[41] <- "CS1_SQ002"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "Riutilizzi fogli di carta scartati e/o stampati solo da un lato"
data[, 42] <- factor(data[, 42], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[42] <- "CS1_SQ003"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "Eviti l\'uso di sacchetti di plastica non biodegradabile"
data[, 43] <- factor(data[, 43], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[43] <- "CS1_SQ004"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "Eviti l\'acquisto di prodotti con troppo imballaggio"
data[, 44] <- factor(data[, 44], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[44] <- "CS1_SQ005"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "Eviti di far scorrere l\'acqua a lungo senza utilizzarla"
data[, 45] <- factor(data[, 45], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[45] <- "CS1_SQ006"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "Segnali la presenza di eventuali perdite da rubinetti e water"
data[, 46] <- factor(data[, 46], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[46] <- "CS1_SQ007"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "Privilegi la luce solare a quella artificiale"
data[, 47] <- factor(data[, 47], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[47] <- "CS1_SQ008"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "Spegni la luce quando esci da una stanza "
data[, 48] <- factor(data[, 48], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[48] <- "CS1_SQ009"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "Abbassi l\'aria condizionata o il riscaldamento"
data[, 49] <- factor(data[, 49], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[49] <- "CS1_SQ010"
# LimeSurvey Field type: F
data[, 50] <- as.numeric(data[, 50])
attributes(data)$variable.labels[50] <- "Eviti di fare rumori troppo forti e molesti"
data[, 50] <- factor(data[, 50], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[50] <- "CS1_SQ011"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "Controlli la data di scadenza dei prodotti alimentari prima dell acquisto"
data[, 51] <- factor(data[, 51], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[51] <- "CS1_SQ012"
# LimeSurvey Field type: F
data[, 52] <- as.numeric(data[, 52])
attributes(data)$variable.labels[52] <- "Privilegi l\'acquisto di prodotti locali"
data[, 52] <- factor(data[, 52], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[52] <- "CS1_SQ013"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "Limiti l\'uso dei mezzi privati a favore di mezzi più sostenibili (mezzi pubblici, bicicletta, piedi)"
data[, 53] <- factor(data[, 53], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[53] <- "CS1_SQ015"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "Altro"
names(data)[54] <- "CS1_other"


# LimeSurvey Field type: F
#  Cosa è necessario fare per migliorare la condizione ambientale?
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "Introdurre leggi ambientali più severe"
data[, 55] <- factor(data[, 55], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[55] <- "CS2_SQ001"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "Garantire una migliore applicazione delle leggi attraverso un miglioramento del sistema di controllo delle violazioni"
data[, 56] <- factor(data[, 56], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[56] <- "CS2_SQ002"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "Introdurre multe più pesanti per chi viola le norme a protezione dell\'ambiente"
data[, 57] <- factor(data[, 57], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[57] <- "CS2_SQ003"
# LimeSurvey Field type: F
data[, 58] <- as.numeric(data[, 58])
attributes(data)$variable.labels[58] <- "Introdurre e/o aumentare le imposte per le attività che danneggiano l\'ambiente"
data[, 58] <- factor(data[, 58], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[58] <- "CS2_SQ004"
# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "Introdurre benefici e agevolazioni per chi assume comportamenti sostenibili (es. industria che adotta processi di produzione più costosi ma meno inquinanti; l\'agricoltore che limita l\'uso dei pesticidi...)"
data[, 59] <- factor(data[, 59], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[59] <- "CS2_SQ005"
# LimeSurvey Field type: F
data[, 60] <- as.numeric(data[, 60])
attributes(data)$variable.labels[60] <- "Favorire la ricerca e lo sviluppo di soluzioni tecnologiche più sostenibili"
data[, 60] <- factor(data[, 60], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[60] <- "CS2_SQ006"
# LimeSurvey Field type: F
data[, 61] <- as.numeric(data[, 61])
attributes(data)$variable.labels[61] <- "Migliorare l\' informazione sui temi ambientali verso tutti i cittadini"
data[, 61] <- factor(data[, 61], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[61] <- "CS2_SQ007"
# LimeSurvey Field type: F
data[, 62] <- as.numeric(data[, 62])
attributes(data)$variable.labels[62] <- "Maggior coinvolgimento della scuola in azioni formative verso i giovani"
data[, 62] <- factor(data[, 62], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[62] <- "CS2_SQ008"
# LimeSurvey Field type: F
data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "Maggior impegno e disponibilità dei cittadini a modificare le proprie abitudini (esempio: abitudine sui trasporti, sull\'uso dell\'acqua, sulla raccolta dei rifiuti)"
data[, 63] <- factor(data[, 63], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[63] <- "CS2_SQ009"
# LimeSurvey Field type: F
data[, 64] <- as.numeric(data[, 64])
attributes(data)$variable.labels[64] <- "Acquisire maggior consapevolezza dell\'impatto delle nostre azioni, piccole e grandi, sull\' ambiente"
data[, 64] <- factor(data[, 64], levels=c(1,0),labels=c("Sì", "Non selezionato"))
names(data)[64] <- "CS2_SQ010"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "Altro"
names(data)[65] <- "CS2_other"

# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "Qual è la prima cosa che gli amministratori dovrebbero fare per migliorare la situazione ambientale nel comune dove vivi?"
names(data)[66] <- "CS3"

# LimeSurvey Field type: A
data[, 67] <- as.character(data[, 67])
attributes(data)$variable.labels[67] <- "Tu cosa sei disposto a fare in più rispetto a quanto già fai, per migliorare la situazione ambientale?"
names(data)[67] <- "CS4"