.class public Lnet/openid/appauth/browser/CustomTabManager;
.super Ljava/lang/Object;
.source "CustomTabManager.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Li;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lj;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->a:Ljava/lang/ref/WeakReference;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 65
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->c:Ljava/util/concurrent/CountDownLatch;

    .line 66
    return-void
.end method

.method static synthetic a(Lnet/openid/appauth/browser/CustomTabManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .param p0, "x0"    # Lnet/openid/appauth/browser/CustomTabManager;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic b(Lnet/openid/appauth/browser/CustomTabManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .param p0, "x0"    # Lnet/openid/appauth/browser/CustomTabManager;

    .prologue
    .line 43
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager;->c:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 6
    .param p1, "browserPackage"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lnet/openid/appauth/browser/CustomTabManager;->d:Lj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 73
    :cond_1
    :try_start_1
    new-instance v1, Lnet/openid/appauth/browser/CustomTabManager$1;

    invoke-direct {v1, p0}, Lnet/openid/appauth/browser/CustomTabManager$1;-><init>(Lnet/openid/appauth/browser/CustomTabManager;)V

    iput-object v1, p0, Lnet/openid/appauth/browser/CustomTabManager;->d:Lj;

    .line 94
    iget-object v1, p0, Lnet/openid/appauth/browser/CustomTabManager;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 95
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lnet/openid/appauth/browser/CustomTabManager;->d:Lj;

    .line 1068
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.support.customtabs.action.CustomTabsService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1069
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1070
    :cond_2
    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 95
    if-nez v1, :cond_0

    .line 100
    :cond_3
    const-string/jumbo v1, "Unable to bind custom tabs service"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 1083
    invoke-static {}, Lklq;->a()Lklq;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v1, v2}, Lklq;->a(ILjava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object v1, p0, Lnet/openid/appauth/browser/CustomTabManager;->c:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
