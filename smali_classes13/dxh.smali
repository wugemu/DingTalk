.class public Ldxh;
.super Ljava/lang/Object;
.source "BirthdayServiceAPIImpl.java"

# interfaces
.implements Ldxg;


# static fields
.field private static volatile a:Ldxh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static final a()Ldxg;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Ldxh;->a:Ldxh;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Ldxh;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Ldxh;->a:Ldxh;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ldxh;

    invoke-direct {v0}, Ldxh;-><init>()V

    sput-object v0, Ldxh;->a:Ldxh;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Ldxh;->a:Ldxh;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(ZLcma;)V
    .locals 3
    .param p1, "birthdayRemind"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    .local p2, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLBirthdayService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLBirthdayService;

    .line 34
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/IDLBirthdayService;
    new-instance v0, Ldxh$1;

    invoke-direct {v0, p0, p2}, Ldxh$1;-><init>(Ldxh;Lcma;)V

    .line 41
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/Void;Ljava/lang/Void;>;"
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/IDLBirthdayService;->updateRemind(ZLiyv;)V

    .line 42
    return-void
.end method
