Aquí tienes una guía paso a paso y muy visual para diseñar este póster científico en **PowerPoint**, optimizada para un formato estándar de congreso (**A0 vertical: 841 × 1189 mm**).

---

## 1. Configuración Inicial del Lienzo en PowerPoint

Antes de colocar los contenidos, debes configurar el tamaño real del póster para evitar problemas de escala o pixelación al imprimir:

1. Abre una presentación en blanco en PowerPoint.
2. Ve a la pestaña **Diseño** > **Tamaño de diapositiva** > **Personalizar tamaño de diapositiva**.
3. Configura las dimensiones:
* **Ancho:** `84.1 cm`
* **Alto:** `118.9 cm`
* **Orientación:** Vertical.


4. **Estructura en columnas:** Te recomiendo dibujar con líneas guía (pestaña Vista > Guías) una **estructura de 2 o 3 columnas**. Para un póster con tablas y gráficos, **2 columnas anchas** facilitan mucho la lectura.

---

## 2. Paleta de Colores Sugerida (Estilo Médico / Científico)

Para mantener un aspecto profesional y limpio, utiliza una paleta de 3 o 4 colores como máximo:

* **Color Primario (Encabezados y Banner):** Azul oscuro o azul marino corporativo (ej. Hex: `#1A365D` o tono institucional de la LMU/DaSCI).
* **Color Secundario (Subtítulos o destaques):** Azul acro / celeste (ej. Hex: `#3182CE`).
* **Fondo:** Blanco o gris muy claro (`#F7FAFC`) para dar sensación de limpieza.
* **Texto principal:** Gris muy oscuro o casi negro (`#2D3748`) para evitar el contraste agresivo del negro puro.

---

## 3. Distribución Bloque por Bloque (Copy-Paste para tu PPT)

### Bloque 0: Banner Superior (Ancho completo)

* **Diseño:** Un rectángulo superior de fondo azul oscuro con el texto en blanco.
* **Título principal (Español):**
> **Diagnóstico Diferencial de EP, PSP y AMS: Un Enfoque Basado en XGBoost para el Análisis de Capas Retinianas**
> 


* **Título en Inglés (Subtítulo en cursiva):**
> *Differential Diagnosis of PD, PSP, and MSA: An XGBoost Approach to Retinal Layer Analysis*
> 


* **Autores y Afiliaciones (Tamaño de fuente pequeño, ej. 14-16pt):**
> M. Rodriguez-Rubio¹, F.J. Martinez-Murcia¹, J. E. Arco², I. A. Illán¹, F. Segovia¹, C. Jimenez-Mesa¹, C. Vazquez-Garcia¹, J.M. Gorriz¹, J. Ramirez¹, S. Schönecker³, S. Kamp³, L. Klatte³, S. Katzdobler³, L. Marth³, O. Wagemann³, C. Palleis³, U. Fietzek³, E. Weidinger³, A. Danek³, G. Hölinger³, J. Havla³, A. Bernhardt³, A. Jäck³, J. Levin³
> 
> 
> *¹DaSCI, Universidad de Granada, España | ²CIMCYC, Granada, España | ³LMU University Hospital, Múnich, Alemania*
> 



---

### Columna Izquierda

#### 1. Introducción y Motivación

* *Crea una caja de texto con fondo blanco y un borde sutil.*
* **Texto:**
* **El reto clínico:** La enfermedad de Parkinson (EP), la parálisis supranuclear progresiva (PSP) y la atrofia multisistémica (AMS) presentan síntomas clínicos solapados en etapas tempranas, dificultando su diagnóstico diferencial.


* **Bases biológicas:** La EP y la AMS son **sinucleinopatías** (agregación de alfa-sinucleína), mientras que la PSP es una **tauopatía** (depósito de proteína tau).


* **La retina como ventana al SNC:** La Tomografía de Coherencia Óptica (OCT) permite cuantificar capas retinianas de forma no invasiva para detectar patrones de adelgazamiento específicos.


* **Objetivo:** Evaluar un modelo de *Machine Learning* basado en **XGBoost** para automatizar la estratificación mediante biomarcadores morfométricos de la retina.





#### 2. Metodología y Datos

* **Subsección A: Cohorte ($N = 134$)**
* Inserte una tabla limpia de 4 columnas con los datos demográficos:


| Grupo | $N$ | Edad (Media ± DE) | Sexo (H/M)* |
| --- | --- | --- | --- |
| **HC** | 36

 | $63.6 \pm 9.9$<br> | 20 / 33

 |
| **PD** | 46

 | $59.5 \pm 13.0$<br> | 29 / 19

 |
| **PSP** | 34

 | $70.4 \pm 7.5$<br> | 20 / 17

 |
| **MSA** | 18

 | $59.0 \pm 7.6$<br> | 20 / 9

 |


* *Nota:* 9 capas maculares segmentadas (RNFL, GCL, IPL, INL, OPL, ONL, RPE), agregados (IRL, ORL) y volumen total (TMV) para un total de 29 características.




* **Subsección B: Esquema de Clasificación**
* Algoritmo: **XGBoost** con validación cruzada estratificada ($10 \times 5\text{-fold CV}$).


* 4 Tareas: **HvP** (HC vs. Parkinsonismo), **SvT** (PD+MSA vs. PSP), **3-Clases** (PD vs. PSP vs. MSA) y **4-Clases** (HC vs. PD vs. PSP vs. MSA).





---

### Columna Derecha

#### 3. Resultados Principales

* **Texto destacado / Gráfico:**
> El conjunto de características originales (*raw*) superó consistentemente a la reducción dimensional por PCA en todas las tareas.
> 
> 


* Inserte una tabla resumen con los resultados de rendimiento:


| Tarea | Normalización | Exactitud (*Accuracy*) | *Balanced Acc.* | *F1-Macro* |
| --- | --- | --- | --- | --- |
| **HvP** (HC vs. Rest) | $Z$<br> | **$0.724 \pm 0.079$**<br> | $0.609 \pm 0.064$<br> | $0.619 \pm 0.073$<br> |
| **SvT** (PD+MSA vs. PSP) | $\text{TMV}+Z$<br> | **$0.704 \pm 0.057$**<br> | $0.650 \pm 0.071$<br> | $0.652 \pm 0.071$<br> |
| **3-Clases** (PD/PSP/MSA) | $\text{TMV}+Z$<br> | **$0.521 \pm 0.100$**<br> | $0.472 \pm 0.105$<br> | $0.440 \pm 0.111$<br> |
| **4-Clases** (Completa) | $Z$<br> | **$0.395 \pm 0.120$**<br> | $0.374 \pm 0.110$<br> | $0.354 \pm 0.112$<br> |



#### 4. Discusión y Conclusiones

* **Estratificación biológica robusta:** El modelo distingue con notable éxito las sinucleinopatías de las tauopatías ($\approx 70\%$ de exactitud), reflejando que los agregados proteicos alteran de forma divergente las capas retinianas.


* **Desafío multiclase:** La menor precisión en los modelos de 3 y 4 clases subraya el importante solapamiento clínico y morfológico entre la EP y la AMS.


* **Perspectiva:** La combinación de OCT y *Machine Learning* habilita una vía rápida, no invasiva y objetiva para la estratificación de pacientes en estadios tempranos.



---

### Pie de Página (Ancho Completo - Franja Inferior)

* **Financiación:** Proyectos PID2022-137629OA-I00, CNS2024-154296, PID2022-137451OB-I00 (MICIU/AEI/FEDER), beca RYC2021-030875-I (EU/NextGenerationEU), Friedrich-Baur-Stiftung y programa FöFoLe (LMU Múnich).


* **Referencias clave:** [1] C. Palleis et al., *Brain*, 2026; [2] N. Mammadova et al., *Biomedicines*, 2026; [3] P. Visser et al., *Appl. Sci.*, 2024.



---

## 4. Consejos de Diseño Clave para PowerPoint

* **Tamaño de fuente legible a 1 metro:**
* Título principal: `44 - 54 pt`
* Cabeceras de sección (1. Introducción...): `28 - 32 pt` (en negrita y con color de acento).
* Texto de los párrafos: `20 - 24 pt` (nunca bajes de 18 pt para que sea legible en papel).


* **Alineación:** Utiliza las herramientas de alineación nativas de PowerPoint (*Organizar > Alineación*) para que las cajas de texto de cada columna guarden perfecta simetría horizontal y vertical.
* **Exportación:** Cuando termines, ve a **Archivo > Guardar como > PDF** para asegurarte de que las fuentes y vectores no se desconfiguren al llevarlo a la imprenta.
