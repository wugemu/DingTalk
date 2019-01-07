.class public final Lgqk;
.super Ljava/lang/Object;
.source "PreviewWebViewRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgqk$a;
    }
.end annotation


# instance fields
.field a:Lgql;

.field b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field c:Z

.field private d:Lgqk$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;Lgql;)V
    .locals 4
    .param p1, "webView"    # Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .param p2, "observer"    # Lgql;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v3, p0, Lgqk;->c:Z

    .line 41
    const/4 v1, 0x0

    iput-object v1, p0, Lgqk;->d:Lgqk$a;

    .line 49
    iput-object p2, p0, Lgqk;->a:Lgql;

    .line 50
    iput-object p1, p0, Lgqk;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 51
    iget-object v1, p0, Lgqk;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    .line 52
    .local v0, "webSettings":Lcom/uc/webview/export/WebSettings;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 54
    sget-object v1, Lcom/uc/webview/export/WebSettings$TextSize;->NORMAL:Lcom/uc/webview/export/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setTextSize(Lcom/uc/webview/export/WebSettings$TextSize;)V

    .line 55
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 56
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 57
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setAllowContentAccess(Z)V

    .line 58
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccess(Z)V

    .line 59
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 60
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 62
    :cond_0
    return-void
.end method

.method private static a(Lgqk$a;)V
    .locals 0
    .param p0, "client"    # Lgqk$a;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-static {p0}, Lgqk$a;->b(Lgqk$a;)V

    goto :goto_0
.end method

.method static varargs a([Ljava/lang/Object;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 243
    if-eqz p0, :cond_1

    array-length v2, p0

    if-eqz v2, :cond_1

    .line 244
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    .line 246
    .local v1, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 247
    .local v0, "o":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/Object;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 246
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "o":Ljava/lang/Object;
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    .line 254
    .end local v1    # "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 111
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lgqk;->c:Z

    .line 113
    iget-object v1, p0, Lgqk;->d:Lgqk$a;

    invoke-static {v1}, Lgqk;->a(Lgqk$a;)V

    .line 114
    iget-object v0, p0, Lgqk;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 115
    .local v0, "webView":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    if-eqz v0, :cond_0

    .line 116
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 118
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lgqk;->d:Lgqk$a;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lgqk;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lgqk;->a:Lgql;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 111
    .end local v0    # "webView":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 5
    .param p1, "previewUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 69
    monitor-enter p0

    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "executePreviewRequest"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ", isDenstroy:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lgqk;->c:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ", previewUrl: "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p1, v2, v3

    invoke-static {v2}, Lgqk;->a([Ljava/lang/Object;)V

    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lgqk;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_1
    :try_start_1
    iget-object v0, p0, Lgqk;->d:Lgqk$a;

    .line 76
    .local v0, "client":Lgqk$a;
    if-eqz v0, :cond_2

    .line 78
    invoke-static {v0}, Lgqk$a;->a(Lgqk$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-static {v0}, Lgqk;->a(Lgqk$a;)V

    .line 85
    :cond_2
    iget-object v1, p0, Lgqk;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 86
    .local v1, "webView":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    if-eqz v1, :cond_0

    .line 87
    if-nez v0, :cond_3

    .line 88
    new-instance v0, Lgqk$a;

    .end local v0    # "client":Lgqk$a;
    invoke-direct {v0, p0}, Lgqk$a;-><init>(Lgqk;)V

    .line 90
    .restart local v0    # "client":Lgqk$a;
    :cond_3
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 91
    iput-object v0, p0, Lgqk;->d:Lgqk$a;

    .line 92
    invoke-static {v0, p1}, Lgqk$a;->a(Lgqk$a;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "client":Lgqk$a;
    .end local v1    # "webView":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
