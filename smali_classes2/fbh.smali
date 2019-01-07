.class public final Lfbh;
.super Ljava/lang/Object;
.source "UserSettingImpl.java"

# interfaces
.implements Lfad;


# static fields
.field private static a:Lfbh;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized a()Lfad;
    .locals 2

    .prologue
    .line 20
    const-class v1, Lfbh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfbh;->a:Lfbh;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lfbh;

    invoke-direct {v0}, Lfbh;-><init>()V

    sput-object v0, Lfbh;->a:Lfbh;

    .line 24
    :cond_0
    sget-object v0, Lfbh;->a:Lfbh;
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
.method public final a(Ljava/util/List;Lcma;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcma",
            "<",
            "Lcfr;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 53
    .local p1, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "listener":Lcma;, "Lcma<Lcfr;>;"
    new-instance v0, Lfbh$1;

    invoke-direct {v0, p0, p2}, Lfbh$1;-><init>(Lfbh;Lcma;)V

    .line 58
    .local v0, "handler":Lcme;, "Lcme<Lcfr;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/QuotaIService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/QuotaIService;

    .line 59
    .local v1, "quotaIService":Lcom/alibaba/android/user/idl/services/QuotaIService;
    invoke-interface {v1, p1, v0}, Lcom/alibaba/android/user/idl/services/QuotaIService;->query(Ljava/util/List;Liyv;)V

    .line 60
    return-void
.end method
