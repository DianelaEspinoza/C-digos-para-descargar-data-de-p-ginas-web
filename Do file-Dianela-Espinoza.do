//Ingresar el directorio con sus bases de datos incluidos//

//Año 2007

//Módulo 100
clear all
cd "C:\Users\PAOLA\Desktop\UV (2020-II)\E1EMI1\PCs\Enaho"
use enaho01-2007-100
keep conglome vivienda hogar p101 p104 p1121 p112a p1141 p1142 p1143 p1144 p1145
save "modulo100-2007.dta", replace

//Módulo 200
use enaho01-2007-200
keep conglome vivienda hogar codperso p207 p208a p210 
save "modulo200-2007.dta", replace

//Módulo 300
use enaho01a-2007-300
keep conglome vivienda hogar codperso p301a p305 p308a p308d p314a
save "modulo300-2007.dta", replace

//Módulo 400
use enaho01a-2007-400
keep conglome vivienda hogar codperso p4191 p4192 p4195
save "modulo400-2007.dta", replace

//Módulo 500
use enaho01a-2007-500
keep conglome vivienda hogar codperso p501 p507 p511a p513t p520
save "modulo500-2007.dta", replace

//Módulo Sumaria
use sumaria-2007
keep conglome vivienda hogar totmieho percepho gru31hd gru51hd gru71hd inghog2d gashog2d linpe linea pobreza
save "sumariaa-2007.dta", replace

//Fusión horizontal para el año 2007
use modulo100-2007
merge 1:m conglome vivienda hogar using "modulo200-2007"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar codperso using "modulo300-2007"
keep if _merge==3
drop _merge
merge 1:m conglome vivienda hogar codperso using "modulo400-2007"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar codperso using "modulo500-2007"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar using "sumariaa-2007"
keep if _merge==3
drop _merge
save "enaho-2007.dta", replace


//Año 2008

//Módulo 100
use "enaho01-2008-100"
keep conglome vivienda hogar p101 p104 p1121 p112a p1141 p1142 p1143 p1144 p1145
save "modulo100-2008.dta", replace

//Módulo 200
use "enaho01-2008-200"
keep conglome vivienda hogar codperso p207 p208a p210 
save "modulo200-2008.dta", replace

//Módulo 300
use "enaho01a-2008-300"
keep conglome vivienda hogar codperso p301a p305 p308a p308d p314a
save "modulo300-2008.dta", replace

//Módulo 400
use "enaho01a-2008-400"
keep conglome vivienda hogar codperso p4195 p4191 p4192
save "modulo400-2008.dta", replace

//Módulo 500
use "enaho01a-2008-500"
keep conglome vivienda hogar codperso p501 p507 p511a p520 p513t
save "modulo500-2008.dta", replace

//Sumaria 
use "sumaria-2008"
keep conglome vivienda hogar totmieho percepho gru31hd gru51hd gru71hd inghog2d gashog2d linpe linea  pobreza
save "sumariaa-2008.dta", replace

//Fusión horizontal del año 2008
use "modulo100-2008"
merge 1:m conglome vivienda hogar using "modulo200-2008"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar codperso using "modulo300-2008"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar codperso using "modulo400-2008"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar codperso using "modulo500-2008"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar using "sumariaa-2008"
keep if _merge==3
drop _merge
save "enaho-2008", replace


//Año 2009

//Módulo 100
use enaho01-2009-100
keep conglome vivienda hogar p101 p104 p1121 p112a p1141 p1142 p1143 p1144 p1145
save "modulo100-2009.dta", replace

//Módulo 200
use enaho01-2009-200
keep conglome vivienda hogar codperso p207 p208a p210
save "modulo200-2009.dta", replace

//Módulo 300
use enaho01a-2009-300
keep conglome vivienda hogar codperso p301a p305 p308a p308d p314a
save "modulo300-2009.dta", replace

//Módulo 400
use enaho01a-2009-400
keep conglome vivienda hogar codperso p4191 p4192 p4195 
save "modulo400-2009.dta", replace

//Módulo 500
use enaho01a-2009-500
keep conglome vivienda hogar codperso p501 p507 p511a p513t p520
save "modulo500-2009.dta", replace

// Sumaria
use sumaria-2009
keep conglome vivienda hogar totmieho percepho gru31hd gru51hd gru71hd inghog2d gashog2d linpe linea pobreza
save "sumariaa-2009.dta", replace

//Fusión horizontal para el año 2009
use modulo100-2009
merge 1:m conglome vivienda hogar using "modulo200-2009"
drop _merge

merge m:1 conglome vivienda hogar codperso using "modulo300-2009"
drop _merge

merge 1:m conglome vivienda hogar codperso using "modulo400-2009"
drop _merge

merge 1:m conglome vivienda hogar codperso using "modulo500-2009"
drop _merge

merge m:1 conglome vivienda hogar using "sumariaa-2009"
drop _merge

save "enaho-2009.dta", replace


//Año 2010

//Módulo 100
use enaho01-2010-100
keep conglome vivienda hogar p101 p104 p1121 p112a p1141 p1142 p1143 p1144 p1145
save "modulo100-2010.dta", replace

//Módulo 200
use enaho01-2010-200
keep conglome vivienda hogar codperso p207 p208a p210
save "modulo200-2010.dta", replace

//Módulo 300
use enaho01a-2010-300
keep conglome vivienda hogar codperso p301a p305 p308a p308d p314a
save "modulo300-2010.dta", replace

//Módulo 400
use enaho01a-2010-400
keep conglome vivienda hogar codperso p4195 p4192 p4191 
save "modulo400-2010.dta", replace

//Módulo 500
use enaho01a-2010-500
keep conglome vivienda hogar codperso p501 p507 p511a p513t p520
save "modulo500-2010.dta", replace

//Sumaria
use sumaria-2010
keep conglome vivienda hogar totmieho percepho gru31hd gru51hd gru71hd inghog2d gashog2d linpe linea pobreza
save "sumariaa-2010.dta", replace

//Fusión horizontal del año 2010
use modulo100-2010
merge 1:m conglome vivienda hogar using "modulo200-2010"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar codperso using "modulo300-2010"
keep if _merge==3
drop _merge
merge 1:m conglome vivienda hogar codperso using "modulo400-2010"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar codperso using "modulo500-2010"
keep if _merge==3
drop _merge
merge m:1 conglome vivienda hogar using "sumariaa-2010"
keep if _merge==3
drop _merge
save "enaho-2010.dta", replace

//Fusión vertical de todos los años
use enaho-2007, clear
append using enaho-2008
append using enaho-2009
append using enaho-2010
save "enaho.dta", replace

recode p207 (2=1) (1=0), gen (sexo)
la var sexo "Sexo"
la define etiqueta1 0 "Hombre" 1 "Mujer"
la values sexo etiqueta1

rename p1121 electricidad_alumbrado
rename p101 tipo_vivienda
rename p208a edad
rename p513t horas_trabajo_principal
rename p308a nivel_estudios
rename p305 resultado_educativo
rename p314a internet_publico
rename p501 trabajo
rename p511a trabajo_contrato
rename p520 horas_trabajo_total
rename totmieho n_personas_hogar
rename percepho n_perceptores_ingreso
rename gru31hd gasto_hogar
rename gru51hd gasto_salud
rename gru71hd gasto_cultural
rename inghog2d ingreso_neto
rename p104 n_habitaciones
rename p308d centro_estudios
rename gashog2d gasto_bruto
rename sexo mujer

recode p507 (1/4=1) (5/7=0), gen (ocupación_segura)

gen servicios = p1141+ p1142+ p1143+ p1144
recode servicios (1/4=1) (0=0), gen (Servicios)

gen salud= p4195 + p4192 + p4191
recode salud (1/3=1) (0=0), gen (seguro_salud)

drop linpe linea p507 p207 servicios salud p1145 p1141 p1142 p1143 p1144 p1145 p4191 p4195 p4192 p507 p112a p210 p301a

recode edad (0/5=1) (6/15=2) (16/40=3) (41/65=4) (66/99=5), gen (grupo_edad)
label var grupo_edad "grupo de edad" 
cap label drop etiqueta_edad
label define etiqueta_edad 1 "0-5" 2 "6-15" 3 "16-40" 4 "41-65" 5 "66-99"
label values grupo_edad etiqueta_edad
drop edad

recode trabajo (2=1) (1=0), gen (Trabajo)
recode internet_publico (1=1) (2=0), gen (Internet_publico)
recode centro_estudios (2=1) (1=0), gen (Centro_estudios)
drop trabajo internet_publico centro_estudios

//Regresiones
//Primer Indicador
//En niveles
reg ingreso_neto electricidad_alumbrado mujer i.grupo_edad i.nivel_estudios i.trabajo_contrato n_perceptores_ingreso Centro_estudios, r
estimates store Lineal_1
 
//En logaritmos
cap drop ln_ingreso_neto
gen ln_ingreso_neto = ln(ingreso_neto)
reg ln_ingreso_neto electricidad_alumbrado mujer i.grupo_edad i.nivel_estudios i.trabajo_contrato n_perceptores_ingreso Centro_estudios, r
estimates store Log_1
 
//Estandarizada
summ ingreso_neto
gen s_ingreso_neto=(ingreso_neto-r(mean))/r(sd)
reg s_ingreso_neto electricidad_alumbrado mujer i.grupo_edad i.nivel_estudios i.trabajo_contrato n_perceptores_ingreso Centro_estudios, r
estimates store Std_1
  
//Segundo Indicador
//En niveles
reg horas_trabajo_principal electricidad_alumbrado mujer i.grupo_edad i.trabajo_contrato i.nivel_estudios Centro_estudios ocupación_segura, r
estimates store Lineal_2

//En logaritmos
cap drop ln_horas_trabajo_principal
gen ln_horas_trabajo_principal = ln(horas_trabajo_principal)
reg ln_horas_trabajo_principal electricidad_alumbrado mujer i.grupo_edad i.trabajo_contrato i.nivel_estudios Centro_estudios ocupación_segura, r
estimates store Log_2

//Estandarizada
summ horas_trabajo_principal
gen s_horas_trabajo_principal =(horas_trabajo_principal-r(mean))/r(sd)
reg s_horas_trabajo_principal electricidad_alumbrado mujer i.grupo_edad i.trabajo_contrato i.nivel_estudios Centro_estudios ocupación_segura, r
estimates store Std_2

//Tercer Indicador
//En niveles
reg gasto_cultural electricidad_alumbrado i.pobreza n_personas_hogar Centro_estudios i.grupo_edad mujer i.nivel_estudios, r
estimates store Lineal_3

//En logaritmos
cap drop ln_gasto_cultural
gen ln_gasto_cultural = ln(gasto_cultural)
reg ln_gasto_cultural electricidad_alumbrado i.pobreza n_personas_hogar Centro_estudios i.grupo_edad mujer i.nivel_estudios, r
estimates store Log_3

//Estandarizada
summ gasto_cultural
gen s_gasto_cultural =(gasto_cultural-r(mean))/r(sd)
reg s_gasto_cultural electricidad_alumbrado i.pobreza n_personas_hogar Centro_estudios i.grupo_edad mujer i.nivel_estudios, r
estimates store Std_3

// Cada tabla representa un indicador, la primera columna es una regresión en niveles, la segunda es una regresión logarítmica y la tercera es estandarizada.
//Tabla Indicador ingreso_neto
est tab Lineal_1 Log_1 Std_1

//Tabla Indicador horas_trabajo_principal
est tab Lineal_2 Log_2 Std_2 

//Tabla Indicador gasto_cultural
est tab Lineal_3 Log_3 Std_3


 
