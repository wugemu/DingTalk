.class public final Lhpq;
.super Ljava/lang/Object;
.source "AsyncHydroNetStack.java"

# interfaces
.implements Lhps;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhpq$c;,
        Lhpq$b;,
        Lhpq$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lhpq$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/alibaba/lightapp/runtime/net/HydroCache;

.field private f:Lcom/alibaba/lightapp/runtime/net/HydroCache;

.field private g:Lhpq$b;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lhpq;->a:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object v1, p0, Lhpq;->c:Ljava/util/Set;

    .line 67
    const/4 v1, 0x1

    iput-boolean v1, p0, Lhpq;->h:Z

    .line 70
    new-instance v1, Ljava/util/concurrent/ConcurrentSkipListMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentSkipListMap;-><init>()V

    iput-object v1, p0, Lhpq;->b:Ljava/util/Map;

    .line 71
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    iput-object v1, p0, Lhpq;->d:Landroid/content/Context;

    .line 72
    new-instance v1, Lcom/alibaba/lightapp/runtime/net/HydroCache;

    iget-object v2, p0, Lhpq;->d:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/net/HydroCache;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lhpq;->e:Lcom/alibaba/lightapp/runtime/net/HydroCache;

    .line 73
    new-instance v1, Lcom/alibaba/lightapp/runtime/net/HydroCache;

    iget-object v2, p0, Lhpq;->d:Landroid/content/Context;

    const-string/jumbo v3, "PERSISTCACHE"

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/net/HydroCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lhpq;->f:Lcom/alibaba/lightapp/runtime/net/HydroCache;

    .line 74
    const-string/jumbo v1, "HEALTH"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/health/Health;

    .line 75
    .local v0, "health":Lcom/alibaba/doraemon/health/Health;
    if-eqz v0, :cond_0

    .line 76
    new-instance v1, Lhpq$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lhpq$b;-><init>(Lhpq;B)V

    iput-object v1, p0, Lhpq;->g:Lhpq$b;

    .line 77
    const-string/jumbo v1, "H5"

    iget-object v2, p0, Lhpq;->g:Lhpq$b;

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/health/Health;->addNetworkMonitor(Ljava/lang/String;Lcom/alibaba/doraemon/health/NetworkMonitor;)V

    .line 79
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lhpq;-><init>()V

    return-void
.end method

.method public static a()Lhpq;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lhpq$a;->a:Lhpq;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "len"    # J

    .prologue
    .line 171
    iget-object v0, p0, Lhpq;->g:Lhpq$b;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lhpq;->g:Lhpq$b;

    .line 3214
    iget-object v0, v0, Lhpq$b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;

    .line 3215
    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    move-wide v4, p2

    move-object v6, p1

    invoke-interface/range {v1 .. v7}, Lcom/alibaba/doraemon/health/NetworkMonitor$NetEventListener;->onRequest(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;Lhpr;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lhpr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lhpr;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 82
    new-instance v0, Lhpd;

    invoke-direct {v0, p1}, Lhpd;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "hydroIs":Lhpd;
    new-instance v3, Lcom/uc/webview/export/WebResourceResponse;

    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-direct {v4, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5, v5, v4}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 84
    .local v3, "res":Lcom/uc/webview/export/WebResourceResponse;
    invoke-static {p1}, Lhpo;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/uc/webview/export/WebResourceResponse;->setMimeType(Ljava/lang/String;)V

    .line 1151
    new-instance v1, Lhpp;

    invoke-direct {v1, p0, p1, p2}, Lhpp;-><init>(Lhps;Ljava/lang/String;Ljava/util/Map;)V

    .line 2034
    iput-object p3, v1, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->e:Lhpr;

    .line 87
    .local v1, "loader":Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;
    if-eqz v1, :cond_0

    .line 88
    new-instance v2, Lhpq$c;

    invoke-direct {v2, p0}, Lhpq$c;-><init>(Lhpq;)V

    .line 89
    .local v2, "requestObject":Lhpq$c;
    iput-object v1, v2, Lhpq$c;->a:Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;

    .line 90
    iput-object v3, v2, Lhpq$c;->b:Lcom/uc/webview/export/WebResourceResponse;

    .line 91
    iget-object v4, p0, Lhpq;->b:Ljava/util/Map;

    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3043
    iget-object v5, v1, Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;->b:Ljava/lang/String;

    .line 3128
    const-string/jumbo v4, "THREAD"

    invoke-static {v4}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/doraemon/threadpool/Thread;

    .line 3129
    const-string/jumbo v6, "hydro-net"

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->addThread2Group(Ljava/lang/String;)V

    .line 3130
    const/16 v6, 0xa

    invoke-interface {v4, v6}, Lcom/alibaba/doraemon/threadpool/Thread;->setGroupConcurrents(I)V

    .line 3137
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3138
    sget-object v5, Lcom/alibaba/doraemon/Priority;->LOW:Lcom/alibaba/doraemon/Priority;

    .line 3131
    :goto_0
    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->setPriority(Lcom/alibaba/doraemon/Priority;)V

    .line 2118
    new-instance v5, Lhpq$1;

    invoke-direct {v5, p0, v1}, Lhpq$1;-><init>(Lhpq;Lcom/alibaba/lightapp/runtime/net/async/AsyncResourceLoader;)V

    invoke-interface {v4, v5}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 94
    .end local v2    # "requestObject":Lhpq$c;
    :cond_0
    return-void

    .line 3140
    .restart local v2    # "requestObject":Lhpq$c;
    :cond_1
    invoke-static {v5}, Lhpo;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3141
    const-string/jumbo v6, "js"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "css"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3142
    :cond_2
    sget-object v5, Lcom/alibaba/doraemon/Priority;->HIGH:Lcom/alibaba/doraemon/Priority;

    goto :goto_0

    .line 3145
    :cond_3
    sget-object v5, Lcom/alibaba/doraemon/Priority;->NORMAL:Lcom/alibaba/doraemon/Priority;

    goto :goto_0
.end method

.method public final b()Lcom/alibaba/lightapp/runtime/net/HydroCache;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lhpq;->e:Lcom/alibaba/lightapp/runtime/net/HydroCache;

    return-object v0
.end method
