.class public Ldyf;
.super Ljava/lang/Object;
.source "LangyaServiceImpl.java"

# interfaces
.implements Ldye;


# static fields
.field private static volatile a:Ldyf;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static final a()Ldye;
    .locals 4

    .prologue
    .line 20
    sget-object v0, Ldyf;->a:Ldyf;

    .line 21
    .local v0, "res":Ldyf;
    if-nez v0, :cond_1

    .line 22
    const-class v3, Ldyf;

    monitor-enter v3

    .line 23
    :try_start_0
    sget-object v0, Ldyf;->a:Ldyf;

    .line 24
    if-nez v0, :cond_0

    .line 25
    new-instance v1, Ldyf;

    invoke-direct {v1}, Ldyf;-><init>()V

    sput-object v1, Ldyf;->a:Ldyf;

    .end local v0    # "res":Ldyf;
    .local v1, "res":Ldyf;
    move-object v0, v1

    .line 27
    .end local v1    # "res":Ldyf;
    .restart local v0    # "res":Ldyf;
    :cond_0
    monitor-exit v3

    .line 29
    :cond_1
    return-object v0

    .line 27
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public final a(Ldui;Lcma;)V
    .locals 3
    .param p1, "recordListModel"    # Ldui;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldui;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 37
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ExpertIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ExpertIService;

    .line 38
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ExpertIService;
    new-instance v0, Ldyf$1;

    invoke-direct {v0, p0, p2}, Ldyf$1;-><init>(Ldyf;Lcma;)V

    .line 45
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ExpertIService;->insertOrderRecord(Ldui;Liyv;)V

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/Long;Lcma;)V
    .locals 4
    .param p1, "reservationId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 51
    .local p2, "callback":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/ExpertRecordIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/ExpertRecordIService;

    .line 52
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/ExpertRecordIService;
    new-instance v0, Ldyf$2;

    invoke-direct {v0, p0, p2}, Ldyf$2;-><init>(Ldyf;Lcma;)V

    .line 59
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Boolean;Ljava/lang/Boolean;>;"
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/ExpertRecordIService;->recordTimeout(JLiyv;)V

    .line 60
    return-void
.end method
