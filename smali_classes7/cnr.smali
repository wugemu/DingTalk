.class public Lcnr;
.super Ljava/lang/Object;
.source "ExposureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcnr$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcnr;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcnr$a;",
            "Lcnq;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v1, Lcnr$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcnr$1;-><init>(Lcnr;Landroid/os/Looper;)V

    iput-object v1, p0, Lcnr;->c:Landroid/os/Handler;

    .line 50
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcnr;->b:Ljava/util/Map;

    .line 51
    const-string/jumbo v1, "LIFECYCLE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 52
    .local v0, "lifecycleMonitor":Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;
    new-instance v1, Lcnr$2;

    invoke-direct {v1, p0}, Lcnr$2;-><init>(Lcnr;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 60
    return-void
.end method

.method public static a()Lcnr;
    .locals 2

    .prologue
    .line 63
    sget-object v0, Lcnr;->a:Lcnr;

    if-nez v0, :cond_1

    .line 64
    const-class v1, Lcnr;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcnr;->a:Lcnr;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcnr;

    invoke-direct {v0}, Lcnr;-><init>()V

    sput-object v0, Lcnr;->a:Lcnr;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_1
    sget-object v0, Lcnr;->a:Lcnr;

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

.method static synthetic a(Lcnr;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcnr;

    .prologue
    .line 24
    iget-object v0, p0, Lcnr;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcnr;Lcnr$a;)V
    .locals 6
    .param p0, "x0"    # Lcnr;
    .param p1, "x1"    # Lcnr$a;

    .prologue
    .line 24
    .line 1089
    if-eqz p1, :cond_0

    .line 1093
    iget-object v0, p0, Lcnr;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcnq;

    .line 1094
    if-eqz v0, :cond_0

    .line 1098
    iget-object v1, p1, Lcnr$a;->a:Ljava/lang/String;

    invoke-interface {v0}, Lcnq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1103
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    iget-wide v4, p1, Lcnr$a;->b:J

    sub-long/2addr v2, v4

    .line 1104
    new-instance v1, Lcnp;

    invoke-direct {v1, v2, v3}, Lcnp;-><init>(J)V

    .line 1105
    invoke-interface {v0}, Lcnq;->b()Lcns;

    move-result-object v0

    .line 1107
    if-eqz v0, :cond_0

    .line 1111
    iget-object v1, v0, Lcns;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcns;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    iget-object v2, v0, Lcns;->a:Ljava/lang/String;

    iget-object v3, v0, Lcns;->b:Ljava/lang/String;

    iget-object v0, v0, Lcns;->c:Ljava/util/Map;

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method static synthetic b(Lcnr;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcnr;

    .prologue
    .line 24
    iget-object v0, p0, Lcnr;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a(Lcnq;)V
    .locals 6
    .param p1, "listener"    # Lcnq;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 79
    new-instance v0, Lcnr$a;

    invoke-interface {p1}, Lcnq;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcnr$a;-><init>(Ljava/lang/String;B)V

    .line 80
    .local v0, "key":Lcnr$a;
    iget-object v2, p0, Lcnr;->b:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 83
    .local v1, "msg":Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 84
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 85
    iget-object v2, p0, Lcnr;->c:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 86
    return-void
.end method
