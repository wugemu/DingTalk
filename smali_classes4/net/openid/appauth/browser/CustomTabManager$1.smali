.class final Lnet/openid/appauth/browser/CustomTabManager$1;
.super Lj;
.source "CustomTabManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/openid/appauth/browser/CustomTabManager;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnet/openid/appauth/browser/CustomTabManager;


# direct methods
.method constructor <init>(Lnet/openid/appauth/browser/CustomTabManager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/openid/appauth/browser/CustomTabManager;

    .prologue
    .line 73
    iput-object p1, p0, Lnet/openid/appauth/browser/CustomTabManager$1;->a:Lnet/openid/appauth/browser/CustomTabManager;

    invoke-direct {p0}, Lj;-><init>()V

    return-void
.end method

.method private b(Li;)V
    .locals 1
    .param p1, "client"    # Li;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 89
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager$1;->a:Lnet/openid/appauth/browser/CustomTabManager;

    invoke-static {v0}, Lnet/openid/appauth/browser/CustomTabManager;->a(Lnet/openid/appauth/browser/CustomTabManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lnet/openid/appauth/browser/CustomTabManager$1;->a:Lnet/openid/appauth/browser/CustomTabManager;

    invoke-static {v0}, Lnet/openid/appauth/browser/CustomTabManager;->b(Lnet/openid/appauth/browser/CustomTabManager;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 91
    return-void
.end method


# virtual methods
.method public final a(Li;)V
    .locals 2
    .param p1, "customTabsClient"    # Li;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 83
    const-string/jumbo v0, "CustomTabsService is connected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lklq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Li;->a(J)Z

    .line 85
    invoke-direct {p0, p1}, Lnet/openid/appauth/browser/CustomTabManager$1;->b(Li;)V

    .line 86
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    const-string/jumbo v0, "CustomTabsService is disconnected"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lklq;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lnet/openid/appauth/browser/CustomTabManager$1;->b(Li;)V

    .line 78
    return-void
.end method
