.class final Lcom/uc/webview/export/internal/setup/aw;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Lcom/uc/webview/export/internal/setup/s;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/av;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/av;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/aw;->a:Lcom/uc/webview/export/internal/setup/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    invoke-virtual {p1}, Lcom/uc/webview/export/internal/setup/s;->stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-void
.end method
