.class public final Lcom/uc/webview/export/internal/uc/c;
.super Lcom/uc/webview/export/internal/a;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/webview/export/internal/uc/c$a;
    }
.end annotation


# static fields
.field static f:Ljava/lang/Runnable;

.field private static g:Lcom/uc/webview/export/internal/utility/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/uc/webview/export/internal/uc/d;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/uc/d;-><init>()V

    sput-object v0, Lcom/uc/webview/export/internal/uc/c;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/uc/webview/export/internal/a;-><init>()V

    .line 97
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/uc/c;->g:Lcom/uc/webview/export/internal/utility/e;

    if-nez v0, :cond_0

    .line 98
    new-instance v1, Lcom/uc/webview/export/internal/utility/e;

    invoke-direct {v1, p1}, Lcom/uc/webview/export/internal/utility/e;-><init>(Landroid/content/Context;)V

    .line 99
    sput-object v1, Lcom/uc/webview/export/internal/uc/c;->g:Lcom/uc/webview/export/internal/utility/e;

    new-instance v0, Lcom/uc/webview/export/internal/uc/c$a;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/internal/uc/c$a;-><init>(Lcom/uc/webview/export/internal/uc/c;Landroid/content/Context;)V

    iput-object v0, v1, Lcom/uc/webview/export/internal/utility/e;->b:Lcom/uc/webview/export/internal/utility/e$a;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/uc/webview/export/internal/utility/e;->a:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/e;->a:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Lcom/uc/webview/export/internal/utility/e;->a(Landroid/os/PowerManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/e;->b:Lcom/uc/webview/export/internal/utility/e$a;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/e;->b:Lcom/uc/webview/export/internal/utility/e$a;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/utility/e$a;->a()V

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/e;->b:Lcom/uc/webview/export/internal/utility/e$a;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/uc/webview/export/internal/utility/e;->b:Lcom/uc/webview/export/internal/utility/e$a;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/utility/e$a;->b()V

    goto :goto_0
.end method

.method static synthetic a()Ljava/util/LinkedHashSet;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/uc/webview/export/internal/uc/c;->a:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic b()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/uc/webview/export/internal/uc/c;->d:I

    return v0
.end method

.method static synthetic c()I
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput v0, Lcom/uc/webview/export/internal/uc/c;->d:I

    return v0
.end method

.method static synthetic d()Lcom/uc/webview/export/internal/utility/e;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/uc/webview/export/internal/uc/c;->g:Lcom/uc/webview/export/internal/utility/e;

    return-object v0
.end method


# virtual methods
.method public final a(II)V
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/uc/webview/export/internal/uc/c;->b:I

    if-ne v0, p1, :cond_0

    sget v0, Lcom/uc/webview/export/internal/uc/c;->c:I

    if-ne v0, p2, :cond_0

    .line 114
    :goto_0
    return-void

    .line 108
    :cond_0
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onWindowSizeChanged()V

    .line 112
    :cond_1
    sput p1, Lcom/uc/webview/export/internal/uc/c;->b:I

    .line 113
    sput p2, Lcom/uc/webview/export/internal/uc/c;->c:I

    goto :goto_0
.end method

.method public final a(Lcom/uc/webview/export/internal/interfaces/IWebView;I)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 117
    const-string/jumbo v0, "WebViewDetector"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onWindowVisibilityChanged: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    if-nez p2, :cond_2

    move v0, v1

    :goto_0
    invoke-interface {p1, v0}, Lcom/uc/webview/export/internal/interfaces/IWebView;->notifyForegroundChanged(Z)V

    .line 124
    if-nez p2, :cond_3

    .line 125
    sget v0, Lcom/uc/webview/export/internal/uc/c;->d:I

    if-eq v0, v1, :cond_1

    .line 126
    sget-boolean v0, Lcom/uc/webview/export/internal/SDKFactory;->g:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    if-eqz v0, :cond_0

    .line 127
    sget-object v0, Lcom/uc/webview/export/internal/SDKFactory;->d:Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;

    invoke-interface {v0}, Lcom/uc/webview/export/internal/interfaces/UCMobileWebKit;->onResume()V

    .line 129
    :cond_0
    const-string/jumbo v0, "WebViewDetector"

    const-string/jumbo v2, "WebViewDetector:onResume"

    invoke-static {v0, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sput v1, Lcom/uc/webview/export/internal/uc/c;->d:I

    .line 138
    :cond_1
    :goto_1
    return-void

    .line 121
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_3
    sget v0, Lcom/uc/webview/export/internal/uc/c;->d:I

    if-ne v0, v1, :cond_1

    .line 135
    sget-object v0, Lcom/uc/webview/export/internal/uc/c;->e:Landroid/os/Handler;

    sget-object v1, Lcom/uc/webview/export/internal/uc/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    sget-object v0, Lcom/uc/webview/export/internal/uc/c;->e:Landroid/os/Handler;

    sget-object v1, Lcom/uc/webview/export/internal/uc/c;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public final b(Lcom/uc/webview/export/internal/interfaces/IWebView;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    sget-object v0, Lcom/uc/webview/export/internal/uc/c;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lcom/uc/webview/export/internal/uc/c;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    sget-boolean v0, Lcom/uc/webview/export/utility/Utils;->sWAPrintLog:Z

    if-eqz v0, :cond_0

    .line 149
    const-string/jumbo v0, "SDKWaStat"

    const-string/jumbo v1, "WebViewDetector:destroy"

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->saveData(Z)V

    .line 154
    :cond_1
    return-void
.end method
