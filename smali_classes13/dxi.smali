.class public final Ldxi;
.super Ljava/lang/Object;
.source "ChannelAPIImpl.java"

# interfaces
.implements Ldxw;


# static fields
.field private static a:Ldxi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ldxw;
    .locals 2

    .prologue
    .line 20
    const-class v1, Ldxi;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldxi;->a:Ldxi;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Ldxi;

    invoke-direct {v0}, Ldxi;-><init>()V

    sput-object v0, Ldxi;->a:Ldxi;

    .line 23
    :cond_0
    sget-object v0, Ldxi;->a:Ldxi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lddm;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 78
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lddm;>;>;"
    new-instance v0, Ldxi$1;

    invoke-direct {v0, p0, p1}, Ldxi$1;-><init>(Ldxi;Lcma;)V

    .line 79
    .local v0, "handler":Lcme;, "Lcme<Ljava/util/List<Lddm;>;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;

    .line 80
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;
    if-nez v1, :cond_0

    .line 84
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ChannelIService;->listChannelOfUserJoinedOrg(Liyv;)V

    goto :goto_0
.end method
