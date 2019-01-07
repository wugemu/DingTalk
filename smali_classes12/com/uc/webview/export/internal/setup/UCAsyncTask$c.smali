.class public final Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;
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
    name = "c"
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
    .line 679
    iput-object p1, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/UCAsyncTask$c;->a:Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/UCAsyncTask;->stop()Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    return-void
.end method
