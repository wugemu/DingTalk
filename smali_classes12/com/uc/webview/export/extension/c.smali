.class final Lcom/uc/webview/export/extension/c;
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
.field final synthetic a:Lcom/uc/webview/export/extension/a;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/extension/a;)V
    .locals 0

    .prologue
    .line 907
    iput-object p1, p0, Lcom/uc/webview/export/extension/c;->a:Lcom/uc/webview/export/extension/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 907
    check-cast p1, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v0, "downloadException"

    iget-object v1, p0, Lcom/uc/webview/export/extension/c;->a:Lcom/uc/webview/export/extension/a;

    iget-object v1, v1, Lcom/uc/webview/export/extension/a;->b:Ljava/util/Map;

    invoke-static {v0, p1, v1}, Lcom/uc/webview/export/extension/UCCore;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
