.class public final Lcom/uc/webview/export/internal/android/v;
.super Lcom/uc/webview/export/internal/a;
.source "ProGuard"


# instance fields
.field f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/uc/webview/export/internal/a;-><init>()V

    .line 22
    new-instance v0, Lcom/uc/webview/export/internal/android/w;

    invoke-direct {v0, p0}, Lcom/uc/webview/export/internal/android/w;-><init>(Lcom/uc/webview/export/internal/android/v;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/android/v;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a()Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/uc/webview/export/internal/android/v;->a:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/uc/webview/export/internal/android/v;->d:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/android/v;->d:I

    return v0
.end method


# virtual methods
.method public final a(Lcom/uc/webview/export/internal/interfaces/IWebView;I)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 49
    if-nez p2, :cond_1

    .line 50
    sget v0, Lcom/uc/webview/export/internal/android/v;->d:I

    if-eq v0, v1, :cond_0

    .line 52
    sput v1, Lcom/uc/webview/export/internal/android/v;->d:I

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    sget v0, Lcom/uc/webview/export/internal/android/v;->d:I

    if-ne v0, v1, :cond_0

    .line 57
    sget-object v0, Lcom/uc/webview/export/internal/android/v;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/v;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    sget-object v0, Lcom/uc/webview/export/internal/android/v;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/v;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final b(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 64
    sget-object v0, Lcom/uc/webview/export/internal/android/v;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/uc/webview/export/internal/android/v;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_0

    .line 70
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "WebViewDetector:destroy"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->saveData(Z)V

    .line 75
    :cond_1
    return-void
.end method
