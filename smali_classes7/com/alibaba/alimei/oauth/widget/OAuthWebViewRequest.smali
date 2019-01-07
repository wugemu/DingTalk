.class public final Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;
.super Ljava/lang/Object;
.source "OAuthWebViewRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;
    }
.end annotation


# static fields
.field private static d:Z


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private e:Landroid/webkit/WebView;

.field private f:Lafr;

.field private g:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->d:Z

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Lafr;)V
    .locals 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "callback"    # Lafr;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string/jumbo v1, "https://mailsso.mxhichina.com"

    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a:Ljava/lang/String;

    .line 42
    iput-object v4, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->b:Ljava/lang/String;

    .line 43
    iput-object v4, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->c:Ljava/lang/String;

    .line 50
    iput-boolean v3, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->h:Z

    .line 56
    iput-object p1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    .line 57
    iput-object p2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->f:Lafr;

    .line 58
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 59
    .local v0, "webSettings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 60
    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 61
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 63
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 64
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 65
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 67
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    const-string/jumbo v2, "searchBoxJavaBridge_"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    const-string/jumbo v2, "accessibilityTraversal"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    const-string/jumbo v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Ljava/util/HashMap;)Lcom/alibaba/alimei/oauth/OAuthResponseClient;
    .locals 4
    .param p0, "x0"    # Ljava/util/HashMap;

    .prologue
    const/4 v1, 0x0

    .line 27
    .line 1303
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1308
    :goto_0
    return-object v0

    .line 1306
    :cond_0
    const-string/jumbo v0, "code"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1307
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1308
    goto :goto_0

    .line 1310
    :cond_1
    const-string/jumbo v1, "login_account"

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1311
    const-string/jumbo v2, "state"

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1312
    new-instance v3, Lcom/alibaba/alimei/oauth/OAuthResponseClient;

    invoke-direct {v3}, Lcom/alibaba/alimei/oauth/OAuthResponseClient;-><init>()V

    .line 1313
    iput-object v0, v3, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->code:Ljava/lang/String;

    .line 1314
    iput-object v1, v3, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->loginAccount:Ljava/lang/String;

    .line 1315
    iput-object v2, v3, Lcom/alibaba/alimei/oauth/OAuthResponseClient;->state:Ljava/lang/String;

    move-object v0, v3

    .line 27
    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs a([Ljava/lang/Object;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;

    .prologue
    .line 357
    sget-boolean v2, Lzb;->b:Z

    .line 358
    sput-boolean v2, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->d:Z

    if-eqz v2, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    .line 366
    :cond_0
    return-void

    .line 361
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 363
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p0, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x0

    .line 326
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 327
    .local v6, "uri":Ljava/net/URI;
    invoke-virtual {v6}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v5

    .line 328
    .local v5, "queryParams":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 329
    const-string/jumbo v8, "&"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, "params":[Ljava/lang/String;
    if-eqz v4, :cond_2

    array-length v8, v4

    if-lez v8, :cond_2

    .line 331
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 332
    .local v2, "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v8, v4

    :goto_0
    if-ge v7, v8, :cond_1

    aget-object v3, v4, v7

    .line 333
    .local v3, "param":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 336
    const-string/jumbo v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 337
    .local v1, "kvs":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v9, v1

    if-lt v9, v11, :cond_0

    .line 340
    const/4 v9, 0x0

    aget-object v9, v1, v9

    const/4 v10, 0x1

    aget-object v10, v1, v10

    invoke-virtual {v2, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .end local v1    # "kvs":[Ljava/lang/String;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 342
    .end local v3    # "param":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string/jumbo v9, "parseRedirectURI result--->>"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "maps: "

    aput-object v9, v7, v8

    const/4 v8, 0x2

    aput-object v2, v7, v8

    invoke-static {v7}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    .end local v2    # "maps":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "params":[Ljava/lang/String;
    .end local v5    # "queryParams":Ljava/lang/String;
    .end local v6    # "uri":Ljava/net/URI;
    :goto_1
    return-object v2

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    .line 349
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Lafr;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->f:Lafr;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->h:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 218
    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->h:Z

    .line 219
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    .line 220
    .local v0, "tempWebView":Landroid/webkit/WebView;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 223
    const-string/jumbo v1, "about:blank"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 226
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->g:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->f:Lafr;

    .line 228
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a:Ljava/lang/String;

    .line 229
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->b:Ljava/lang/String;

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 218
    .end local v0    # "tempWebView":Landroid/webkit/WebView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Lcom/alibaba/alimei/oauth/OAuthRequestClient;)V
    .locals 7
    .param p1, "client"    # Lcom/alibaba/alimei/oauth/OAuthRequestClient;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->redirectUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 77
    const-string/jumbo v2, "https://alimei-auth.alibaba.com/v1/system/login"

    iput-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a:Ljava/lang/String;

    .line 81
    :goto_0
    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->state:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->b:Ljava/lang/String;

    .line 84
    iget-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->f:Lafr;

    if-eqz v2, :cond_0

    .line 85
    iget-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->f:Lafr;

    iget-object v3, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    invoke-interface {v2, v3}, Lafr;->a(Landroid/webkit/WebView;)V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->g:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;

    if-nez v2, :cond_1

    .line 89
    new-instance v2, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;

    invoke-direct {v2, p0}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;-><init>(Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;)V

    iput-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->g:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->g:Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest$AuthWebViewClient;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 92
    iget-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a:Ljava/lang/String;

    .line 1240
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1241
    invoke-static {}, Lafp;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    const-string/jumbo v3, "/oauth2/authorize"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const-string/jumbo v3, "?"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1245
    const-string/jumbo v3, "client_id="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->clientId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    const-string/jumbo v3, "&"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const-string/jumbo v3, "redirect_uri="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    const-string/jumbo v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    const-string/jumbo v2, "modify_account="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->modifyAccount:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1253
    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->state:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1254
    const-string/jumbo v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1255
    const-string/jumbo v2, "state="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->state:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    :cond_2
    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1259
    const-string/jumbo v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1260
    const-string/jumbo v2, "login_account="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1263
    :cond_3
    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    if-nez v2, :cond_7

    move v3, v1

    .line 1264
    :goto_1
    if-lez v3, :cond_a

    .line 1265
    const-string/jumbo v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    const-string/jumbo v2, "login_account_range="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1267
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5, v3}, Ljava/util/HashMap;-><init>(I)V

    move v2, v1

    .line 1268
    :goto_2
    if-ge v2, v3, :cond_8

    .line 1269
    iget-object v1, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1271
    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 1274
    if-eqz v2, :cond_4

    .line 1275
    const-string/jumbo v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 79
    :cond_6
    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->redirectUri:Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 76
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1263
    :cond_7
    :try_start_1
    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccountRange:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v3, v2

    goto :goto_1

    .line 1280
    :cond_8
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 1281
    const-string/jumbo v1, ","

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    iget-object v1, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->loginAccount:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    :cond_9
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 1287
    :cond_a
    iget-object v1, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->lang:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1288
    const-string/jumbo v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    const-string/jumbo v1, "lang="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/alimei/oauth/OAuthRequestClient;->lang:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1292
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1293
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "buildRequestUrl result---->>>"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->a([Ljava/lang/Object;)V

    .line 92
    iput-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->c:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->e:Landroid/webkit/WebView;

    .line 95
    .local v0, "webView":Landroid/webkit/WebView;
    iget-boolean v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->h:Z

    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    .line 96
    iget-object v1, p0, Lcom/alibaba/alimei/oauth/widget/OAuthWebViewRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    :cond_c
    monitor-exit p0

    return-void
.end method
