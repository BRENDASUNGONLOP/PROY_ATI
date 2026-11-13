# ATI | Agente Tutor Inteligente

Repositorio: https://github.com/BRENDASUNGONLOP/PROY_ATI

Prototipo de interfaz en Flutter del **Agente Tutor Inteligente (ATI)**. Incluye tres vistas, que se cambian desde el selector de rol de la barra superior:

- **Estudiante:** inicio, progreso académico, horario y consulta al ATI.
- **Tutor / Profesor:** panel de atención con solicitudes canalizadas.
- **Administrador:** panel de gestión del sistema.

> Es un prototipo visual: los datos son de ejemplo y los botones aún no tienen lógica.

<p align="center">
  <img src="docs/captura_inicio.png" alt="Pantalla de inicio del estudiante en el emulador de Android" width="300">
</p>

<p align="center"><em>Pantalla de inicio del estudiante ejecutándose en el emulador de Android.</em></p>

---

## 1. Requisitos

Instala lo siguiente antes de empezar:

| Herramienta | Para qué sirve | Enlace |
|---|---|---|
| **Flutter SDK** (versión estable reciente) | Framework para ejecutar el proyecto | https://docs.flutter.dev/get-started/install |
| **Android Studio** | Editor y emulador de Android | https://developer.android.com/studio |
| **Git** | Descargar el proyecto | https://git-scm.com/downloads |

Al instalar Android Studio, agrega los plugins **Flutter** y **Dart** desde *Settings → Plugins*.

Verifica que todo quedó bien ejecutando en una terminal:

```bash
flutter doctor
```

Todo debe aparecer con ✓ (marca verde). Si algo sale con ✗, el mismo comando te indica cómo resolverlo. Si te pide aceptar licencias de Android:

```bash
flutter doctor --android-licenses
```

---

## 2. Descargar el proyecto

**Opción A: con Git**

```bash
git clone https://github.com/BRENDASUNGONLOP/PROY_ATI.git
cd PROY_ATI
```

**Opción B: como ZIP**

1. En la página del repositorio, pulsa **Code → Download ZIP**.
2. Descomprime el archivo.
3. Recuerda la ubicación de la carpeta `PROY_ATI` (o `PROY_ATI-main`, según el nombre que genere GitHub).

---

## 3. Abrir el proyecto

1. Abre **Android Studio**.
2. Ve a **File → Open** y selecciona la carpeta `PROY_ATI`.
3. Espera a que termine de indexar. Si aparece un aviso arriba, pulsa **Pub get**.

Para instalar las dependencias también puedes usar la terminal, dentro de la carpeta del proyecto:

```bash
flutter pub get
```

---

## 4. Ejecutar la aplicación

### En el emulador de Android

**Crear el emulador (solo la primera vez):**

1. Ve a **Tools → Device Manager**.
2. Pulsa **Create Device**, elige un teléfono (por ejemplo *Pixel 7*) y pulsa **Next**.
3. Elige una imagen de sistema (si tiene un ícono de descarga ↓, descárgala) y pulsa **Next → Finish**.

**Ejecutar:**

1. En Device Manager, pulsa ▶ junto al emulador y espera a que cargue la pantalla del teléfono.
2. En la barra superior, selecciona ese emulador en el selector de dispositivos.
3. Abre `lib/main.dart` y selecciona **`main.dart`** en el selector de configuración.
4. Pulsa el botón verde ▶ (**Run**).

La primera compilación puede tardar unos minutos.

### Desde la terminal

Con el emulador abierto (o un dispositivo conectado), dentro de la carpeta `PROY_ATI`:

```bash
flutter devices        # muestra los dispositivos disponibles
flutter run            # ejecuta en el dispositivo disponible
flutter run -d <id>    # ejecuta en un dispositivo específico
```

### En Chrome o Windows (pantalla ancha)

El diseño actual está pensado para pantalla de escritorio, por lo que se aprecia mejor así:

```bash
flutter run -d chrome
flutter run -d windows
```

### En un teléfono Android real

1. Activa las **Opciones de desarrollador**: Ajustes → Acerca del teléfono → toca 7 veces "Número de compilación".
2. Activa **Depuración USB** y conecta el teléfono por cable.
3. Acepta el permiso que aparece en el teléfono.
4. Verifica con `flutter devices` y ejecuta `flutter run`.

---

## 5. Estructura del proyecto

```
lib/
├── main.dart                     # Punto de entrada: main()
├── app.dart                      # ATILocalApp (MaterialApp)
├── core/
│   └── app_theme.dart            # Tema y colores
├── screens/                      # Pantallas completas
│   ├── main_container_screen.dart    # Barra superior y selector de rol
│   ├── student/                      # Vistas del estudiante
│   ├── teacher/                      # Panel del tutor
│   └── admin/                        # Panel del administrador
└── widgets/                      # Componentes reutilizables
    ├── common/                       # Barra lateral, encabezado
    ├── student/                      # Tarjetas, menú, horario
    ├── teacher/                      # Métricas y tabla de solicitudes
    └── admin/                        # Tarjetas y métricas del sistema
```

**Flujo de la aplicación:**

```
main() → ATILocalApp → MainContainerScreen
                           ├─ StudentNavigator → Inicio | Progreso | Horario | Consulta ATI
                           ├─ TeacherDashboardScreen
                           └─ AdminDashboardScreen
```

---

## 6. Comandos útiles durante el desarrollo

| Acción | Cómo |
|---|---|
| **Hot Reload** (aplica cambios sin reiniciar) | Botón ⚡ en Android Studio, o tecla `r` en la terminal |
| **Hot Restart** (reinicia la app) | Botón 🔄 en Android Studio, o tecla `R` en la terminal |
| Ejecutar pruebas | `flutter test` |
| Limpiar la compilación | `flutter clean` y luego `flutter pub get` |

---

## 7. Problemas frecuentes

- **`flutter` no se reconoce como comando:** agrega la carpeta `flutter/bin` a la variable de entorno `PATH` y reinicia la terminal.
- **No aparece ningún dispositivo en `flutter devices`:** abre primero el emulador desde Device Manager, o revisa la conexión USB y la depuración USB si usas un teléfono real.
- **Errores al compilar después de abrir el proyecto:** ejecuta `flutter clean`, luego `flutter pub get` y vuelve a correr.
- **La interfaz se ve desbordada o con franjas amarillas y negras en el emulador de teléfono:** el diseño está pensado para pantalla ancha. Prueba con Chrome (`flutter run -d chrome`) o con un emulador tipo tablet.
- **Cualquier otro problema de instalación:** ejecuta `flutter doctor -v` y revisa qué componente falta.