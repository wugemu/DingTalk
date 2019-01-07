.class final Lii;
.super Ljava/lang/Object;
.source "DefaultAppMonitor.java"

# interfaces
.implements Lij;


# static fields
.field private static a:Z

.field private static b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    sput-boolean v1, Lii;->a:Z

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lii;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lii;->c:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lii;->d:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lii;->e:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    const-string/jumbo v0, "com.alibaba.mtl.appmonitor.AppMonitor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lii;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-boolean v0, Lii;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 54
    sget-boolean v0, Lii;->a:Z

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lii;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const-class v0, Lanet/channel/statist/RequestStatistic;

    invoke-virtual {p0, v0}, Lii;->a(Ljava/lang/Class;)V

    .line 57
    const-class v0, Lanet/channel/statist/SessionStatistic;

    invoke-virtual {p0, v0}, Lii;->a(Ljava/lang/Class;)V

    .line 58
    const-class v0, Lanet/channel/statist/ExceptionStatistic;

    invoke-virtual {p0, v0}, Lii;->a(Ljava/lang/Class;)V

    .line 59
    const-class v0, Lanet/channel/statist/AmdcStatistic;

    invoke-virtual {p0, v0}, Lii;->a(Ljava/lang/Class;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-string/jumbo v0, "awcn.DefaultAppMonitor"

    const-string/jumbo v1, "no appmonitor sdk"

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Lanet/channel/statist/StatObject;)V
    .locals 23
    .param p1, "obj"    # Lanet/channel/statist/StatObject;

    .prologue
    .line 68
    sget-boolean v17, Lii;->a:Z

    if-eqz v17, :cond_0

    if-nez p1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lanet/channel/statist/StatObject;->beforeCommit()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 76
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 77
    .local v4, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v17, Lanet/channel/statist/Monitor;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v14

    check-cast v14, Lanet/channel/statist/Monitor;

    .line 78
    .local v14, "monitor":Lanet/channel/statist/Monitor;
    if-eqz v14, :cond_0

    .line 83
    :try_start_0
    sget-object v17, Lii;->e:Ljava/util/Map;

    invoke-interface {v14}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    .line 84
    .local v12, "isStatSampled":Ljava/lang/Boolean;
    if-nez v12, :cond_2

    .line 85
    invoke-interface {v14}, Lanet/channel/statist/Monitor;->module()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v14}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->checkSampled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    .line 86
    sget-object v17, Lii;->e:Ljava/util/Map;

    invoke-interface {v14}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_2
    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 92
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v6

    .line 93
    .local v6, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v13

    .line 94
    .local v13, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    sget-object v17, Lii;->c:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 97
    .local v5, "dimensionFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    const/4 v15, 0x0

    .line 98
    .local v15, "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lanet/channel/util/ALog;->a(I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 99
    new-instance v15, Ljava/util/HashMap;

    .end local v15    # "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 102
    .restart local v15    # "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    :cond_3
    if-eqz v5, :cond_7

    .line 103
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 104
    .local v8, "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 105
    .local v16, "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    if-nez v16, :cond_4

    const-string/jumbo v17, ""

    :goto_2
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 140
    .end local v5    # "dimensionFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .end local v6    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v12    # "isStatSampled":Ljava/lang/Boolean;
    .end local v13    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .end local v15    # "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v16    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 141
    .local v7, "e":Ljava/lang/Throwable;
    const-string/jumbo v17, "awcn.DefaultAppMonitor"

    const-string/jumbo v18, "commit monitor point failed"

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v7, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 105
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v5    # "dimensionFields":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    .restart local v6    # "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v11    # "i$":Ljava/util/Iterator;
    .restart local v12    # "isStatSampled":Ljava/lang/Boolean;
    .restart local v13    # "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    .restart local v15    # "toPrintMeasures":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Double;>;"
    .restart local v16    # "value":Ljava/lang/Object;
    :cond_4
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_2

    .line 107
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v16    # "value":Ljava/lang/Object;
    :cond_5
    sget-object v17, Lii;->d:Ljava/util/Map;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/List;

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/reflect/Field;

    .line 108
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 109
    .local v16, "value":Ljava/lang/Double;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v13, v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 110
    if-eqz v15, :cond_6

    .line 111
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 115
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v11    # "i$":Ljava/util/Iterator;
    .end local v16    # "value":Ljava/lang/Double;
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 116
    .local v9, "fields":[Ljava/lang/reflect/Field;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_4
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v10, v0, :cond_b

    .line 117
    aget-object v8, v9, v10

    .line 118
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 119
    const-class v17, Lanet/channel/statist/Dimension;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 120
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .line 121
    .local v16, "value":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v18

    if-nez v16, :cond_9

    const-string/jumbo v17, ""

    :goto_5
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 116
    .end local v16    # "value":Ljava/lang/Object;
    :cond_8
    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 121
    .restart local v16    # "value":Ljava/lang/Object;
    :cond_9
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 124
    .end local v16    # "value":Ljava/lang/Object;
    :cond_a
    const-class v17, Lanet/channel/statist/Measure;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 125
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/reflect/Field;->getDouble(Ljava/lang/Object;)D

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    .line 126
    .local v16, "value":Ljava/lang/Double;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v13, v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 127
    if-eqz v15, :cond_8

    .line 128
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v15, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 134
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "fields":[Ljava/lang/reflect/Field;
    .end local v10    # "i":I
    .end local v16    # "value":Ljava/lang/Double;
    :cond_b
    invoke-interface {v14}, Lanet/channel/statist/Monitor;->module()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v14}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v6, v13}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 136
    const/16 v17, 0x1

    invoke-static/range {v17 .. v17}, Lanet/channel/util/ALog;->a(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 137
    const-string/jumbo v17, "awcn.DefaultAppMonitor"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "commit monitor point: "

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v14}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "\nDimensions"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    invoke-virtual {v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->getMap()Ljava/util/Map;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, "\nMeasures"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v17 .. v20}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/Class;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v12, Lii;->a:Z

    if-nez v12, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const-class v12, Lanet/channel/statist/Monitor;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lanet/channel/statist/Monitor;

    .line 182
    .local v11, "monitor":Lanet/channel/statist/Monitor;
    if-eqz v11, :cond_0

    .line 186
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 187
    .local v6, "fields":[Ljava/lang/reflect/Field;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .local v3, "dimensionFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v9, "measureFieldList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/reflect/Field;>;"
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v4

    .line 191
    .local v4, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v10

    .line 193
    .local v10, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v12, v6

    if-ge v7, v12, :cond_5

    .line 194
    aget-object v5, v6, v7

    .line 195
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v12, Lanet/channel/statist/Dimension;

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lanet/channel/statist/Dimension;

    .line 196
    .local v2, "dimension":Lanet/channel/statist/Dimension;
    if-eqz v2, :cond_3

    .line 197
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 198
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 193
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 202
    :cond_3
    const-class v12, Lanet/channel/statist/Measure;

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v8

    check-cast v8, Lanet/channel/statist/Measure;

    .line 203
    .local v8, "measure":Lanet/channel/statist/Measure;
    if-eqz v8, :cond_2

    .line 204
    const/4 v12, 0x1

    invoke-virtual {v5, v12}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 205
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v8}, Lanet/channel/statist/Measure;->max()D

    move-result-wide v12

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_4

    .line 207
    new-instance v12, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v8}, Lanet/channel/statist/Measure;->constantValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-interface {v8}, Lanet/channel/statist/Measure;->min()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-interface {v8}, Lanet/channel/statist/Measure;->max()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    invoke-direct/range {v12 .. v16}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v10, v12}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 210
    :cond_4
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    goto :goto_2

    .line 214
    .end local v2    # "dimension":Lanet/channel/statist/Dimension;
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v8    # "measure":Lanet/channel/statist/Measure;
    :cond_5
    sget-object v12, Lii;->c:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v12, Lii;->d:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v12, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-interface {v11}, Lanet/channel/statist/Monitor;->module()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11}, Lanet/channel/statist/Monitor;->monitorPoint()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v10, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    goto/16 :goto_0
.end method

.method public final a(Lju;)V
    .locals 5
    .param p1, "obj"    # Lju;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 147
    sget-boolean v0, Lii;->a:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p1, Lju;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lju;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-boolean v0, p1, Lju;->a:Z

    if-nez v0, :cond_2

    .line 155
    iget-object v0, p1, Lju;->e:Ljava/lang/String;

    iget-object v1, p1, Lju;->f:Ljava/lang/String;

    iget-object v2, p1, Lju;->b:Ljava/lang/String;

    invoke-static {v2}, Lla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lju;->c:Ljava/lang/String;

    invoke-static {v3}, Lla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lju;->d:Ljava/lang/String;

    invoke-static {v4}, Lla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v0, p1, Lju;->e:Ljava/lang/String;

    iget-object v1, p1, Lju;->f:Ljava/lang/String;

    iget-object v2, p1, Lju;->b:Ljava/lang/String;

    invoke-static {v2}, Lla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljv;)V
    .locals 6
    .param p1, "obj"    # Ljv;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 167
    sget-boolean v0, Lii;->a:Z

    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p1, Ljv;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Ljv;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p1, Ljv;->c:Ljava/lang/String;

    iget-object v1, p1, Ljv;->d:Ljava/lang/String;

    iget-object v2, p1, Ljv;->a:Ljava/lang/String;

    invoke-static {v2}, Lla;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Ljv;->b:D

    invoke-static {v0, v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Counter;->commit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    goto :goto_0
.end method
