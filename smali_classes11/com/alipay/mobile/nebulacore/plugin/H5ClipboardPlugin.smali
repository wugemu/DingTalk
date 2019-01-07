.class public Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;
.super Lipd;
.source "H5ClipboardPlugin.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ClipboardPlugin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private getClipboard(Liny;)V
    .locals 7
    .param p1, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 61
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 62
    .local v1, "context":Landroid/content/Context;
    const-string/jumbo v6, "clipboard"

    .line 63
    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 64
    .local v0, "clipboard":Landroid/text/ClipboardManager;
    const/4 v2, 0x0

    .line 66
    .local v2, "cs":Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 71
    :goto_0
    if-eqz v2, :cond_0

    .line 72
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "text":Ljava/lang/String;
    :goto_1
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 77
    .local v3, "data":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "text"

    invoke-virtual {v3, v6, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    invoke-interface {p1, v3}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 79
    return-void

    .line 67
    .end local v3    # "data":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "text":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 68
    .local v5, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v6, "H5ClipboardPlugin"

    invoke-static {v6, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 74
    .end local v5    # "throwable":Ljava/lang/Throwable;
    :cond_0
    const-string/jumbo v4, ""

    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 29
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 30
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "setClipboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;->setClipboard(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V

    .line 36
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 32
    :cond_1
    const-string/jumbo v1, "getClipboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5ClipboardPlugin;->getClipboard(Liny;)V

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 23
    const-string/jumbo v0, "setClipboard"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v0, "getClipboard"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public setClipboard(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)V
    .locals 7
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 40
    .line 1121
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 41
    .local v0, "callParam":Lcom/alibaba/fastjson/JSONObject;
    if-nez v0, :cond_0

    .line 42
    sget-object v4, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v4}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    .line 58
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string/jumbo v4, "text"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "text":Ljava/lang/String;
    const-string/jumbo v4, "https://ds.alipay.com/error/securityLink.htm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "https://ds.alipay.com/error/redirectLink.htm"

    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 49
    :cond_1
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "url"

    invoke-virtual {v4, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    const-string/jumbo v4, "H5ClipboardPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "competitive link special text is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 54
    .local v2, "context":Landroid/content/Context;
    const-string/jumbo v4, "clipboard"

    .line 55
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    .line 56
    .local v1, "clipboard":Landroid/text/ClipboardManager;
    invoke-virtual {v1, v3}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_0
.end method
