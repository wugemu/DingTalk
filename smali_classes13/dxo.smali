.class public final Ldxo;
.super Ljava/lang/Object;
.source "EmotionPackageAPIImpl.java"

# interfaces
.implements Ldxn;


# static fields
.field private static a:Ldxo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static declared-synchronized a()Ldxn;
    .locals 2

    .prologue
    .line 45
    const-class v1, Ldxo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldxo;->a:Ldxo;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Ldxo;

    invoke-direct {v0}, Ldxo;-><init>()V

    sput-object v0, Ldxo;->a:Ldxo;

    .line 48
    :cond_0
    sget-object v0, Ldxo;->a:Ldxo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(JLcma;)V
    .locals 5
    .param p1, "version"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ldrf;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "listener":Lcma;, "Lcma<Ldrf;>;"
    new-instance v0, Ldxo$1;

    invoke-direct {v0, p0, p3}, Ldxo$1;-><init>(Ldxo;Lcma;)V

    .line 69
    .local v0, "handler":Lcmg;, "Lcmg<Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageList;Ldrf;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;

    .line 70
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;
    if-nez v1, :cond_0

    .line 71
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 1033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;->getEmotionPackageList(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final a(Lcma;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 123
    .local p1, "listener":Lcma;, "Lcma<Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;>;>;"
    new-instance v0, Ldxo$4;

    invoke-direct {v0, p0, p1}, Ldxo$4;-><init>(Ldxo;Lcma;)V

    .line 138
    .local v0, "handler":Lcmg;, "Lcmg<Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageModel;>;Ljava/util/List<Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;>;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;

    .line 139
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;
    if-nez v1, :cond_0

    .line 140
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "service is null"

    .line 3033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-interface {v1, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;->getEmotionPackagePurchaseHistory(Liyv;)V

    goto :goto_0
.end method

.method public final b(JLcma;)V
    .locals 5
    .param p1, "packageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ldre;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p3, "listener":Lcma;, "Lcma<Ldre;>;"
    new-instance v0, Ldxo$2;

    invoke-direct {v0, p0, p3}, Ldxo$2;-><init>(Ldxo;Lcma;)V

    .line 92
    .local v0, "handler":Lcmg;, "Lcmg<Lcom/alibaba/android/dingtalkim/models/idl/EmotionPackageDetailModel;Ldre;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;

    .line 93
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-nez v1, :cond_1

    .line 94
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "packageId is invalid"

    .line 2033
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcmg;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;->getEmotionPackageDetail(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method

.method public final c(JLcma;)V
    .locals 5
    .param p1, "packageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    new-instance v0, Ldxo$3;

    invoke-direct {v0, p0, p3}, Ldxo$3;-><init>(Ldxo;Lcma;)V

    .line 109
    .local v0, "handler":Lcme;, "Lcme<Ljava/lang/Void;>;"
    const-class v2, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;

    invoke-static {v2}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;

    .line 110
    .local v1, "service":Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    if-nez v1, :cond_1

    .line 111
    :cond_0
    const-string/jumbo v2, "err_parameter"

    const-string/jumbo v3, "packageId is invalid"

    .line 2036
    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcme;->onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/alibaba/android/dingtalkim/models/idl/service/EmotionPackageService;->purchaseEmotionPackage(Ljava/lang/Long;Liyv;)V

    goto :goto_0
.end method
