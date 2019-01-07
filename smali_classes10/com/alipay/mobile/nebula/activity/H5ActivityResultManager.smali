.class public Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;
.super Ljava/lang/Object;
.source "H5ActivityResultManager.java"


# static fields
.field private static instance:Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->list:Ljava/util/List;

    .line 29
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->instance:Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->instance:Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;

    .line 24
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->instance:Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public put(Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;)V
    .locals 1
    .param p1, "onH5ActivityResult"    # Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method public remove(Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;)V
    .locals 1
    .param p1, "onH5ActivityResult"    # Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public sendResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "dat"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 42
    iget-object v1, p0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebula/activity/H5ActivityResultManager;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;

    .line 46
    .local v0, "h5ActivityResult":Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;
    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/activity/OnH5ActivityResult;->onGetResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method
