.class public Lfbe;
.super Ljava/lang/Object;
.source "UicAuthAPIImpl.java"


# static fields
.field private static volatile b:Lfbe;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string/jumbo v0, "UicAuthAPIImpl"

    iput-object v0, p0, Lfbe;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a()Lfbe;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lfbe;->b:Lfbe;

    if-nez v0, :cond_0

    .line 25
    const-class v1, Lfbe;

    monitor-enter v1

    .line 26
    :try_start_0
    new-instance v0, Lfbe;

    invoke-direct {v0}, Lfbe;-><init>()V

    sput-object v0, Lfbe;->b:Lfbe;

    .line 27
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    sget-object v0, Lfbe;->b:Lfbe;

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 38
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 39
    const-string/jumbo v2, "UicAuthAPIImpl"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "applyUccUserToken but listener is null"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lfxo;->p(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :goto_0
    return-void

    .line 43
    :cond_0
    const-class v2, Lcom/alibaba/android/user/idl/services/UicAuthIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/UicAuthIService;

    .line 45
    .local v1, "uicAuthIService":Lcom/alibaba/android/user/idl/services/UicAuthIService;
    if-nez v1, :cond_1

    .line 46
    new-instance v2, Lfbe$1;

    invoke-direct {v2, p0, p1}, Lfbe$1;-><init>(Lfbe;Lcma;)V

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CallbackUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Lfbe$2;

    invoke-direct {v0, p0, p1}, Lfbe$2;-><init>(Lfbe;Lcma;)V

    .line 69
    .local v0, "rpcCallback":Liyv;, "Liyv<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Lcom/alibaba/android/user/idl/services/UicAuthIService;->applyUccUserToken(Liyv;)V

    goto :goto_0
.end method
