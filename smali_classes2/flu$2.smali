.class final Lflu$2;
.super Ljava/lang/Object;
.source "LocalOrgEmployeeCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflu;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 469
    const-string/jumbo v3, "uploadOfflineAudit start"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v3

    invoke-virtual {v3}, Lfmz;->j()Lfmx;

    move-result-object v1

    .line 471
    .local v1, "safeOplogDataSource":Lfmx;
    if-nez v1, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 474
    :cond_1
    invoke-interface {v1}, Lfmx;->b()Ljava/util/List;

    move-result-object v2

    .line 475
    .local v2, "safeOplogModelList":Ljava/util/List;, "Ljava/util/List<Lfqk;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    const-class v3, Lcom/alibaba/android/user/idl/services/SafeIService;

    invoke-static {v3}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/idl/services/SafeIService;

    .line 479
    .local v0, "safeIService":Lcom/alibaba/android/user/idl/services/SafeIService;
    if-eqz v0, :cond_0

    .line 482
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uploadOfflineAudit content "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lfxo;->n(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 483
    new-instance v3, Lflu$2$1;

    invoke-direct {v3, p0}, Lflu$2$1;-><init>(Lflu$2;)V

    invoke-interface {v0, v2, v3}, Lcom/alibaba/android/user/idl/services/SafeIService;->oplogBatch(Ljava/util/List;Liyv;)V

    goto :goto_0
.end method
