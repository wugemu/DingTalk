.class public Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;
.super Lcom/alipay/mobile/security/bio/thread/WatchThread;
.source "BioUploadWatchThread.java"


# instance fields
.field private a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/mobile/security/bio/service/BioUploadItem;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field public mMainHandle:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "manager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/bio/thread/WatchThread;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a:Ljava/util/concurrent/BlockingQueue;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->c:Ljava/util/List;

    .line 41
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->d:Ljava/lang/String;

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v1, "BioServiceManager can\'t be null."

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadJsonGWImpl;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->mMainHandle:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->c:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addBioUploadCallBack(Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/alipay/mobile/security/bio/service/BioUploadCallBack;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    return-void
.end method

.method public addBioUploadItem(Lcom/alipay/mobile/security/bio/service/BioUploadItem;)V
    .locals 4
    .param p1, "item"    # Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 125
    .local v1, "isAddSuc":Z
    if-nez v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->mMainHandle:Landroid/os/Handler;

    new-instance v3, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$2;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$2;-><init>(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v1    # "isAddSuc":Z
    :cond_0
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 155
    invoke-virtual {p0}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->kill()V

    .line 157
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFulled()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setZimId(Ljava/lang/String;)V
    .locals 0
    .param p1, "zimId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->d:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected final task()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->a:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;

    .line 91
    .local v1, "request":Lcom/alipay/mobile/security/bio/service/BioUploadItem;
    if-eqz v1, :cond_0

    .line 93
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->b:Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;

    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->d:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadGW;->upload(Ljava/lang/String;Lcom/alipay/mobile/security/bio/service/BioUploadItem;)Lcom/alipay/mobile/security/bio/service/BioUploadResult;

    move-result-object v2

    .line 95
    .local v2, "result":Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->mMainHandle:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/alipay/mobile/security/bio/service/BioUploadItem;->isNeedSendResponse:Z

    if-eqz v3, :cond_0

    .line 97
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;->mMainHandle:Landroid/os/Handler;

    new-instance v4, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;

    invoke-direct {v4, p0, v2}, Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread$1;-><init>(Lcom/alipay/mobile/security/bio/service/impl/BioUploadWatchThread;Lcom/alipay/mobile/security/bio/service/BioUploadResult;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "request":Lcom/alipay/mobile/security/bio/service/BioUploadItem;
    .end local v2    # "result":Lcom/alipay/mobile/security/bio/service/BioUploadResult;
    :cond_0
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
