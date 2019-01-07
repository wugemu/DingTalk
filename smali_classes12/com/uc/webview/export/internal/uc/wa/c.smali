.class public final Lcom/uc/webview/export/internal/uc/wa/c;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/uc/webview/export/internal/uc/wa/a;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/internal/uc/wa/a;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/uc/webview/export/internal/uc/wa/c;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/uc/wa/c;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    iget-object v1, p0, Lcom/uc/webview/export/internal/uc/wa/c;->a:Lcom/uc/webview/export/internal/uc/wa/a;

    .line 500
    invoke-static {v1}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Lcom/uc/webview/export/internal/uc/wa/a;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "UC_WA_STAT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 499
    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/uc/wa/a;->a(Lcom/uc/webview/export/internal/uc/wa/a;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-static {v0}, Lcom/uc/webview/export/internal/uc/wa/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :goto_0
    return-void

    .line 502
    :catch_0
    move-exception v0

    .line 503
    const-string/jumbo v1, "SDKWaStat"

    const-string/jumbo v2, "generateUUID"

    invoke-static {v1, v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
