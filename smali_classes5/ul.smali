.class public final Lul;
.super Ljava/lang/Object;
.source "PreviewWebViewRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lul$a;
    }
.end annotation


# instance fields
.field a:Lum;

.field b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

.field c:Z

.field private d:Lul$a;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;Lum;)V
    .locals 4
    .param p1, "webView"    # Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    .param p2, "observer"    # Lum;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-boolean v3, p0, Lul;->c:Z

    .line 40
    const/4 v1, 0x0

    iput-object v1, p0, Lul;->d:Lul$a;

    .line 48
    iput-object p2, p0, Lul;->a:Lum;

    .line 49
    iput-object p1, p0, Lul;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 50
    iget-object v1, p0, Lul;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    .line 51
    .local v0, "webSettings":Lcom/uc/webview/export/WebSettings;
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setJavaScriptEnabled(Z)V

    .line 53
    sget-object v1, Lcom/uc/webview/export/WebSettings$TextSize;->NORMAL:Lcom/uc/webview/export/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebSettings;->setTextSize(Lcom/uc/webview/export/WebSettings$TextSize;)V

    .line 54
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setSaveFormData(Z)V

    .line 55
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/WebSettings;->setSavePassword(Z)V

    .line 56
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setAllowContentAccess(Z)V

    .line 57
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setAllowFileAccess(Z)V

    .line 58
    invoke-virtual {v0, v2}, Lcom/uc/webview/export/WebSettings;->setSupportZoom(Z)V

    .line 59
    invoke-virtual {v0, v3}, Lcom/uc/webview/export/WebSettings;->setDisplayZoomControls(Z)V

    .line 61
    :cond_0
    return-void
.end method

.method private static a(Lul$a;)V
    .locals 0
    .param p0, "client"    # Lul$a;

    .prologue
    .line 99
    if-nez p0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lul$a;->a()V

    goto :goto_0
.end method

.method static final varargs a([Ljava/lang/Object;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 240
    sget-boolean v5, Lzb;->b:Z

    if-eqz v5, :cond_0

    array-length v5, p0

    if-eqz v5, :cond_0

    .line 241
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .local v4, "sb":Ljava/lang/StringBuilder;
    move-object v1, p0

    .line 243
    .local v1, "arr":[Ljava/lang/Object;
    array-length v3, p0

    .line 245
    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 246
    aget-object v0, v1, v2

    .line 247
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    .end local v0    # "arg":Ljava/lang/Object;
    .end local v1    # "arr":[Ljava/lang/Object;
    .end local v2    # "i":I
    .end local v3    # "len":I
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 109
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lul;->c:Z

    .line 111
    iget-object v1, p0, Lul;->d:Lul$a;

    invoke-static {v1}, Lul;->a(Lul$a;)V

    .line 112
    iget-object v0, p0, Lul;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 113
    .local v0, "webView":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    if-eqz v0, :cond_0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 116
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lul;->d:Lul$a;

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lul;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lul;->a:Lum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    .line 109
    .end local v0    # "webView":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 5
    .param p1, "previewUrl"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 68
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

    iget-boolean v4, p0, Lul;->c:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, ", previewUrl: "

    aput-object v4, v2, v3

    const/4 v3, 0x4

    aput-object p1, v2, v3

    invoke-static {v2}, Lul;->a([Ljava/lang/Object;)V

    .line 69
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lul;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 92
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 72
    :cond_1
    :try_start_1
    iget-object v0, p0, Lul;->d:Lul$a;

    .line 73
    .local v0, "client":Lul$a;
    if-eqz v0, :cond_2

    .line 75
    invoke-static {v0}, Lul$a;->a(Lul$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    invoke-static {v0}, Lul;->a(Lul$a;)V

    .line 82
    :cond_2
    iget-object v1, p0, Lul;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 83
    .local v1, "webView":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    if-eqz v1, :cond_0

    .line 84
    if-nez v0, :cond_3

    .line 85
    new-instance v0, Lul$a;

    .end local v0    # "client":Lul$a;
    invoke-direct {v0, p0}, Lul$a;-><init>(Lul;)V

    .line 87
    .restart local v0    # "client":Lul$a;
    :cond_3
    invoke-virtual {v1, v0}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 88
    iput-object v0, p0, Lul;->d:Lul$a;

    .line 1136
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "executeRequestUrl"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ", previewUrl:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v2}, Lul;->a([Ljava/lang/Object;)V

    .line 1137
    if-eqz p1, :cond_0

    .line 1140
    iput-object p1, v0, Lul$a;->b:Ljava/lang/String;

    .line 1141
    iget-object v2, v0, Lul$a;->a:Lul;

    .line 2035
    iget-object v2, v2, Lul;->b:Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;

    .line 1142
    invoke-virtual {v0}, Lul$a;->b()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 1143
    iget-object v3, v0, Lul$a;->a:Lul;

    .line 3035
    iget-object v3, v3, Lul;->a:Lum;

    .line 1144
    if-eqz v3, :cond_4

    .line 1145
    invoke-interface {v3}, Lum;->a()V

    .line 1147
    :cond_4
    iget-object v3, v0, Lul$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;->loadUrl(Ljava/lang/String;)V

    .line 1149
    :cond_5
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "executeRequestUrl end----->>"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, ", previewUrl:"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p1, v2, v3

    invoke-static {v2}, Lul;->a([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 68
    .end local v0    # "client":Lul$a;
    .end local v1    # "webView":Lcom/alibaba/dingtalk/runtimebase/web/WebViewWrapper;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
