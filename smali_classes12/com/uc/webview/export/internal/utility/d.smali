.class final Lcom/uc/webview/export/internal/utility/d;
.super Landroid/content/BroadcastReceiver;
.source "ProGuard"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 251
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lcom/uc/webview/export/internal/utility/c;->b()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/c;->a(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 256
    return-void
.end method
