.class public final Liks;
.super Ljava/lang/Object;
.source "AppenderManager.java"


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Likr;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lijz;

.field public c:Z


# direct methods
.method public constructor <init>(Lijz;)V
    .locals 14

    .prologue
    const/16 v11, 0x2000

    const-wide/16 v12, 0x1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Liks;->a:Ljava/util/Map;

    .line 27
    iput-object p1, p0, Liks;->b:Lijz;

    .line 29
    new-instance v1, Likt;

    const-string/jumbo v3, "applog"

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 30
    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x4

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-wide/32 v8, 0x1400000

    const/high16 v10, 0x10000

    move-object v2, p1

    invoke-direct/range {v1 .. v10}, Likt;-><init>(Lijz;Ljava/lang/String;JJJI)V

    .line 31
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v2, "applog"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Likt;

    const-string/jumbo v3, "trafficLog"

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 34
    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x10

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-wide/32 v8, 0x800000

    move-object v2, p1

    move v10, v11

    invoke-direct/range {v1 .. v10}, Likt;-><init>(Lijz;Ljava/lang/String;JJJI)V

    .line 35
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v2, "trafficLog"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Likt;

    const-string/jumbo v3, "logcat"

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 38
    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    const-wide/32 v8, 0x400000

    move-object v2, p1

    move v10, v11

    invoke-direct/range {v1 .. v10}, Likt;-><init>(Lijz;Ljava/lang/String;JJJI)V

    .line 39
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v2, "logcat"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "userbehavor"

    new-instance v2, Likv;

    const-string/jumbo v3, "userbehavor"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "autouserbehavor"

    new-instance v2, Likv;

    const-string/jumbo v3, "autouserbehavor"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "exception"

    new-instance v2, Likv;

    const-string/jumbo v3, "exception"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    sget-object v1, Lijy;->b:Ljava/lang/String;

    new-instance v2, Likv;

    sget-object v3, Lijy;->b:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    sget-object v1, Lijy;->a:Ljava/lang/String;

    new-instance v2, Likv;

    sget-object v3, Lijy;->a:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "romesync"

    new-instance v2, Likv;

    const-string/jumbo v3, "romesync"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    sget-object v1, Lijy;->c:Ljava/lang/String;

    new-instance v2, Likv;

    sget-object v3, Lijy;->c:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    sget-object v1, Lijy;->d:Ljava/lang/String;

    new-instance v2, Likv;

    sget-object v3, Lijy;->d:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    sget-object v1, Lijy;->f:Ljava/lang/String;

    new-instance v2, Likv;

    sget-object v3, Lijy;->f:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    sget-object v1, Lijy;->g:Ljava/lang/String;

    new-instance v2, Likv;

    sget-object v3, Lijy;->g:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "crash"

    new-instance v2, Likv;

    const-string/jumbo v3, "crash"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "apm"

    new-instance v2, Likv;

    const-string/jumbo v3, "apm"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "dataflow"

    new-instance v2, Likv;

    const-string/jumbo v3, "dataflow"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "battery"

    new-instance v2, Likv;

    const-string/jumbo v3, "battery"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    const-string/jumbo v1, "alivereport"

    new-instance v2, Likv;

    const-string/jumbo v3, "alivereport"

    invoke-direct {v2, p1, v3}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 16

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 109
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->isIllegal()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    :cond_0
    const-string/jumbo v2, "AppenderManager"

    const-string/jumbo v3, "appendLogEvent: illegal logEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 115
    :cond_2
    :try_start_1
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v8

    .line 1182
    invoke-virtual {v6}, Lilq;->b()V

    .line 1184
    iget-object v2, v6, Lilq;->e:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lilp;

    .line 1185
    if-eqz v2, :cond_5

    .line 1186
    iget-boolean v6, v2, Lilp;->a:Z

    if-eqz v6, :cond_4

    .line 1187
    iget v6, v2, Lilp;->c:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_f

    .line 1190
    if-eqz v8, :cond_f

    .line 1193
    iget v2, v2, Lilp;->c:I

    iget v6, v8, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->loggerLevel:I

    if-ge v2, v6, :cond_3

    move v2, v3

    .line 115
    :goto_1
    if-eqz v2, :cond_1

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Liks;->a:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Likr;

    .line 121
    if-eqz v2, :cond_10

    .line 122
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Likr;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    move v2, v5

    .line 1196
    goto :goto_1

    :cond_4
    move v2, v3

    .line 1198
    goto :goto_1

    .line 1203
    :cond_5
    :try_start_2
    const-string/jumbo v2, "crash"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1205
    iget-object v2, v6, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v6, "CrashCountInfo"

    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1207
    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long v6, v8, v6

    .line 1208
    const-string/jumbo v10, "curCrashHour"

    const-wide/16 v12, 0x0

    invoke-interface {v2, v10, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1210
    invoke-static {}, Lika;->d()Likq;

    move-result-object v12

    const-string/jumbo v13, "LogStrategyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "isLogWrite, curHour:"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " lastCrashHour:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    cmp-long v10, v6, v10

    if-eqz v10, :cond_6

    .line 1213
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 1214
    const-string/jumbo v11, "curCrashHour"

    invoke-interface {v10, v11, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1215
    const-string/jumbo v6, "curCrashHourCount"

    const/4 v7, 0x1

    invoke-interface {v10, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1216
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 1217
    invoke-static {}, Lika;->d()Likq;

    move-result-object v7

    const-string/jumbo v10, "LogStrategyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "isLogWrite, hourCommitResult:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v10, v6}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    :goto_2
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long v6, v8, v6

    .line 1231
    const-string/jumbo v8, "curCrashMinute"

    const-wide/16 v10, 0x0

    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1233
    invoke-static {}, Lika;->d()Likq;

    move-result-object v10

    const-string/jumbo v11, "LogStrategyManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "isLogWrite, curMinute:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " lastCrashMinute:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    cmp-long v8, v6, v8

    if-eqz v8, :cond_8

    .line 1236
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1237
    const-string/jumbo v3, "curCrashMinute"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1238
    const-string/jumbo v3, "curCrashMinuteCount"

    const/4 v6, 0x1

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1239
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 1240
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v6, "LogStrategyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isLogWrite, minuteCommitResult:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    move v2, v5

    .line 1252
    goto/16 :goto_1

    .line 1219
    :cond_6
    const-string/jumbo v6, "curCrashHourCount"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 1220
    invoke-static {}, Lika;->d()Likq;

    move-result-object v7

    const-string/jumbo v10, "LogStrategyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "isLogWrite, curCrashHourCout:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    const/16 v7, 0x32

    if-le v6, v7, :cond_7

    .line 1222
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v5, "LogStrategyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "crash count beyound hour limit:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1223
    goto/16 :goto_1

    .line 1225
    :cond_7
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    const-string/jumbo v10, "curCrashHourCount"

    invoke-interface {v7, v10, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 1226
    invoke-static {}, Lika;->d()Likq;

    move-result-object v7

    const-string/jumbo v10, "LogStrategyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "isLogWrite, curCrashHourCoutCommitResult:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v10, v6}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1242
    :cond_8
    const-string/jumbo v6, "curCrashMinuteCount"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 1243
    invoke-static {}, Lika;->d()Likq;

    move-result-object v7

    const-string/jumbo v8, "LogStrategyManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "isLogWrite, curCrashMinuteCout:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1244
    const/4 v7, 0x2

    if-le v6, v7, :cond_9

    .line 1245
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v5, "LogStrategyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "crash count beyound minute limit:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1246
    goto/16 :goto_1

    .line 1248
    :cond_9
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "curCrashMinuteCount"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    .line 1249
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v6, "LogStrategyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "isLogWrite, curCrashMinuteCoutCommitResult:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v6, v2}, Likq;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1254
    :cond_a
    sget-object v2, Lijy;->g:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1256
    iget-object v2, v6, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v6, "KeyBizInfo"

    const/4 v7, 0x4

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1258
    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    div-long v6, v8, v6

    .line 1259
    const-string/jumbo v8, "curKeyBizDay"

    const-wide/16 v10, 0x0

    invoke-interface {v2, v8, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 1260
    cmp-long v8, v6, v8

    if-eqz v8, :cond_b

    .line 1261
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1262
    const-string/jumbo v3, "curKeyBizDay"

    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1263
    const-string/jumbo v3, "curKeyBizDayCount"

    const/4 v6, 0x1

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1264
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_4
    move v2, v5

    .line 1274
    goto/16 :goto_1

    .line 1266
    :cond_b
    const-string/jumbo v6, "curKeyBizDayCount"

    const/4 v7, 0x0

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 1267
    const/16 v7, 0xc8

    if-le v6, v7, :cond_c

    .line 1268
    invoke-static {}, Lika;->d()Likq;

    move-result-object v2

    const-string/jumbo v5, "LogStrategyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "key biz trace count beyound day limit:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 1269
    goto/16 :goto_1

    .line 1271
    :cond_c
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "curKeyBizDayCount"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    .line 1276
    :cond_d
    sget-object v2, Lijy;->b:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    .line 1277
    goto/16 :goto_1

    .line 1279
    :cond_e
    const-string/jumbo v2, "romesync"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    .line 1280
    goto/16 :goto_1

    :cond_f
    move v2, v5

    .line 1283
    goto/16 :goto_1

    .line 131
    :cond_10
    const-string/jumbo v3, "flush"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 132
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Liks;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Likr;

    .line 134
    if-nez v3, :cond_12

    .line 135
    instance-of v5, v2, Likv;

    if-eqz v5, :cond_11

    .line 136
    invoke-virtual {v2}, Likr;->a()V

    goto :goto_5

    .line 139
    :cond_12
    invoke-virtual {v2}, Likr;->b()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 141
    invoke-virtual {v2}, Likr;->a()V

    goto :goto_5

    .line 148
    :cond_13
    const-string/jumbo v3, "uploadByEvent"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 149
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 151
    if-nez v5, :cond_14

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Liks;->b:Lijz;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lijz;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Liks;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_15
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Likr;

    .line 156
    instance-of v3, v2, Likv;

    if-eqz v3, :cond_15

    .line 157
    move-object v0, v2

    check-cast v0, Likv;

    move-object v3, v0

    .line 159
    invoke-virtual {v2}, Likr;->b()Ljava/lang/String;

    move-result-object v7

    .line 160
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v2

    .line 1340
    invoke-virtual {v2}, Lilq;->b()V

    .line 1343
    iget-object v2, v2, Lilq;->e:Ljava/util/Map;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lilp;

    .line 1344
    if-eqz v2, :cond_21

    .line 1345
    iget-object v2, v2, Lilp;->e:Ljava/util/List;

    .line 1348
    :goto_7
    if-nez v2, :cond_16

    .line 1349
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1351
    :cond_16
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 1353
    const-string/jumbo v8, "alivereport"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    sget-object v8, Lijy;->a:Ljava/lang/String;

    .line 1354
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string/jumbo v8, "userbehavor"

    .line 1355
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_17

    const-string/jumbo v8, "autouserbehavor"

    .line 1356
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1358
    :cond_17
    const-string/jumbo v7, "gotoBackground"

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1373
    :cond_18
    :goto_8
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 160
    if-eqz v2, :cond_15

    .line 161
    invoke-virtual {v3}, Likv;->a()V

    .line 162
    invoke-virtual {v3}, Likv;->d()V

    goto :goto_6

    .line 1360
    :cond_19
    const-string/jumbo v8, "crash"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string/jumbo v8, "apm"

    .line 1361
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string/jumbo v8, "dataflow"

    .line 1362
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string/jumbo v8, "battery"

    .line 1363
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 1365
    :cond_1a
    const-string/jumbo v7, "gotoBackground"

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    const-string/jumbo v7, "ClientEvent_ClientLaunch"

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1369
    :cond_1b
    const-string/jumbo v7, "gotoBackground"

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 170
    :cond_1c
    const-string/jumbo v3, "uploadByType"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 171
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 173
    if-nez v2, :cond_1d

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Liks;->b:Lijz;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lijz;->c(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 177
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Liks;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Likr;

    .line 178
    instance-of v3, v2, Likv;

    if-eqz v3, :cond_1

    .line 180
    check-cast v2, Likv;

    .line 181
    invoke-virtual {v2}, Likv;->d()V

    goto/16 :goto_0

    .line 188
    :cond_1e
    const-string/jumbo v3, "refreshSession"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_1f

    .line 190
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Liks;->b:Lijz;

    invoke-interface {v2}, Lijz;->q()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 191
    :catch_0
    move-exception v2

    .line 192
    :try_start_4
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "AppenderManager"

    invoke-interface {v3, v4, v2}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 198
    :cond_1f
    const-string/jumbo v3, "gotoBackground"

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_20

    .line 200
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 201
    invoke-static {}, Lilq;->a()Lilq;

    move-result-object v4

    .line 1698
    invoke-virtual {v4}, Lilq;->b()V

    .line 1700
    iget-object v4, v4, Lilq;->d:Landroid/content/Context;

    const-string/jumbo v5, "CrashCountInfo"

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1701
    const-string/jumbo v5, "backgroundTimestamp"

    const-wide/16 v6, -0x9

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-eqz v5, :cond_1

    .line 1702
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "backgroundTimestamp"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 202
    :catch_1
    move-exception v2

    .line 203
    :try_start_6
    invoke-static {}, Lika;->d()Likq;

    move-result-object v3

    const-string/jumbo v4, "AppenderManager"

    invoke-interface {v3, v4, v2}, Likq;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 208
    :cond_20
    if-nez v2, :cond_1

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Liks;->a:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Likv;

    move-object/from16 v0, p0

    iget-object v5, v0, Liks;->b:Lijz;

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Likv;-><init>(Lijz;Ljava/lang/String;)V

    .line 209
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Liks;->a:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Likr;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Likr;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_21
    move-object v2, v4

    goto/16 :goto_7
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "AppenderManager"

    const-string/jumbo v2, "backupCurrent: no category"

    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Liks;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Likr;

    .line 95
    if-nez v0, :cond_1

    .line 96
    invoke-static {}, Lika;->d()Likq;

    move-result-object v0

    const-string/jumbo v1, "AppenderManager"

    const-string/jumbo v2, "backupCurrent: no appender"

    invoke-interface {v0, v1, v2}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :cond_1
    :try_start_0
    invoke-virtual {v0, p2}, Likr;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    const-string/jumbo v2, "AppenderManager"

    const-string/jumbo v3, "backupCurrent"

    invoke-interface {v1, v2, v3, v0}, Likq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
