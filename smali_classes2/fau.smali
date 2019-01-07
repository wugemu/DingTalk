.class public final Lfau;
.super Ljava/lang/Object;
.source "OneboxAPIImpl.java"

# interfaces
.implements Lezz;


# static fields
.field private static a:Lfau;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lezz;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lfau;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lfau;->a:Lfau;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lfau;

    invoke-direct {v0}, Lfau;-><init>()V

    sput-object v0, Lfau;->a:Lfau;

    .line 35
    :cond_0
    sget-object v0, Lfau;->a:Lfau;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lchs;Lcma;)V
    .locals 4
    .param p1, "object"    # Lchs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lchs;",
            "Lcma",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 42
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/String;>;"
    const-class v2, Lcom/alibaba/android/user/idl/services/IDLOneboxService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/user/idl/services/IDLOneboxService;

    .line 43
    .local v1, "service":Lcom/alibaba/android/user/idl/services/IDLOneboxService;
    if-eqz p1, :cond_0

    if-nez v1, :cond_1

    .line 44
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    invoke-interface {p2, v2, v3}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    new-instance v0, Lfau$1;

    invoke-direct {v0, p0, p2}, Lfau$1;-><init>(Lfau;Lcma;)V

    .line 1049
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcgn;

    invoke-direct {v2}, Lcgn;-><init>()V

    .line 1050
    iget-object v3, p1, Lchs;->a:Ljava/lang/String;

    iput-object v3, v2, Lcgn;->a:Ljava/lang/String;

    .line 1051
    iget-object v3, p1, Lchs;->b:Ljava/lang/String;

    iput-object v3, v2, Lcgn;->b:Ljava/lang/String;

    .line 1052
    iget-object v3, p1, Lchs;->d:Ljava/lang/String;

    iput-object v3, v2, Lcgn;->d:Ljava/lang/String;

    .line 1053
    iget-object v3, p1, Lchs;->c:Ljava/lang/String;

    iput-object v3, v2, Lcgn;->c:Ljava/lang/String;

    .line 55
    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/user/idl/services/IDLOneboxService;->getVisitRecordUrl(Lcgn;Liyv;)V

    .line 56
    return-void
.end method
