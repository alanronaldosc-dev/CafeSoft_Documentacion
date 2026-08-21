# Diccionario de Datos - CoffeeSoft

Este documento describe las tablas, columnas, tipos de datos, obligatoriedad y restricciones de la base de datos de CoffeeSoft.

## Tabla: `categorias`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id` | `bigint` | No | Primary Key, DEFAULT nextval('categorias_id_seq') |

| `activo` | `boolean` | No | - |

| `created_at` | `timestamp(6) without time zone` | Sí | - |

| `descripcion` | `character varying(255)` | Sí | - |

| `nombre` | `character varying(100)` | No | UNIQUE (uk_qcog8b7hps1hioi9onqwjdt6y) |

## Tabla: `insumos`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id` | `bigint` | No | Primary Key, DEFAULT nextval('insumos_id_seq') |

| `nombre` | `character varying(20)` | No | - |

| `precio` | `double precision` | No | CHECK (precio >= 0) |

| `proveedor` | `character varying(100)` | No | - |

| `tipo` | `character varying(100)` | No | - |

| `unidad_medida` | `character varying(20)` | No | - |

## Tabla: `inventario`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id` | `bigint` | No | Primary Key, DEFAULT nextval('inventario_id_seq') |

| `caducidad` | `character varying(255)` | Sí | - |

| `cantidad` | `double precision` | No | CHECK (cantidad >= 0) |

| `cantidad_minima` | `double precision` | No | CHECK (cantidad_minima >= 0) |

| `nombre` | `character varying(100)` | No | - |

| `precio_unitario` | `double precision` | No | CHECK (precio_unitario >= 0) |

| `proveedor` | `character varying(100)` | Sí | - |

| `tipo` | `character varying(50)` | No | - |

| `unidad_medida` | `character varying(20)` | No | - |

## Tabla: `lotes`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id` | `bigint` | No | Primary Key, DEFAULT nextval('lotes_id_seq') |

| `cantidad` | `double precision` | No | - |

| `fecha_caducidad` | `date` | No | - |

| `fecha_entrada` | `date` | No | - |

| `observaciones` | `character varying(255)` | Sí | - |

| `insumo_id` | `bigint` | No | Foreign Key -> insumos(id) (fko83xrpwx7u1vyw0b5ipp9pdtf) |

## Tabla: `producto_insumo`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id` | `bigint` | No | Primary Key, DEFAULT nextval('producto_insumo_id_seq') |

| `cantidad` | `double precision` | No | - |

| `unidad_medida` | `character varying(20)` | No | - |

| `insumo_id` | `bigint` | No | Foreign Key -> inventario(id) (fk3k6hfsyx5lj661mfym5fqj9m5) |

| `producto_id` | `bigint` | No | Foreign Key -> productos(id) (fkjkfhcjhxv9hecnacuwxrt828x) |

## Tabla: `productos`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id` | `bigint` | No | Primary Key, DEFAULT nextval('productos_id_seq') |

| `descripcion` | `character varying(500)` | Sí | - |

| `imagen` | `bytea` | Sí | - |

| `nombre` | `character varying(100)` | No | - |

| `precio` | `double precision` | No | CHECK (precio >= 0) |

| `categoria_id` | `bigint` | Sí | Foreign Key -> categorias(id) (fk2fwq10nwymfv7fumctxt9vpgb) |

## Tabla: `usuarios`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id_usuario` | `bigint` | No | Primary Key, DEFAULT nextval('usuarios_id_usuario_seq') |

| `created_at` | `timestamp(6) without time zone` | Sí | - |

| `direccion` | `character varying(255)` | No | - |

| `email` | `character varying(255)` | No | UNIQUE (uk_kfsp0s1tflm1cwlj8idhqsad0) |

| `nombre` | `character varying(255)` | No | - |

| `password` | `character varying(255)` | No | - |

| `push_token` | `character varying(255)` | Sí | - |

| `telefono` | `character varying(255)` | No | - |

| `user_tipo` | `integer` | No | - |

## Tabla: `venta_detalles`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id` | `bigint` | No | Primary Key, DEFAULT nextval('venta_detalles_id_seq') |

| `cantidad` | `integer` | No | CHECK (cantidad >= 1) |

| `precio_unitario` | `double precision` | No | CHECK (precio_unitario >= 0) |

| `subtotal` | `double precision` | No | CHECK (subtotal >= 0) |

| `producto_id` | `bigint` | No | Foreign Key -> productos(id) (fke1gvs8gted01cefvq4310ir99) |

| `venta_id` | `bigint` | No | Foreign Key -> ventas(id) (fk6oe5rpuq8yx6emqvsfb50nipb) |

## Tabla: `ventas`

| Columna | Tipo de Dato | Opcional | Claves y Restricciones |
|---|---|---|---|
| `id` | `bigint` | No | Primary Key, DEFAULT nextval('ventas_id_seq') |

| `cambio` | `double precision` | Sí | - |

| `created_at` | `timestamp(6) without time zone` | No | - |

| `descuento` | `double precision` | No | CHECK (descuento >= 0) |

| `fecha` | `timestamp(6) without time zone` | No | - |

| `folio` | `character varying(20)` | No | UNIQUE (uk_b5y0botwo90l4gfoixw3kjnhr) |

| `impuestos` | `double precision` | No | CHECK (impuestos >= 0) |

| `metodo_pago` | `character varying(20)` | No | - |

| `monto_efectivo` | `double precision` | Sí | - |

| `observaciones` | `character varying(500)` | Sí | - |

| `subtotal` | `double precision` | No | CHECK (subtotal >= 0) |

| `total` | `double precision` | No | CHECK (total >= 0) |

| `usuario_id` | `bigint` | No | Foreign Key -> usuarios(id_usuario) (fkco9r9xjcdqtgd4nvnnolsr6ei) |

| `estado_pedido` | `character varying(20)` | Sí | - |

| `nombre_cliente` | `character varying(100)` | Sí | - |
