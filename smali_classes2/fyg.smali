.class public final Lfyg;
.super Ljava/lang/Object;
.source "AppMonitorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfyg$c;,
        Lfyg$b;,
        Lfyg$a;
    }
.end annotation


# static fields
.field public static a:Z

.field public static volatile b:Z

.field public static c:Lalo;

.field private static d:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lfyg;->a:Z

    .line 58
    sput-boolean v0, Lfyg;->b:Z

    .line 59
    new-instance v0, Lalo;

    invoke-direct {v0}, Lalo;-><init>()V

    sput-object v0, Lfyg;->c:Lalo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 523
    return-void
.end method

.method public static declared-synchronized a()V
    .locals 6

    .prologue
    .line 91
    const-class v2, Lfyg;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "AppMonitorDelegate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "start destory"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    sget-boolean v1, Lfyg;->b:Z

    if-eqz v1, :cond_1

    .line 93
    invoke-static {}, Lfyj;->c()V

    .line 94
    invoke-static {}, Lfyj;->b()V

    .line 95
    invoke-static {}, Lfyi;->b()V

    .line 96
    sget-object v1, Lfyg;->d:Landroid/app/Application;

    if-eqz v1, :cond_0

    .line 97
    sget-object v1, Lfyg;->d:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lalg;->h(Landroid/content/Context;)V

    .line 99
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lfyg;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    .local v0, "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    .line 101
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 102
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static a(I)V
    .locals 4
    .param p0, "statisticsInterval"    # I

    .prologue
    .line 126
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v0

    .local v0, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 127
    .local v1, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v1, p0}, Lcom/alibaba/appmonitor/event/EventType;->setStatisticsInterval(I)V

    .line 128
    invoke-static {v1, p0}, Lfyg;->a(Lcom/alibaba/appmonitor/event/EventType;I)V

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/app/Application;)V
    .locals 5
    .param p0, "application"    # Landroid/app/Application;

    .prologue
    .line 65
    const-class v1, Lfyg;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "AppMonitorDelegate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "start init"

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    sget-boolean v0, Lfyg;->b:Z

    if-nez v0, :cond_0

    .line 68
    sput-object p0, Lfyg;->d:Landroid/app/Application;

    .line 73
    invoke-static {}, Lfyi;->a()V

    .line 75
    invoke-static {}, Lfyj;->a()V

    .line 76
    invoke-static {p0}, Lfyh;->a(Landroid/app/Application;)V

    .line 78
    const/4 v0, 0x1

    sput-boolean v0, Lfyg;->b:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 81
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lfyg;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alibaba/appmonitor/event/EventType;I)V
    .locals 2
    .param p0, "eventType"    # Lcom/alibaba/appmonitor/event/EventType;
    .param p1, "statisticsInterval"    # I

    .prologue
    .line 704
    :try_start_0
    sget-boolean v1, Lfyg;->b:Z

    if-eqz v1, :cond_0

    .line 705
    if-eqz p0, :cond_0

    .line 706
    invoke-virtual {p0}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v1

    invoke-static {v1, p1}, Lfyj;->a(II)V

    .line 707
    if-lez p1, :cond_1

    .line 708
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/appmonitor/event/EventType;->setOpen(Z)V

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 710
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/alibaba/appmonitor/event/EventType;->setOpen(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 714
    :catch_0
    move-exception v0

    .line 715
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lfyg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 158
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lfyg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 182
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 10
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p3, "dimensions"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p4, "isCommitDetail"    # Z

    .prologue
    .line 196
    :try_start_0
    sget-boolean v2, Lfyg;->b:Z

    if-eqz v2, :cond_1

    .line 197
    invoke-static {p0}, Lane;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lane;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    :cond_0
    const-string/jumbo v2, "AppMonitorDelegate"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "register stat event. module: "

    aput-object v6, v3, v5

    const/4 v5, 0x1

    aput-object p0, v3, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " monitorPoint: "

    aput-object v6, v3, v5

    const/4 v5, 0x3

    aput-object p1, v3, v5

    invoke-static {v2, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    sget-boolean v2, Lfyg;->a:Z

    if-eqz v2, :cond_1

    .line 200
    new-instance v2, Lcom/alibaba/analytics/core/selfmonitor/exception/AppMonitorException;

    const-string/jumbo v3, "register error. module and monitorPoint can\'t be null"

    invoke-direct {v2, v3}, Lcom/alibaba/analytics/core/selfmonitor/exception/AppMonitorException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :catch_0
    move-exception v7

    .line 216
    .local v7, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v2, v7}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V

    .line 218
    .end local v7    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void

    .line 205
    :cond_2
    :try_start_1
    new-instance v0, Lfyt;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lfyt;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 206
    .local v0, "metric":Lfyt;
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v2

    invoke-virtual {v2, v0}, Lfyu;->a(Lfyt;)V

    .line 207
    invoke-static {}, Lfyz;->d()Lfyz;

    move-result-object v2

    .line 1086
    invoke-static {}, Lamu;->b()V

    .line 1088
    iget-object v3, v2, Lfyz;->a:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    iget-object v3, v2, Lfyz;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x64

    if-lt v3, v5, :cond_3

    .line 1091
    invoke-static {}, Lanh;->a()Lanh;

    const/4 v3, 0x0

    iget-object v5, v2, Lfyz;->c:Ljava/lang/Runnable;

    const-wide/16 v8, 0x0

    invoke-static {v3, v5, v8, v9}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, v2, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    .line 209
    :goto_1
    invoke-static {}, Lalm;->a()Lalm;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Lalm;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v4

    .line 210
    .local v4, "configMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    if-eqz v4, :cond_1

    .line 211
    new-instance v1, Lfyt;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_abtest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lfyt;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 212
    .local v1, "metricCopy":Lfyt;
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v2

    invoke-virtual {v2, v1}, Lfyu;->a(Lfyt;)V

    goto :goto_0

    .line 1093
    .end local v1    # "metricCopy":Lfyt;
    .end local v4    # "configMeasureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    :cond_3
    invoke-static {}, Lanh;->a()Lanh;

    iget-object v3, v2, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;

    iget-object v5, v2, Lfyz;->c:Ljava/lang/Runnable;

    const-wide/16 v8, 0x7530

    invoke-static {v3, v5, v8, v9}, Lanh;->a(Ljava/util/concurrent/ScheduledFuture;Ljava/lang/Runnable;J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, v2, Lfyz;->b:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Z)V
    .locals 1
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measures"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p3, "isCommitDetail"    # Z

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lfyg;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 170
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 7
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "monitorPoint"    # Ljava/lang/String;
    .param p2, "measureName"    # Ljava/lang/String;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "defaultValue"    # D

    .prologue
    .line 221
    const-string/jumbo v1, "AppMonitorDelegate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "[updateMeasure]"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    :try_start_0
    sget-boolean v1, Lfyg;->b:Z

    if-eqz v1, :cond_0

    .line 224
    invoke-static {p0}, Lane;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lane;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-static {}, Lfyu;->a()Lfyu;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lfyu;->a(Ljava/lang/String;Ljava/lang/String;)Lfyt;

    move-result-object v0

    .line 228
    .local v0, "metric":Lfyt;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {v0}, Lfyt;->d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    new-instance v2, Lcom/alibaba/mtl/appmonitor/model/Measure;

    invoke-static {p7, p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-direct {v2, p2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/Measure;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/Double;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->upateMeasure(Lcom/alibaba/mtl/appmonitor/model/Measure;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 235
    .end local v0    # "metric":Lfyt;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Z)V
    .locals 4
    .param p0, "open"    # Z

    .prologue
    .line 145
    const-string/jumbo v0, "AppMonitorDelegate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "[enableLog]"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {p0}, Lamu;->a(Z)V

    .line 147
    return-void
.end method

.method public static a(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "isSecurity"    # Z
    .param p1, "isEncode"    # Z
    .param p2, "appkey"    # Ljava/lang/String;
    .param p3, "secret"    # Ljava/lang/String;

    .prologue
    .line 721
    if-eqz p0, :cond_1

    .line 722
    new-instance v0, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;

    invoke-direct {v0, p2, p3}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .local v0, "requestAuth":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :goto_0
    invoke-static {}, Lajw;->a()Lajw;

    move-result-object v1

    .line 1335
    iput-object v0, v1, Lajw;->e:Lcom/ut/mini/core/sign/IUTRequestAuthentication;

    .line 1336
    if-eqz v0, :cond_0

    .line 1337
    invoke-interface {v0}, Lcom/ut/mini/core/sign/IUTRequestAuthentication;->getAppkey()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lajw;->d:Ljava/lang/String;

    .line 727
    :cond_0
    return-void

    .line 724
    .end local v0    # "requestAuth":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    :cond_1
    new-instance v0, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;

    invoke-direct {v0, p2, p3, p1}, Lcom/ut/mini/core/sign/UTBaseRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v0    # "requestAuth":Lcom/ut/mini/core/sign/IUTRequestAuthentication;
    goto :goto_0
.end method

.method public static declared-synchronized b()V
    .locals 6

    .prologue
    .line 111
    const-class v2, Lfyg;

    monitor-enter v2

    :try_start_0
    const-string/jumbo v1, "AppMonitorDelegate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "triggerUpload"

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    sget-boolean v1, Lfyg;->b:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lajw;->l()Z

    .line 113
    invoke-static {}, Lfyj;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    .local v0, "t":Ljava/lang/Throwable;
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 115
    .end local v0    # "t":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 116
    .restart local v0    # "t":Ljava/lang/Throwable;
    :try_start_1
    sget-object v1, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->AP:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    invoke-static {v1, v0}, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder;->a(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static b(I)V
    .locals 9
    .param p0, "sampling"    # I

    .prologue
    .line 136
    const-string/jumbo v5, "AppMonitorDelegate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string/jumbo v8, "[setSampling]"

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lamu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-static {}, Lcom/alibaba/appmonitor/event/EventType;->values()[Lcom/alibaba/appmonitor/event/EventType;

    move-result-object v2

    .line 138
    .local v2, "eventTypes":[Lcom/alibaba/appmonitor/event/EventType;
    move-object v0, v2

    .local v0, "arr$":[Lcom/alibaba/appmonitor/event/EventType;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 139
    .local v1, "eventType":Lcom/alibaba/appmonitor/event/EventType;
    invoke-virtual {v1, p0}, Lcom/alibaba/appmonitor/event/EventType;->setDefaultSampling(I)V

    .line 140
    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v5

    invoke-virtual {v5, v1, p0}, Lfzf;->a(Lcom/alibaba/appmonitor/event/EventType;I)V

    .line 138
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "eventType":Lcom/alibaba/appmonitor/event/EventType;
    :cond_0
    return-void
.end method
