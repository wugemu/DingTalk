.class public Lhqr;
.super Ljava/lang/Object;
.source "OAUploadServiceImpl.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lhqr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lhqr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhqr;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lhqr;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lhqr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhqr;->b:Lhqr;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lhqr;

    invoke-direct {v0}, Lhqr;-><init>()V

    sput-object v0, Lhqr;->b:Lhqr;

    .line 49
    :cond_0
    sget-object v0, Lhqr;->b:Lhqr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 161
    .local p1, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    .line 162
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;
    new-instance v1, Lhqr$4;

    invoke-direct {v1, p0, p1}, Lhqr$4;-><init>(Lhqr;Lcma;)V

    invoke-interface {v0, v1}, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;->updateUserSelfSettingForAllCorp(Liyv;)V

    .line 177
    return-void
.end method

.method public final a(Lhjq;Lcma;)V
    .locals 2
    .param p1, "model"    # Lhjq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhjq;",
            "Lcma",
            "<",
            "Lhjw;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 74
    .local p2, "listener":Lcma;, "Lcma<Lhjw;>;"
    const-class v1, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;

    .line 75
    .local v0, "service":Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;
    new-instance v1, Lhqr$1;

    invoke-direct {v1, p0, p2}, Lhqr$1;-><init>(Lhqr;Lcma;)V

    invoke-interface {v0, p1, v1}, Lcom/alibaba/lightapp/runtime/idl/OAUploadIService;->checkIn(Lhjq;Liyv;)V

    .line 90
    return-void
.end method
