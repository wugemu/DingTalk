.class public Lcom/taobao/weex/ui/component/WXWeb;
.super Lcom/taobao/weex/ui/component/WXComponent;
.source "WXWeb.java"


# annotations
.annotation runtime Lcom/taobao/weex/annotation/Component;
    lazyload = false
.end annotation


# static fields
.field public static final GO_BACK:Ljava/lang/String; = "goBack"

.field public static final GO_FORWARD:Ljava/lang/String; = "goForward"

.field public static final POST_MESSAGE:Ljava/lang/String; = "postMessage"

.field public static final RELOAD:Ljava/lang/String; = "reload"


# instance fields
.field protected mWebView:Lcom/taobao/weex/ui/view/IWebView;


# direct methods
.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Ljava/lang/String;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "instanceId"    # Ljava/lang/String;
    .param p4, "isLazy"    # Z
    .param p5, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/taobao/weex/ui/component/WXWeb;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V
    .locals 0
    .param p1, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;
    .param p3, "isLazy"    # Z
    .param p4, "basicComponentData"    # Lcom/taobao/weex/ui/action/BasicComponentData;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/taobao/weex/ui/component/WXComponent;-><init>(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;ZLcom/taobao/weex/ui/action/BasicComponentData;)V

    .line 57
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->createWebView()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/taobao/weex/ui/component/WXWeb;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/taobao/weex/ui/component/WXWeb;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private fireEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v1

    const-string/jumbo v2, "error"

    invoke-virtual {v1, v2}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v1, "errorMsg"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v1, "error"

    invoke-virtual {p0, v1, v0}, Lcom/taobao/weex/ui/component/WXWeb;->fireEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 194
    .end local v0    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private getWebView()Lcom/taobao/weex/ui/view/IWebView;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    return-object v0
.end method

.method private loadDataWithBaseURL(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 201
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->loadDataWithBaseURL(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method private loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->loadUrl(Ljava/lang/String;)V

    .line 198
    return-void
.end method


# virtual methods
.method public createWebView()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "origin":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/taobao/weex/WXSDKManager;->getInstance()Lcom/taobao/weex/WXSDKManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getInstanceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/taobao/weex/WXSDKManager;->getSDKInstance(Ljava/lang/String;)Lcom/taobao/weex/WXSDKInstance;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/weex/WXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "bundleUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 65
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "authority":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 68
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 73
    .end local v0    # "authority":Ljava/lang/String;
    .end local v1    # "bundleUrl":Ljava/lang/String;
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    new-instance v5, Lcom/taobao/weex/ui/view/WXWebView;

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/taobao/weex/ui/view/WXWebView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    .line 74
    return-void

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/taobao/weex/ui/component/WXComponent;->destroy()V

    .line 126
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->destroy()V

    .line 127
    return-void
.end method

.method public goBack()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->goBack()V

    .line 217
    return-void
.end method

.method public goForward()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->goForward()V

    .line 212
    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v1, Lcom/taobao/weex/ui/component/WXWeb$1;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXWeb$1;-><init>(Lcom/taobao/weex/ui/component/WXWeb;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/IWebView;->setOnErrorListener(Lcom/taobao/weex/ui/view/IWebView$OnErrorListener;)V

    .line 84
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v1, Lcom/taobao/weex/ui/component/WXWeb$2;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXWeb$2;-><init>(Lcom/taobao/weex/ui/component/WXWeb;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/IWebView;->setOnPageListener(Lcom/taobao/weex/ui/view/IWebView$OnPageListener;)V

    .line 114
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    new-instance v1, Lcom/taobao/weex/ui/component/WXWeb$3;

    invoke-direct {v1, p0}, Lcom/taobao/weex/ui/component/WXWeb$3;-><init>(Lcom/taobao/weex/ui/component/WXWeb;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/ui/view/IWebView;->setOnMessageListener(Lcom/taobao/weex/ui/view/IWebView$OnMessageListener;)V

    .line 120
    iget-object v0, p0, Lcom/taobao/weex/ui/component/WXWeb;->mWebView:Lcom/taobao/weex/ui/view/IWebView;

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public postMessage(Ljava/lang/Object;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/Object;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->postMessage(Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public reload()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0}, Lcom/taobao/weex/ui/view/IWebView;->reload()V

    .line 207
    return-void
.end method

.method public setAction(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 174
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    const-string/jumbo v0, "goBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->goBack()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string/jumbo v0, "goForward"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->goForward()V

    goto :goto_0

    .line 179
    :cond_2
    const-string/jumbo v0, "reload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 180
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->reload()V

    goto :goto_0

    .line 181
    :cond_3
    const-string/jumbo v0, "postMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0, p2}, Lcom/taobao/weex/ui/component/WXWeb;->postMessage(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 131
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 148
    invoke-super {p0, p1, p2}, Lcom/taobao/weex/ui/component/WXComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 131
    :sswitch_0
    const-string/jumbo v5, "show-loading"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "src"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "source"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 133
    :pswitch_0
    invoke-static {p2, v6}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 134
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 135
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/taobao/weex/ui/component/WXWeb;->setShowLoading(Z)V

    goto :goto_1

    .line 138
    .end local v0    # "result":Ljava/lang/Boolean;
    :pswitch_1
    invoke-static {p2, v6}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "src":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 140
    invoke-virtual {p0, v2}, Lcom/taobao/weex/ui/component/WXWeb;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 143
    .end local v2    # "src":Ljava/lang/String;
    :pswitch_2
    invoke-static {p2, v6}, Lcom/taobao/weex/utils/WXUtils;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "source":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 145
    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXWeb;->setSource(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :sswitch_data_0
    .sparse-switch
        -0x356f97e5 -> :sswitch_2
        0x1bde4 -> :sswitch_1
        0x2003526c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setShowLoading(Z)V
    .locals 1
    .param p1, "showLoading"    # Z
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "show-loading"
    .end annotation

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getWebView()Lcom/taobao/weex/ui/view/IWebView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/weex/ui/view/IWebView;->setShowLoading(Z)V

    .line 154
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "source"
    .end annotation

    .prologue
    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0, p1}, Lcom/taobao/weex/ui/component/WXWeb;->loadDataWithBaseURL(Ljava/lang/String;)V

    .line 171
    :cond_0
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation runtime Lcom/taobao/weex/ui/component/WXComponentProp;
        name = "src"
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getHostView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXWeb;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "web"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/WXSDKInstance;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/taobao/weex/ui/component/WXWeb;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
