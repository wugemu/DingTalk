.class public Lcom/alibaba/lightapp/runtime/SecureWebView;
.super Lcom/alibaba/lightapp/runtime/NuvaWebView;
.source "SecureWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/SecureWebView$a;
    }
.end annotation


# instance fields
.field private g:Lcom/alibaba/lightapp/runtime/SecureWebView$a;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->i()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->i()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/NuvaWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->i()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "privateBrowsing"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/lightapp/runtime/NuvaWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    .line 49
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->i()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isSystemCore"    # Z

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;-><init>(Landroid/content/Context;Z)V

    .line 34
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->i()V

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/SecureWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/SecureWebView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->j()V

    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/SecureWebView;)Lcom/alibaba/lightapp/runtime/SecureWebView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/SecureWebView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->g:Lcom/alibaba/lightapp/runtime/SecureWebView$a;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/SecureWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/SecureWebView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->k()V

    return-void
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    new-instance v0, Lcom/alibaba/lightapp/runtime/SecureWebView$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/SecureWebView$a;-><init>(Lcom/alibaba/lightapp/runtime/SecureWebView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->setVerifier(Lcom/alibaba/lightapp/runtime/SecureWebView$a;)V

    .line 63
    new-instance v0, Lcom/alibaba/lightapp/runtime/SecureWebView$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/SecureWebView$1;-><init>(Lcom/alibaba/lightapp/runtime/SecureWebView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->a(Lhdq;)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 75
    const-string/jumbo v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 77
    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->l()V

    .line 144
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 145
    .local v0, "name":Ljava/lang/String;
    invoke-super {p0, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private k()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->l()V

    .line 152
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 153
    .local v0, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->h:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-super {p0, v2, v0}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 155
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->h:Ljava/util/Map;

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation runtime Lcom/uc/webview/export/JavascriptInterface;
    .end annotation

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->l()V

    .line 85
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->h:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->j()V

    .line 126
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->k()V

    .line 128
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->j()V

    .line 136
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->k()V

    .line 138
    invoke-super/range {p0 .. p5}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p1, :cond_0

    const-string/jumbo v0, "javascript:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->j()V

    .line 104
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->g:Lcom/alibaba/lightapp/runtime/SecureWebView$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/SecureWebView$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->k()V

    .line 108
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->loadUrl(Ljava/lang/String;)V

    .line 109
    return-void
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
    .line 114
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->j()V

    .line 115
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->g:Lcom/alibaba/lightapp/runtime/SecureWebView$a;

    invoke-virtual {v0, p1}, Lcom/alibaba/lightapp/runtime/SecureWebView$a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->k()V

    .line 118
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 119
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    if-eqz p1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/SecureWebView;->l()V

    .line 94
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/lightapp/runtime/NuvaWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected setVerifier(Lcom/alibaba/lightapp/runtime/SecureWebView$a;)V
    .locals 2
    .param p1, "verifier"    # Lcom/alibaba/lightapp/runtime/SecureWebView$a;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Verifier for SecureWebView should not be null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/SecureWebView;->g:Lcom/alibaba/lightapp/runtime/SecureWebView$a;

    .line 58
    return-void
.end method
