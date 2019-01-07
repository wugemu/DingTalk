.class public final Lbso;
.super Ljava/lang/Object;
.source "DeviceRpc.java"


# static fields
.field private static a:Lbso;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lbso;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lbso;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbso;->a:Lbso;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lbso;

    invoke-direct {v0}, Lbso;-><init>()V

    sput-object v0, Lbso;->a:Lbso;

    .line 39
    :cond_0
    sget-object v0, Lbso;->a:Lbso;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lbrz;Lcma;)V
    .locals 2
    .param p1, "deviceActiveModel"    # Lbrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbrz;",
            "Lcma",
            "<",
            "Lbsa;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 58
    .local p2, "listener":Lcma;, "Lcma<Lbsa;>;"
    new-instance v0, Lbso$6;

    invoke-direct {v0, p0, p2}, Lbso$6;-><init>(Lbso;Lcma;)V

    .line 66
    .local v0, "handler":Lcmg;, "Lcmg<Lbsa;Lbsa;>;"
    const-class v1, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;->bindAndActive(Lbrz;Liyv;)V

    .line 67
    return-void
.end method

.method public final a(Ljava/lang/Integer;Ljava/lang/Long;Lcma;)V
    .locals 2
    .param p1, "devSerId"    # Ljava/lang/Integer;
    .param p2, "devId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 137
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    new-instance v0, Lbso$9;

    invoke-direct {v0, p0, p3}, Lbso$9;-><init>(Lbso;Lcma;)V

    .line 146
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;

    invoke-interface {v1, p1, p2, v0}, Lcom/alibaba/android/dingtalk/guard/idl/services/DeviceIService;->getDeviceSecret(Ljava/lang/Integer;Ljava/lang/Long;Liyv;)V

    .line 147
    return-void
.end method
