.class public Lcom/alibaba/lightapp/runtime/WebViewWrapper;
.super Lcom/uc/webview/export/WebView;
.source "WebViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;,
        Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static h:Ljava/lang/Boolean;


# instance fields
.field private b:Z

.field private c:Lhdq;

.field private d:Lhdq;

.field private e:Lhdp;

.field public f:Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;

.field private g:Lhdp;

.field private final i:Landroid/os/Looper;

.field private j:Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->i:Landroid/os/Looper;

    .line 57
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->i:Landroid/os/Looper;

    .line 67
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a()V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->i:Landroid/os/Looper;

    .line 72
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a()V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "privateBrowsing"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->i:Landroid/os/Looper;

    .line 77
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSystemCore"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;Z)V

    .line 49
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->i:Landroid/os/Looper;

    .line 62
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a()V

    .line 63
    return-void
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x12

    if-lt v2, v4, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->h:Ljava/lang/Boolean;

    .line 85
    new-instance v1, Lhdq;

    invoke-direct {v1}, Lhdq;-><init>()V

    .line 86
    .local v1, "rootWebViewClient":Lhdq;
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->c:Lhdq;

    .line 88
    new-instance v2, Lhdq;

    invoke-direct {v2}, Lhdq;-><init>()V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->d:Lhdq;

    .line 89
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->c:Lhdq;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->d:Lhdq;

    invoke-virtual {v2, v4}, Lhdq;->attachClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 91
    invoke-super {p0, v1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 93
    new-instance v0, Lhdp;

    invoke-direct {v0}, Lhdp;-><init>()V

    .line 94
    .local v0, "rootWebChromeClient":Lhdp;
    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->e:Lhdp;

    .line 96
    new-instance v2, Lhdp;

    invoke-direct {v2}, Lhdp;-><init>()V

    iput-object v2, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->g:Lhdp;

    .line 97
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->e:Lhdp;

    iget-object v4, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->g:Lhdp;

    invoke-virtual {v2, v4}, Lhdp;->attachClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 99
    iput-boolean v3, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    .line 101
    invoke-super {p0, v0}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 102
    return-void

    .end local v0    # "rootWebChromeClient":Lhdp;
    .end local v1    # "rootWebViewClient":Lhdq;
    :cond_0
    move v2, v3

    .line 82
    goto :goto_0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 742
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->i:Landroid/os/Looper;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->i:Landroid/os/Looper;

    if-eq v1, v2, :cond_0

    .line 743
    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "A WebView method was called on thread \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 745
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\'. All WebView methods must be called on the same thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "(Expected Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->i:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 747
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", FYI main Looper is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 748
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 749
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    sget-object v1, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->h:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 752
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 755
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a(Lhdp;)V
    .locals 2
    .param p1, "bound"    # Lhdp;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 720
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b()V

    .line 717
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->e:Lhdp;

    invoke-virtual {v0, p1}, Lhdp;->attachClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 718
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->e:Lhdp;

    .line 719
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->e:Lhdp;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->g:Lhdp;

    invoke-virtual {v0, v1}, Lhdp;->attachClient(Lcom/uc/webview/export/WebChromeClient;)V

    goto :goto_0
.end method

.method protected final a(Lhdq;)V
    .locals 2
    .param p1, "bound"    # Lhdq;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 700
    if-nez p1, :cond_0

    .line 708
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b()V

    .line 705
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->c:Lhdq;

    invoke-virtual {v0, p1}, Lhdq;->attachClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 706
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->c:Lhdq;

    .line 707
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->c:Lhdq;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->d:Lhdq;

    invoke-virtual {v0, v1}, Lhdq;->attachClient(Lcom/uc/webview/export/WebViewClient;)V

    goto :goto_0
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b(Lhdp;)V
    .locals 0
    .param p1, "bound"    # Lhdp;

    .prologue
    .line 737
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a(Lhdp;)V

    .line 738
    return-void
.end method

.method public final b(Lhdq;)V
    .locals 0
    .param p1, "bound"    # Lhdq;

    .prologue
    .line 728
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->a(Lhdq;)V

    .line 729
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    .line 124
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v0

    goto :goto_0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->canGoBackOrForward(I)Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 662
    const/4 v0, 0x0

    .line 664
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->canZoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x0

    .line 674
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->canZoomOut()Z

    move-result v0

    goto :goto_0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 681
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 684
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->clearCache(Z)V

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->clearFormData()V

    goto :goto_0
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->clearHistory()V

    goto :goto_0
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 165
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->clearMatches()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 169
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->clearSslPreferences()V

    goto :goto_0
.end method

.method public copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    goto :goto_0
.end method

.method public coreOnScrollChanged(IIII)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "oldScrollX"    # I
    .param p4, "oldScrollY"    # I

    .prologue
    .line 760
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->coreOnScrollChanged(IIII)V

    .line 761
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->j:Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->j:Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;

    invoke-interface {v0, p2}, Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;->a(I)V

    .line 764
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    .line 107
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 108
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 400
    const/4 v0, 0x0

    .line 402
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->documentHasImages(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 651
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 654
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .param p1, "find"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 644
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->findAll(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "find"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 197
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->findAllAsync(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .param p1, "forward"    # Z

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->findNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    .line 208
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 212
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->flingScroll(II)V

    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    goto :goto_0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 227
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getContentHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getCoreView()Landroid/view/View;
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 690
    const/4 v0, 0x0

    .line 692
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 241
    const/4 v0, 0x0

    .line 243
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;

    move-result-object v0

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v0, 0x0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 258
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 264
    const/4 v0, 0x0

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getProgress()I

    move-result v0

    goto :goto_0
.end method

.method public getScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 273
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 276
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getScale()F

    move-result v0

    goto :goto_0
.end method

.method public getSettings()Lcom/uc/webview/export/WebSettings;
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 504
    const/4 v0, 0x0

    .line 506
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getSettings()Lcom/uc/webview/export/WebSettings;

    move-result-object v0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 282
    const/4 v0, 0x0

    .line 284
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x0

    .line 292
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 300
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->goBack()V

    goto :goto_0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 309
    :goto_0
    return-void

    .line 308
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->goBackOrForward(I)V

    goto :goto_0
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->goForward()V

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->f:Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;

    if-eqz v0, :cond_0

    .line 774
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->f:Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;

    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;->a()V

    .line 776
    :cond_0
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 324
    :goto_0
    return-void

    .line 323
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->invokeZoomPicker()V

    goto :goto_0
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x0

    .line 426
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 331
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/uc/webview/export/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/uc/webview/export/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 344
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 348
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 355
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 360
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 363
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 368
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onResume()V

    goto :goto_0
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 440
    const/4 v0, 0x0

    .line 442
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    goto :goto_0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    .line 450
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    goto :goto_0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 456
    const/4 v0, 0x0

    .line 458
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->pageDown(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    .line 466
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->pageUp(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->pauseTimers()V

    goto :goto_0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 482
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uc/webview/export/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 487
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->reload()V

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 495
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 498
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1
    .param p1, "hrefMsg"    # Landroid/os/Message;

    .prologue
    .line 511
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 514
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 522
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->requestImageRef(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 527
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 528
    const/4 v0, 0x0

    .line 530
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->restoreState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 539
    :goto_0
    return-void

    .line 538
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->resumeTimers()V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 544
    const/4 v0, 0x0

    .line 546
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->saveState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v0

    goto :goto_0
.end method

.method public setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/uc/webview/export/DownloadListener;

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 555
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    goto :goto_0
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "horizontalScrollBarEnabled"    # Z

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 563
    :goto_0
    return-void

    .line 562
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 571
    :goto_0
    return-void

    .line 570
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setInitialScale(I)V

    goto :goto_0
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    .prologue
    .line 575
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 579
    :goto_0
    return-void

    .line 578
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setNetworkAvailable(Z)V

    goto :goto_0
.end method

.method public setOnCoreScrollChangeLsitener(Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;)V
    .locals 0
    .param p1, "onCoreScrollChangeLsitener"    # Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->j:Lcom/alibaba/lightapp/runtime/WebViewWrapper$a;

    .line 797
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnKeyListener;

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 395
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 380
    :goto_0
    return-void

    .line 379
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0
.end method

.method public setOnPageStatusListener(Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;)V
    .locals 0
    .param p1, "onPageStatusListener"    # Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->f:Lcom/alibaba/lightapp/runtime/WebViewWrapper$b;

    .line 801
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 387
    :goto_0
    return-void

    .line 386
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setVerticalScrollBarEnabled(Z)V

    goto :goto_0
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1
    .param p1, "overlay"    # Z

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 587
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->setVerticalScrollbarOverlay(Z)V

    goto :goto_0
.end method

.method public setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Lcom/uc/webview/export/WebChromeClient;

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 635
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b()V

    .line 636
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->g:Lhdp;

    invoke-virtual {v0, p1}, Lhdp;->attachClient(Lcom/uc/webview/export/WebChromeClient;)V

    goto :goto_0
.end method

.method public setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Lcom/uc/webview/export/WebViewClient;

    .prologue
    .line 623
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 628
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b()V

    .line 627
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->d:Lhdq;

    invoke-virtual {v0, p1}, Lhdq;->attachClient(Lcom/uc/webview/export/WebViewClient;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 591
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 595
    :goto_0
    return-void

    .line 594
    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->stopLoading()V

    goto :goto_0
.end method

.method public zoomBy(F)V
    .locals 1
    .param p1, "zoomFactor"    # F

    .prologue
    .line 615
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 619
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-super {p0, p1}, Lcom/uc/webview/export/WebView;->zoomBy(F)V

    goto :goto_0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 600
    const/4 v0, 0x0

    .line 602
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->zoomIn()Z

    move-result v0

    goto :goto_0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 607
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/WebViewWrapper;->b:Z

    if-eqz v0, :cond_0

    .line 608
    const/4 v0, 0x0

    .line 610
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->zoomOut()Z

    move-result v0

    goto :goto_0
.end method
