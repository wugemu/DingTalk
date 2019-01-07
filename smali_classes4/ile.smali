.class public final Lile;
.super Ljava/lang/Object;
.source "MonitorLoggerImpl.java"

# interfaces
.implements Likn;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lijz;

.field private c:Liln;

.field private d:Lilo;

.field private e:Lilm;

.field private f:Lill;

.field private g:Lilj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Likn;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lile;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lijz;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lile;->b:Lijz;

    .line 35
    new-instance v0, Liln;

    invoke-direct {v0, p1}, Liln;-><init>(Lijz;)V

    iput-object v0, p0, Lile;->c:Liln;

    .line 36
    new-instance v0, Lilo;

    invoke-direct {v0, p1}, Lilo;-><init>(Lijz;)V

    iput-object v0, p0, Lile;->d:Lilo;

    .line 37
    new-instance v0, Lilm;

    invoke-direct {v0, p1}, Lilm;-><init>(Lijz;)V

    iput-object v0, p0, Lile;->e:Lilm;

    .line 38
    new-instance v0, Lill;

    invoke-direct {v0, p1}, Lill;-><init>(Lijz;)V

    iput-object v0, p0, Lile;->f:Lill;

    .line 39
    new-instance v0, Lilj;

    invoke-direct {v0, p1}, Lilj;-><init>(Lijz;)V

    iput-object v0, p0, Lile;->g:Lilj;

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 81
    if-nez p2, :cond_0

    .line 112
    :goto_0
    return-void

    .line 87
    :cond_0
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_SUB_THREAD_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_IGNORE_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_INVALID_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    if-ne p1, v0, :cond_2

    .line 91
    :cond_1
    invoke-static {}, Lilf;->a()Lilf;

    invoke-static {p2}, Lilf;->a(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 99
    :goto_1
    const-string/jumbo v2, "Native_Crash_In_Child_Thread:"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, p0, Lile;->b:Lijz;

    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v4, "crash"

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v6, p0, Lile;->c:Liln;

    .line 104
    invoke-virtual {v6, p1, p2, v0}, Liln;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 100
    invoke-interface {v2, v3}, Lijz;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 106
    :cond_3
    iget-object v2, p0, Lile;->b:Lijz;

    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v4, "exception"

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v6, p0, Lile;->c:Liln;

    .line 110
    invoke-virtual {v6, p1, p2, v0}, Liln;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v1, v5, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 106
    invoke-interface {v2, v3}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0
.end method

.method public final a(Likm;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 190
    iget-object v0, p0, Lile;->b:Lijz;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "dataflow"

    const/4 v3, 0x0

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v5, p0, Lile;->f:Lill;

    .line 194
    invoke-virtual {v5, p1}, Lill;->a(Likm;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 190
    invoke-interface {v0, v1}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 195
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 170
    iget-object v9, p0, Lile;->b:Lijz;

    new-instance v10, Lcom/alipay/mobile/common/logging/api/LogEvent;

    sget-object v11, Lijy;->f:Ljava/lang/String;

    const/4 v12, 0x0

    sget-object v13, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->INFO:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-object v1, p0, Lile;->d:Lilo;

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_FOOTPRINT:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2039
    const/4 v8, 0x0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lilo;->a(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-direct {v10, v11, v12, v13, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 170
    invoke-interface {v9, v10}, Lijz;->b(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 175
    return-void
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 47
    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    .line 1054
    :try_start_0
    invoke-static {}, Lilf;->a()Lilf;

    invoke-static {p1}, Lilf;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 1062
    :goto_0
    iget-object v3, p0, Lile;->c:Liln;

    invoke-virtual {v3, v2, p1, v0}, Liln;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1063
    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v3, "crash"

    sget-object v4, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v2, v3, v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lile;->b:Lijz;

    invoke-interface {v0, v2}, Lijz;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "crash: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lima;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    invoke-static {}, Lika;->d()Likq;

    move-result-object v1

    sget-object v2, Lile;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Likq;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v1

    invoke-interface {v1, v5}, Lijz;->a(Z)V

    .line 1069
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v1

    const-string/jumbo v2, "applog"

    invoke-interface {v1, v2, v5}, Lijz;->b(Ljava/lang/String;Z)V

    .line 1070
    invoke-static {}, Lika;->b()Lijz;

    move-result-object v1

    const-string/jumbo v2, "applog"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lijz;->a(Ljava/lang/String;Z)V

    .line 1072
    invoke-static {v0}, Lima;->a(Ljava/lang/String;)V

    .line 1075
    iget-object v0, p0, Lile;->b:Lijz;

    invoke-interface {v0}, Lijz;->a()Landroid/content/Context;

    invoke-static {p1}, Lima;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    return-void

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
