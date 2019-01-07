.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$7;
.super Landroid/content/BroadcastReceiver;
.source "UCWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/impl/UCWebView;->registerAppXResourceLoadedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 991
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 995
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$100()V

    .line 996
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$500()Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1000
    :goto_0
    return-void

    .line 997
    :catch_0
    move-exception v0

    .line 998
    .local v0, "thr":Ljava/lang/Throwable;
    const-string/jumbo v1, "H5UCWebView"

    const-string/jumbo v2, "preloadAppXJs error!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
