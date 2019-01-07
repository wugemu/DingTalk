.class public final Lema;
.super Ljava/lang/Object;
.source "DbMonitorUtils.java"


# static fields
.field private static a:Lcom/alibaba/doraemon/statistics/Statistics;

.field private static b:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

.field private static c:Ljava/util/Random;

.field private static d:Z

.field private static volatile e:I

.field private static volatile f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Lema;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 48
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    sput-object v0, Lema;->b:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 88
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lema;->c:Ljava/util/Random;

    .line 90
    sput-boolean v1, Lema;->d:Z

    .line 96
    sput v1, Lema;->e:I

    .line 98
    sput v1, Lema;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 106
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v1, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-ne v0, v1, :cond_0

    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_search_sqlite3_log_open"

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    new-instance v0, Lema$1;

    invoke-direct {v0}, Lema$1;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->setSqLiteLogCallback(Lcom/alibaba/sqlcrypto/SQLiteLogCallback;Z)V

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->setSqLiteLogCallback(Lcom/alibaba/sqlcrypto/SQLiteLogCallback;Z)V

    goto :goto_0
.end method

.method static synthetic a(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # Ljava/lang/String;

    .prologue
    .line 44
    .line 1164
    const-wide/32 v0, 0xea60

    cmp-long v0, p4, v0

    if-ltz v0, :cond_0

    sget v0, Lema;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 1165
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1169
    const-string/jumbo v1, "timestamp"

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    const-string/jumbo v1, "dbName"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    const-string/jumbo v1, "sql"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    const-string/jumbo v1, "duration"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    const-string/jumbo v1, "stack"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    const-string/jumbo v1, "DbMonitorUtils"

    const-string/jumbo v2, "DbMonitorUtils"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    sget v0, Lema;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lema;->f:I

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;JLjava/lang/String;)V
    .locals 7
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 44
    .line 1189
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_RELEASE:I

    if-eq v0, v2, :cond_0

    .line 1190
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v0

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v0, v2, :cond_1

    .line 1193
    :cond_0
    sget v0, Lema;->e:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_4

    .line 1198
    sget-object v0, Lema;->b:Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    invoke-interface {v0}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->isBackground()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1203
    sget-object v0, Lema;->c:Ljava/util/Random;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 1204
    if-gtz v0, :cond_4

    .line 1342
    :cond_1
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1343
    const-string/jumbo v0, "UNKNOWN"

    move-object v6, v0

    .line 1360
    :goto_0
    const-string/jumbo v0, "SELECT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "INSERT"

    .line 1361
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "UPDATE"

    .line 1362
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "REPLACE"

    .line 1363
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "DELETE"

    .line 1364
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_2
    move v0, v1

    .line 1210
    :goto_1
    if-nez v0, :cond_4

    .line 1214
    sget-boolean v0, Lema;->d:Z

    if-nez v0, :cond_3

    .line 2234
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v3

    .line 2235
    const-string/jumbo v0, "db_name"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2236
    const-string/jumbo v0, "db_ver"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2237
    const-string/jumbo v0, "s_type"

    invoke-virtual {v3, v0}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 2240
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 2241
    const-string/jumbo v0, "duration"

    invoke-virtual {v4, v0}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 2243
    sget-object v0, Lema;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v1, "db_monitor"

    const-string/jumbo v2, "sql_execute"

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/statistics/Statistics;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V

    .line 2245
    sput-boolean v5, Lema;->d:Z

    .line 1218
    :cond_3
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 1219
    const-string/jumbo v1, "db_name"

    invoke-virtual {v0, v1, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1220
    const-string/jumbo v1, "db_ver"

    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteGlobal;->getSqliteVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1221
    const-string/jumbo v1, "s_type"

    invoke-virtual {v0, v1, v6}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 1223
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 1224
    const-string/jumbo v2, "duration"

    long-to-double v4, p1

    invoke-static {v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValue;->create(D)Lcom/alibaba/mtl/appmonitor/model/MeasureValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureValue;)V

    .line 1226
    sget-object v2, Lema;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v3, "db_monitor"

    const-string/jumbo v4, "sql_execute"

    invoke-interface {v2, v3, v4, v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1228
    sget v0, Lema;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lema;->e:I

    .line 44
    :cond_4
    return-void

    .line 1346
    :cond_5
    const/4 v0, 0x0

    .line 1347
    const-string/jumbo v2, " "

    invoke-virtual {p3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1348
    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 1349
    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1351
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x7

    if-le v2, v3, :cond_8

    .line 1352
    :cond_7
    const-string/jumbo v0, "UNKNOWN"

    move-object v6, v0

    goto/16 :goto_0

    .line 1355
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto/16 :goto_0

    :cond_9
    move v0, v5

    .line 1368
    goto/16 :goto_1
.end method

.method public static b()V
    .locals 2

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->sSQLiteExecuteNotifyThresholdMS:J

    .line 130
    const-wide/16 v0, 0x4e20

    sput-wide v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->sSQLiteExecuteNotifyStackThresholdMS:J

    .line 133
    new-instance v0, Lema$2;

    invoke-direct {v0}, Lema$2;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->sSQLiteExecuteDurationListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteExecuteDurationListener;

    .line 150
    return-void
.end method
