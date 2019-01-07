.class public Lgos;
.super Ljava/lang/Object;
.source "CSpaceMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgos$b;,
        Lgos$c;,
        Lgos$a;,
        Lgos$d;
    }
.end annotation


# static fields
.field private static volatile c:Lgos;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgos$d;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lgos$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgos;->a:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lgos;->b:Ljava/util/Map;

    .line 419
    return-void
.end method

.method public static a()Lgos;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lgos;->c:Lgos;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lgos;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lgos;->c:Lgos;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lgos;

    invoke-direct {v0}, Lgos;-><init>()V

    sput-object v0, Lgos;->c:Lgos;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lgos;->c:Lgos;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(Lgos$b;)V
    .locals 11
    .param p1, "param"    # Lgos$b;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v8, 0x27

    .line 125
    if-nez p1, :cond_0

    .line 140
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 129
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcms;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lgos$b;->l:Ljava/lang/String;

    .line 130
    const-string/jumbo v4, "wifi"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 131
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    .line 132
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 133
    .local v2, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v2, :cond_1

    .line 134
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v4

    iput v4, p1, Lgos$b;->m:I

    .line 4485
    .end local v2    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_1
    new-instance v1, Lghp;

    invoke-direct {v1}, Lghp;-><init>()V

    .line 4487
    iget-object v4, p1, Lgos$b;->a:Ljava/lang/String;

    iput-object v4, v1, Lghp;->a:Ljava/lang/String;

    .line 4488
    iget-wide v4, p1, Lgos$b;->d:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lghp;->b:Ljava/lang/String;

    .line 4489
    iget-object v4, p1, Lgos$b;->b:Ljava/lang/String;

    iput-object v4, v1, Lghp;->c:Ljava/lang/String;

    .line 4490
    iget-wide v4, p1, Lgos$b;->f:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v1, Lghp;->f:Ljava/lang/Long;

    .line 4491
    iget-boolean v4, p1, Lgos$b;->h:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "true"

    :goto_1
    iput-object v4, v1, Lghp;->g:Ljava/lang/String;

    .line 4492
    iget v4, p1, Lgos$b;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lghp;->h:Ljava/lang/Integer;

    .line 4493
    iget-object v4, p1, Lgos$b;->j:Ljava/lang/String;

    iput-object v4, v1, Lghp;->i:Ljava/lang/String;

    .line 4495
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v1, Lghp;->j:Ljava/util/Map;

    .line 4496
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "size"

    iget-wide v6, p1, Lgos$b;->e:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4497
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "costTime"

    iget-wide v6, p1, Lgos$b;->f:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4498
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "transferTime"

    iget-wide v6, p1, Lgos$b;->g:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4499
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "actionType"

    iget-object v6, p1, Lgos$b;->k:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4501
    iget-object v4, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v4, :cond_2

    .line 4502
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "spaceId"

    iget-object v6, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4503
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "fileId"

    iget-object v6, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4504
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "uploadId"

    iget-object v6, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4505
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "fileExtension"

    iget-object v6, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4508
    :cond_2
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "net"

    iget-object v6, p1, Lgos$b;->l:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4509
    iget-object v4, v1, Lghp;->j:Ljava/util/Map;

    const-string/jumbo v5, "rssi"

    iget v6, p1, Lgos$b;->m:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5143
    .local v1, "monitorParam":Lghp;
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v4

    .line 5783
    if-nez v1, :cond_4

    .line 5784
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "SpaceRPC"

    const-string/jumbo v6, "mCSpaceService: param is null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    :goto_2
    invoke-static {p1}, Lgos$c;->a(Lgos$b;)V

    goto/16 :goto_0

    .line 4491
    .end local v1    # "monitorParam":Lghp;
    :cond_3
    const-string/jumbo v4, "false"

    goto/16 :goto_1

    .line 6080
    .restart local v1    # "monitorParam":Lghp;
    :cond_4
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    .line 6081
    const-string/jumbo v6, "CSpaceMonitorParam{"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6082
    const-string/jumbo v6, "scene=\'"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6083
    const-string/jumbo v6, ", method=\'"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->c:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6084
    const-string/jumbo v6, ", success=\'"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->g:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6085
    const-string/jumbo v6, ", errorCode="

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->h:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6086
    const-string/jumbo v6, ", errorMessage=\'"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->i:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6087
    const-string/jumbo v6, ", extension="

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->j:Ljava/util/Map;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6088
    const-string/jumbo v6, ", inputParam=\'"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6089
    const-string/jumbo v6, ", respond=\'"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->e:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6090
    const-string/jumbo v6, ", time=\'"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6091
    const-string/jumbo v6, ", rt="

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    iget-object v7, v1, Lghp;->f:Ljava/lang/Long;

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6092
    const/16 v6, 0x7d

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 6093
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 5793
    const-string/jumbo v6, "CSpace"

    const-string/jumbo v7, "SpaceRPC"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "cspaceMonitor: "

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v5, v8, v9

    .line 5794
    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5793
    invoke-static {v6, v7, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5796
    iget-object v5, v4, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    if-nez v5, :cond_5

    .line 5797
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "SpaceRPC"

    const-string/jumbo v6, "mCSpaceService: mCSpaceService is null"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 5805
    :cond_5
    iget-object v5, v4, Lgon;->a:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;

    new-instance v6, Lgon$75;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v1}, Lgon$75;-><init>(Lgon;Lcma;Lghp;)V

    invoke-interface {v5, v1, v6}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceService;->cSpaceMonitor(Lghp;Liyv;)V

    goto/16 :goto_2
.end method

.method private b(Lgos$b;)V
    .locals 12
    .param p1, "param"    # Lgos$b;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 201
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 204
    :cond_0
    iget-object v5, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p0, v5}, Lgos;->c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$d;

    move-result-object v4

    .line 205
    .local v4, "startState":Lgos$d;
    if-eqz v4, :cond_3

    .line 206
    iget-wide v6, v4, Lgos$d;->a:J

    iput-wide v6, p1, Lgos$b;->d:J

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 208
    .local v0, "currentTime":J
    iget-wide v6, v4, Lgos$d;->a:J

    sub-long v6, v0, v6

    iput-wide v6, p1, Lgos$b;->f:J

    .line 209
    iget-wide v6, v4, Lgos$d;->b:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 210
    iget-wide v6, v4, Lgos$d;->c:J

    cmp-long v5, v6, v10

    if-gtz v5, :cond_1

    .line 211
    iput-wide v0, v4, Lgos$d;->c:J

    .line 213
    :cond_1
    iget-wide v6, v4, Lgos$d;->c:J

    iget-wide v8, v4, Lgos$d;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lgos$b;->g:J

    .line 215
    :cond_2
    iget-object v5, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v5, :cond_3

    .line 216
    iget-object v2, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 217
    .local v2, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    iget-wide v8, v4, Lgos$d;->d:J

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lgos$b;->e:J

    .line 218
    iget-wide v6, v4, Lgos$d;->d:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    .line 219
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    const/4 v3, 0x1

    .line 220
    .local v3, "isContinuous":Z
    :goto_1
    if-eqz v3, :cond_5

    const-string/jumbo v5, "continuous"

    :goto_2
    iput-object v5, p1, Lgos$b;->k:Ljava/lang/String;

    .line 224
    .end local v0    # "currentTime":J
    .end local v2    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "isContinuous":Z
    :cond_3
    invoke-direct {p0, p1}, Lgos;->a(Lgos$b;)V

    goto :goto_0

    .line 219
    .restart local v0    # "currentTime":J
    .restart local v2    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 220
    .restart local v3    # "isContinuous":Z
    :cond_5
    const-string/jumbo v5, "break"

    goto :goto_2
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$b;
    .locals 2
    .param p0, "scene"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 104
    new-instance v0, Lgos$b;

    invoke-direct {v0}, Lgos$b;-><init>()V

    .line 105
    .local v0, "param":Lgos$b;
    iput-object p0, v0, Lgos$b;->a:Ljava/lang/String;

    .line 106
    iput-object p1, v0, Lgos$b;->b:Ljava/lang/String;

    .line 107
    iput-object p2, v0, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, v0, Lgos$b;->h:Z

    .line 109
    return-object v0
.end method

.method private static c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)Lgos$b;
    .locals 2
    .param p0, "scene"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p3, "errorCode"    # I
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lgos$b;

    invoke-direct {v0}, Lgos$b;-><init>()V

    .line 115
    .local v0, "param":Lgos$b;
    iput-object p0, v0, Lgos$b;->a:Ljava/lang/String;

    .line 116
    iput-object p1, v0, Lgos$b;->b:Ljava/lang/String;

    .line 117
    iput-object p2, v0, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 118
    const/4 v1, 0x0

    iput-boolean v1, v0, Lgos$b;->h:Z

    .line 119
    iput p3, v0, Lgos$b;->i:I

    .line 120
    iput-object p4, v0, Lgos$b;->j:Ljava/lang/String;

    .line 121
    return-object v0
.end method

.method private c(Lgos$b;)V
    .locals 12
    .param p1, "param"    # Lgos$b;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 282
    if-nez p1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v5, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {p0, v5}, Lgos;->d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$a;

    move-result-object v4

    .line 286
    .local v4, "startState":Lgos$a;
    if-eqz v4, :cond_3

    .line 287
    iget-wide v6, v4, Lgos$a;->a:J

    iput-wide v6, p1, Lgos$b;->d:J

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 289
    .local v0, "currentTime":J
    iget-wide v6, v4, Lgos$a;->a:J

    sub-long v6, v0, v6

    iput-wide v6, p1, Lgos$b;->f:J

    .line 290
    iget-wide v6, v4, Lgos$a;->b:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_2

    .line 291
    iget-wide v6, v4, Lgos$a;->c:J

    cmp-long v5, v6, v10

    if-gtz v5, :cond_1

    .line 292
    iput-wide v0, v4, Lgos$a;->c:J

    .line 294
    :cond_1
    iget-wide v6, v4, Lgos$a;->c:J

    iget-wide v8, v4, Lgos$a;->b:J

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lgos$b;->g:J

    .line 296
    :cond_2
    iget-object v5, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v5, :cond_3

    .line 297
    iget-object v2, p1, Lgos$b;->c:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 298
    .local v2, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v6

    iget-wide v8, v4, Lgos$a;->d:J

    sub-long/2addr v6, v8

    iput-wide v6, p1, Lgos$b;->e:J

    .line 299
    iget-wide v6, v4, Lgos$a;->d:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    .line 300
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-nez v5, :cond_4

    const/4 v3, 0x1

    .line 301
    .local v3, "isContinuous":Z
    :goto_1
    if-eqz v3, :cond_5

    const-string/jumbo v5, "continuous"

    :goto_2
    iput-object v5, p1, Lgos$b;->k:Ljava/lang/String;

    .line 305
    .end local v0    # "currentTime":J
    .end local v2    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    .end local v3    # "isContinuous":Z
    :cond_3
    invoke-direct {p0, p1}, Lgos;->a(Lgos$b;)V

    goto :goto_0

    .line 300
    .restart local v0    # "currentTime":J
    .restart local v2    # "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 301
    .restart local v3    # "isContinuous":Z
    :cond_5
    const-string/jumbo v5, "break"

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 160
    invoke-static {p1}, Lgos$d;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget-object v2, p0, Lgos;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgos$d;

    .line 165
    .local v1, "startState":Lgos$d;
    if-eqz v1, :cond_0

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lgos$d;->b:J

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 1
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 192
    invoke-static {p1, p2, p3}, Lgos;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lgos;->b(Lgos$b;)V

    .line 193
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V
    .locals 1
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "errorCode"    # I
    .param p5, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-static {p1, p2, p3, p4, p5}, Lgos;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)Lgos$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lgos;->b(Lgos$b;)V

    .line 198
    return-void
.end method

.method public final b(Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 4
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 172
    invoke-static {p1}, Lgos$d;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lgos;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgos$d;

    .line 177
    .local v1, "startState":Lgos$d;
    if-eqz v1, :cond_0

    .line 180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lgos$d;->c:J

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 1
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    .line 230
    invoke-static {p1, p2, p3}, Lgos;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lgos;->c(Lgos$b;)V

    .line 231
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)V
    .locals 1
    .param p1, "scene"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;
    .param p4, "errorCode"    # I
    .param p5, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p1, p2, p3, p4, p5}, Lgos;->c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;ILjava/lang/String;)Lgos$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lgos;->c(Lgos$b;)V

    .line 236
    return-void
.end method

.method public final c(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$d;
    .locals 2
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 184
    invoke-static {p1}, Lgos$d;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 186
    const/4 v1, 0x0

    .line 188
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lgos;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgos$d;

    goto :goto_0
.end method

.method public final d(Lcom/alibaba/alimei/cspace/model/DentryModel;)Lgos$a;
    .locals 2
    .param p1, "dentry"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 274
    invoke-static {p1}, Lgos$a;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Ljava/lang/String;

    move-result-object v0

    .line 275
    .local v0, "key":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 276
    const/4 v1, 0x0

    .line 278
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lgos;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgos$a;

    goto :goto_0
.end method
