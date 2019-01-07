.class public final Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/webview/export/internal/setup/UCAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CB_TYPE:",
        "Lcom/uc/webview/export/internal/setup/UCAsyncTask",
        "<TCB_TYPE;TCB_TYPE;>;>",
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<TCB_TYPE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/setup/UCAsyncTask;)V
    .locals 0

    .prologue
    .line 686
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 686
    check-cast p1, Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    iget-object v1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask$a;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    const/16 v0, 0x2719

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->callback(Ljava/lang/String;)V

    return-void
.end method
