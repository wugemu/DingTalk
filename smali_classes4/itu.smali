.class public final Litu;
.super Ljava/lang/Object;
.source "DeviceSensorInfo.java"


# static fields
.field private static i:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:I

.field private static k:I


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/SensorEventListener;

.field private d:Landroid/hardware/SensorEventListener;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end field

.field private l:Litx;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 84
    sput v3, Litu;->j:I

    .line 85
    sput v3, Litu;->k:I

    .line 90
    :try_start_0
    const-class v0, Landroid/hardware/Sensor;

    const-string/jumbo v1, "TYPE_GRAVITY"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Litu;->j:I

    .line 92
    const-class v0, Landroid/hardware/Sensor;

    const-string/jumbo v1, "TYPE_LINEAR_ACCELERATION"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Litu;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Litu;->i:Landroid/util/SparseArray;

    .line 98
    sget v0, Litu;->j:I

    if-eq v0, v3, :cond_0

    .line 99
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    sget v1, Litu;->j:I

    const-string/jumbo v2, "Gravity"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    :cond_0
    sget v0, Litu;->k:I

    if-eq v0, v3, :cond_1

    .line 102
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    sget v1, Litu;->k:I

    const-string/jumbo v2, "Acceleration"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 104
    :cond_1
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string/jumbo v2, "Gyroscope"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string/jumbo v2, "Light"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 106
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string/jumbo v2, "Magnetic"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string/jumbo v2, "Proximity"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 108
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "Temperature"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "Pressure"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Litu;->a:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litu;->e:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litu;->f:Ljava/util/List;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litu;->g:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Litu;->h:Ljava/util/List;

    .line 117
    new-instance v0, Litu$1;

    invoke-direct {v0, p0}, Litu$1;-><init>(Litu;)V

    iput-object v0, p0, Litu;->l:Litx;

    .line 42
    return-void
.end method

.method static synthetic a()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Litu;->i:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v2, 0x32

    const/4 v6, -0x1

    .line 51
    const-class v5, Litu;

    monitor-enter v5

    :try_start_0
    new-instance v0, Litu;

    invoke-direct {v0}, Litu;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    .local v0, "deviceSensorInfo":Litu;
    :try_start_1
    iget-object v1, v0, Litu;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1183
    iget-object v1, v0, Litu;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1184
    iget-object v1, v0, Litu;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1185
    iget-object v1, v0, Litu;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1186
    iget-object v1, v0, Litu;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1188
    iget-object v1, v0, Litu;->b:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, v0, Litu;->b:Landroid/hardware/SensorManager;

    iget-object v3, v0, Litu;->d:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1190
    iget-object v1, v0, Litu;->b:Landroid/hardware/SensorManager;

    iget-object v3, v0, Litu;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1192
    :cond_0
    const-string/jumbo v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, v0, Litu;->b:Landroid/hardware/SensorManager;

    .line 1194
    new-instance v1, Litw;

    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    iget-object v4, v0, Litu;->l:Litx;

    invoke-direct {v1, v3, v4}, Litw;-><init>(Landroid/hardware/SensorManager;Litx;)V

    iput-object v1, v0, Litu;->d:Landroid/hardware/SensorEventListener;

    .line 1196
    new-instance v1, Litv;

    iget-object v3, v0, Litu;->l:Litx;

    invoke-direct {v1, v3}, Litv;-><init>(Litx;)V

    iput-object v1, v0, Litu;->c:Landroid/hardware/SensorEventListener;

    .line 1199
    iget-object v1, v0, Litu;->b:Landroid/hardware/SensorManager;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 1204
    sget v3, Litu;->j:I

    if-eq v3, v6, :cond_1

    .line 1205
    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    sget v4, Litu;->j:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Litu;->b(Ljava/util/List;Landroid/hardware/Sensor;)V

    .line 1208
    :cond_1
    sget v3, Litu;->k:I

    if-eq v3, v6, :cond_2

    .line 1209
    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    sget v4, Litu;->k:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Litu;->b(Ljava/util/List;Landroid/hardware/Sensor;)V

    .line 1214
    :cond_2
    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Litu;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    .line 1216
    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Litu;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    .line 1218
    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Litu;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    .line 1220
    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Litu;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    .line 1222
    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Litu;->a(Ljava/util/List;Landroid/hardware/Sensor;)V

    .line 1224
    iget-object v3, v0, Litu;->b:Landroid/hardware/SensorManager;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Litu;->a(Ljava/util/List;Landroid/hardware/Sensor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1266
    :goto_0
    const/16 v1, 0xa

    .line 1268
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1271
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Litu$2;

    invoke-direct {v4, v0}, Litu$2;-><init>(Litu;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1288
    const-wide/16 v8, 0x32

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    .line 1291
    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_4

    .line 1292
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Litu$3;

    invoke-direct {v3, v0}, Litu$3;-><init>(Litu;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1309
    const-wide/16 v8, 0x64

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    move v1, v2

    .line 1312
    :goto_2
    sget-object v3, Litw;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_3

    .line 1314
    const-wide/16 v8, 0x14

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v4

    .line 1316
    goto :goto_1

    :cond_4
    move v1, v2

    .line 1320
    :goto_3
    sget-object v2, Litv;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_5

    .line 1322
    const-wide/16 v8, 0x14

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V

    move v1, v2

    goto :goto_3

    .line 1324
    :cond_5
    iget-object v1, v0, Litu;->b:Landroid/hardware/SensorManager;

    iget-object v2, v0, Litu;->c:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1325
    iget-object v1, v0, Litu;->b:Landroid/hardware/SensorManager;

    iget-object v2, v0, Litu;->d:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "total time:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1341
    :goto_4
    :try_start_3
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, v0, Litu;->a:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 55
    monitor-exit v5

    return-object v1

    .line 51
    .end local v0    # "deviceSensorInfo":Litu;
    :catchall_0
    move-exception v1

    monitor-exit v5

    throw v1

    .restart local v0    # "deviceSensorInfo":Litu;
    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method static synthetic a(Litu;[F)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Litu;
    .param p1, "x1"    # [F

    .prologue
    .line 39
    invoke-static {p1}, Litu;->a([F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([F)Ljava/lang/String;
    .locals 8
    .param p0, "values"    # [F

    .prologue
    .line 141
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 142
    .local v3, "list":Lorg/json/JSONArray;
    move-object v0, p0

    .local v0, "arr$":[F
    array-length v2, p0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget v4, v0, v1

    .line 144
    .local v4, "v":F
    float-to-double v6, v4

    :try_start_0
    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    :catch_0
    move-exception v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_1

    .line 149
    .end local v4    # "v":F
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 151
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method static synthetic a(Litu;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Litu;

    .prologue
    .line 39
    iget-object v0, p0, Litu;->a:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/util/List;Landroid/hardware/Sensor;)V
    .locals 4
    .param p2, "targetSensor"    # Landroid/hardware/Sensor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Landroid/hardware/Sensor;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 232
    .local p1, "allSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 241
    :cond_0
    return-void

    .line 235
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 236
    .local v1, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 237
    iget-object v2, p0, Litu;->f:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v2, p0, Litu;->e:Ljava/util/List;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic b(Litu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Litu;

    .prologue
    .line 39
    iget-object v0, p0, Litu;->g:Ljava/util/List;

    return-object v0
.end method

.method private b(Ljava/util/List;Landroid/hardware/Sensor;)V
    .locals 6
    .param p2, "targetSensor"    # Landroid/hardware/Sensor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;",
            "Landroid/hardware/Sensor;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 244
    .local p1, "allSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 256
    :cond_0
    return-void

    .line 247
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    .line 248
    .local v3, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 249
    iget-object v4, p0, Litu;->h:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    const/16 v0, 0xa

    .local v0, "i":I
    move v1, v0

    .line 251
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 252
    iget-object v4, p0, Litu;->g:Ljava/util/List;

    invoke-virtual {p2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0
.end method

.method static synthetic c(Litu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Litu;

    .prologue
    .line 39
    iget-object v0, p0, Litu;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Litu;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Litu;

    .prologue
    .line 39
    iget-object v0, p0, Litu;->c:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic e(Litu;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Litu;

    .prologue
    .line 39
    iget-object v0, p0, Litu;->b:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic f(Litu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Litu;

    .prologue
    .line 39
    iget-object v0, p0, Litu;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Litu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Litu;

    .prologue
    .line 39
    iget-object v0, p0, Litu;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h(Litu;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Litu;

    .prologue
    .line 39
    iget-object v0, p0, Litu;->d:Landroid/hardware/SensorEventListener;

    return-object v0
.end method
