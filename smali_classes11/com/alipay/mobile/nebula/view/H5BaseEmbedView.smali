.class public abstract Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;
.super Ljava/lang/Object;
.source "H5BaseEmbedView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/view/IH5EmbedView;


# static fields
.field private static final TAG:Ljava/lang/String; = "H5BaseEmbedView"


# instance fields
.field public mContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public mH5Page:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Liop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p1, "oriUrl"    # Ljava/lang/String;
    .param p2, "startParams"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    const/4 v1, 0x0

    .line 66
    .local v1, "finalUrl":Ljava/lang/String;
    const-string/jumbo v2, "url"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "entryUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getAbsoluteUrlV2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 70
    :cond_0
    return-object v1
.end method


# virtual methods
.method public execJavaScript(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "jsCallback"    # Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 33
    iget-object v1, p0, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;->mH5Page:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Liop;

    .line 34
    .local v0, "h5Page":Liop;
    if-eqz v0, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Liop;->execJavaScript4EmbedView(Ljava/lang/String;Lcom/alipay/mobile/nebula/view/IH5EmbedViewJSCallback;)V

    .line 37
    :cond_0
    return-void
.end method

.method public getComponentResourceDataWithUrl(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;Liop;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;
    .param p3, "h5Page"    # Liop;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 41
    const-string/jumbo v3, "H5BaseEmbedView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getComponentResourceDataWithUrl url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    if-eqz p3, :cond_2

    .line 43
    invoke-interface {p3}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;->getAbsoluteUrl(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "abUrl":Ljava/lang/String;
    const-string/jumbo v3, "H5BaseEmbedView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getComponentResourceDataWithUrl abUrl "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-interface {p3}, Liop;->getSession()Lipc;

    move-result-object v2

    .line 46
    .local v2, "h5Session":Lipc;
    if-eqz v2, :cond_1

    .line 47
    invoke-interface {v2}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v1

    .line 48
    .local v1, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v1, :cond_0

    .line 49
    invoke-interface {v1, v0, p2}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;)V

    .line 62
    .end local v0    # "abUrl":Ljava/lang/String;
    .end local v1    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v2    # "h5Session":Lipc;
    :goto_0
    return-void

    .line 51
    .restart local v0    # "abUrl":Ljava/lang/String;
    .restart local v1    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .restart local v2    # "h5Session":Lipc;
    :cond_0
    const-string/jumbo v3, "H5BaseEmbedView"

    const-string/jumbo v4, "getComponentResourceDataWithUrl h5ContentProvider == null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-interface {p2, v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    goto :goto_0

    .line 55
    .end local v1    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    :cond_1
    const-string/jumbo v3, "H5BaseEmbedView"

    const-string/jumbo v4, "getComponentResourceDataWithUrl h5Session == null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-interface {p2, v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    goto :goto_0

    .line 59
    .end local v0    # "abUrl":Ljava/lang/String;
    .end local v2    # "h5Session":Lipc;
    :cond_2
    const-string/jumbo v3, "H5BaseEmbedView"

    const-string/jumbo v4, "getComponentResourceDataWithUrl h5Page == null"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-interface {p2, v6}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider$ResponseListen;->onGetResponse(Landroid/webkit/WebResourceResponse;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/content/Context;Liop;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h5Page"    # Liop;

    .prologue
    .line 27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;->mContext:Ljava/lang/ref/WeakReference;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/view/H5BaseEmbedView;->mH5Page:Ljava/lang/ref/WeakReference;

    .line 29
    return-void
.end method
