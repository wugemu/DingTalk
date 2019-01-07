.class final Lcom/uc/webview/export/internal/setup/cv;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/utility/download/UpdateTask;

.field final synthetic b:Lcom/uc/webview/export/internal/setup/cu;


# direct methods
.method constructor <init>(Lcom/uc/webview/export/internal/setup/cu;Lcom/uc/webview/export/utility/download/UpdateTask;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/cv;->b:Lcom/uc/webview/export/internal/setup/cu;

    iput-object p2, p0, Lcom/uc/webview/export/internal/setup/cv;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/cv;->a:Lcom/uc/webview/export/utility/download/UpdateTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/utility/download/UpdateTask;->start()Lcom/uc/webview/export/utility/download/UpdateTask;

    .line 251
    return-void
.end method
