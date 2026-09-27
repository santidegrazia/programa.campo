# Facturador ARCA Ganadero 🐂⚡

Sistema de Liquidación y Facturación Inmediata de Lotes de Hacienda Bovina con **ARCA (ex-AFIP)**.

Desarrollado específicamente para eliminar por completo las planillas de cálculo intermedias (Excel) y la navegación lenta por los menús web de AFIP.

---

## 🚀 Cómo Iniciar el Programa

El servidor ya se encuentra funcionando en:
👉 **[http://localhost:3000](http://localhost:3000)**

Para iniciarlo en cualquier momento:
* Doble clic en `iniciar.bat` (abre el navegador y corre el servidor automáticamente).
* O por consola:
  ```bash
  cd facturador-arca
  node server.js
  ```

---

## ✨ Características Principales

1. **Pantalla Única "Anti-Excel"**:
   * Carga del lote en 30 segundos.
   * **Cálculo Reactivo en Vivo**: Escribís *Cabezas*, *Kilos Totales* y *Precio* y se actualizan al instante el promedio por animal ($kg/cabeza$), el subtotal neto, el **IVA Hacienda 10,5%** y el total final.
   * Modos de venta: **Al Kilo Vivo** o **Por Cabeza**.
   * Chips rápidos de categoría: Novillitos, Vacas, Vaquillonas, Terneros, Toros, Novillos.

2. **Validaciones y Control Sanitario (SENASA / RUCA)**:
   * CUIT con validación de Módulo 11 y autocompletado desde Padrón.
   * DTE (Documento de Tránsito Electrónico).
   * RENSPA de origen.
   * Número de RUCA.

3. **Integración con ARCA**:
   * Generación y autorización inmediata de **CAE** y Fecha de Vencimiento de CAE.
   * Generación del **Código QR Oficial de ARCA** (según especificación RG 4291 con URL codificada en Base64).
   * Generación de comprobante oficial impreso en formato A4 listo para PDF.
   * Botón directo para compartir el comprobante por **WhatsApp** al comprador.

4. **Historial de Liquidaciones**:
   * Registro permanente con número correlativo, CAE, importes y reimpresión con un clic.

5. **Configuración de Punto de Venta**:
   * Parámetros del emisor (CUIT, Razón Social, IIBB, RUCA, Punto de Venta WSLSP).

---

## 📁 Estructura del Proyecto

```
facturador-arca/
├── iniciar.bat              # Lanzador en 1 clic para Windows
├── package.json             # Dependencias (Express, QRCode, CORS)
├── server.js                # Backend API REST, validaciones, cálculo y ARCA
├── data/                    # Persistencia local (JSON)
│   ├── config.json          # Datos del emisor y punto de venta
│   └── liquidaciones.json   # Histórico de comprobantes emitidos
└── public/                  # Frontend Web App
    ├── index.html           # Interfaz de usuario interactiva
    ├── style.css            # Estilos modernos dark agro-fintech
    └── app.js               # Lógica reactiva en tiempo real
```
