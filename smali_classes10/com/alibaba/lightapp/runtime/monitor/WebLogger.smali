.class public Lcom/alibaba/lightapp/runtime/monitor/WebLogger;
.super Ljava/lang/Object;
.source "WebLogger.java"


# static fields
.field private static final H5_MODULE_NAME:Ljava/lang/String; = "H5"

.field private static final TAG:Ljava/lang/String; = "WEBLOG"

.field private static final VIP_MICROAPP_FAIL:I = 0x835

.field private static volatile mInstance:Lcom/alibaba/lightapp/runtime/monitor/WebLogger;


# instance fields
.field private mCheckedUrlCache:Ljava/util/Map;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->mCheckedUrlCache:Ljava/util/Map;

    return-void
.end method

.method private checkUrl(Ljava/lang/String;)Z
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    :goto_0
    return v1

    .line 128
    :cond_0
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->mCheckedUrlCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->mCheckedUrlCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lhhy;->a()Lhhy;

    move-result-object v2

    invoke-virtual {v2, p1}, Lhhy;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->urlEndsWithDingtalk(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 132
    .local v1, "isChecked":Z
    :cond_3
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->mCheckedUrlCache:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getInstance()Lcom/alibaba/lightapp/runtime/monitor/WebLogger;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    if-nez v0, :cond_1

    .line 32
    const-class v1, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    .line 36
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    :cond_1
    sget-object v0, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->mInstance:Lcom/alibaba/lightapp/runtime/monitor/WebLogger;

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private varargs log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msgs"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v2

    sget v3, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-ne v2, v3, :cond_1

    .line 89
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 90
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p3, v2

    .line 91
    .local v0, "msg":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "msg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 94
    const-string/jumbo v2, "WEBLOG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v1    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs logHigh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "currentUrl"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p5, "msgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 73
    .local p4, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->urlDesensitization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 76
    :cond_0
    invoke-direct {p0, p2, p3, p5}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const-string/jumbo v0, "H5"

    invoke-static {v0, p2, p3, p5}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->vipAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 79
    return-void
.end method

.method public varargs logLow(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public varargs logMiddle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "currentUrl"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "msgs"    # [Ljava/lang/Object;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->checkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-static {p2}, Lcom/alibaba/lightapp/runtime/monitor/Utils;->urlDesensitization(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 60
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const-string/jumbo v0, "H5"

    invoke-static {v0, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/monitor/RuntimeTrace;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public vipAlarm(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "errDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    .local p3, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/alibaba/lightapp/runtime/monitor/WebLogger$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/alibaba/lightapp/runtime/monitor/WebLogger$1;-><init>(Lcom/alibaba/lightapp/runtime/monitor/WebLogger;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lclm;->a(Landroid/content/Context;Lclm$a;)V

    .line 119
    return-void
.end method
