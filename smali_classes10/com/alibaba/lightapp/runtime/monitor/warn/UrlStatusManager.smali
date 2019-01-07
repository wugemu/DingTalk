.class public Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;
.super Ljava/lang/Object;
.source "UrlStatusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;,
        Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UrlStatusManager"

.field private static volatile mInstance:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;


# instance fields
.field public urlToStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->urlToStatus:Ljava/util/Map;

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;Lhkg;)Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;
    .param p1, "x1"    # Lhkg;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->parseToObject(Lhkg;)Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private parseToObject(Lhkg;)Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
    .locals 6
    .param p1, "model"    # Lhkg;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;-><init>(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;)V

    .line 136
    .local v0, "urlStatus":Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
    if-eqz p1, :cond_0

    .line 137
    const-string/jumbo v1, "normal"

    iget-object v2, p1, Lhkg;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->status:Z

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v1, p1, Lhkg;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->expireTime:J

    .line 139
    iget-object v1, p1, Lhkg;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->name:Ljava/lang/String;

    .line 140
    iget-object v1, p1, Lhkg;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->tel:Ljava/lang/String;

    .line 141
    iget-object v1, p1, Lhkg;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->title:Ljava/lang/String;

    .line 142
    iget-object v1, p1, Lhkg;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->content:Ljava/lang/String;

    .line 145
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkUrlStatus(Ljava/lang/String;Landroid/app/Activity;Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "callback"    # Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 49
    invoke-static {}, Lhhr;->a()Lhhr;

    const-string/jumbo v5, "f_lightapp_app_error_enable_new_interface"

    invoke-static {v5}, Lhhr;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 50
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->getAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "absolutePath":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;->urlToStatus:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;

    .line 52
    .local v4, "urlStatus":Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
    if-eqz v4, :cond_1

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 54
    .local v2, "time":J
    iget-wide v6, v4, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;->expireTime:J

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_1

    .line 55
    invoke-interface {p3, v4}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;->onSuccess(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;)V

    .line 83
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v2    # "time":J
    .end local v4    # "urlStatus":Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "absolutePath":Ljava/lang/String;
    .restart local v4    # "urlStatus":Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$UrlStatus;
    :cond_1
    new-instance v1, Lhqp;

    invoke-direct {v1}, Lhqp;-><init>()V

    .line 61
    .local v1, "commonIService":Lhqp;
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    new-instance v6, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;

    invoke-direct {v6, p0, v0, p3}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;Ljava/lang/String;Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$Callback;)V

    const-class v7, Lcma;

    invoke-interface {v5, v6, v7, p2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcma;

    .line 1019
    const-class v6, Lcom/alibaba/lightapp/runtime/idl/CommonIService;

    invoke-static {v6}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/lightapp/runtime/idl/CommonIService;

    .line 1020
    new-instance v7, Lhqp$1;

    invoke-direct {v7, v1, v5}, Lhqp$1;-><init>(Lhqp;Lcma;)V

    invoke-interface {v6, p1, v7}, Lcom/alibaba/lightapp/runtime/idl/CommonIService;->getUrlStatus(Ljava/lang/String;Liyv;)V

    goto :goto_0
.end method

.method public getAppMalfunctionConfig(Lcmi;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcmi",
            "<",
            "Lhil;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    .local p1, "callback":Lcmi;, "Lcmi<Lhil;>;"
    invoke-static {}, Lhhq;->a()Lhhq;

    const-string/jumbo v1, "f_lightapp_app_error_enable_new_interface"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lhhq;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;

    .line 93
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;
    new-instance v1, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager$2;-><init>(Lcom/alibaba/lightapp/runtime/monitor/warn/UrlStatusManager;Lcmi;)V

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;->getAppMalfunctionConfig(Liyv;)V

    .line 132
    .end local v0    # "service":Lcom/alibaba/lightapp/runtime/idl/ClientContainerIService;
    :cond_0
    return-void
.end method
