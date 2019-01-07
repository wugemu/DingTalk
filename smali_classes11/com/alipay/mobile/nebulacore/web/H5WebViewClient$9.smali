.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1514
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v5

    if-nez v5, :cond_0

    .line 1535
    :goto_0
    return-void

    .line 1518
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1519
    .local v0, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "url"

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->val$url:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v4

    .line 1521
    .local v4, "startBundle":Landroid/os/Bundle;
    if-eqz v4, :cond_1

    .line 1522
    const-string/jumbo v5, "appId"

    const-string/jumbo v6, "appId"

    invoke-static {v4, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    const-string/jumbo v5, "preSSOLogin"

    .line 1524
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1525
    .local v1, "preSSOLogin":Ljava/lang/String;
    const-string/jumbo v5, "preSSOLoginBindingPage"

    .line 1526
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1528
    .local v2, "preSSOLoginBindingPage":Ljava/lang/String;
    const-string/jumbo v5, "preSSOLoginUrl"

    .line 1529
    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1530
    .local v3, "preSSOLoginUrl":Ljava/lang/String;
    const-string/jumbo v5, "ps"

    invoke-virtual {v0, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1531
    const-string/jumbo v5, "psb"

    invoke-virtual {v0, v5, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1532
    const-string/jumbo v5, "psu"

    invoke-virtual {v0, v5, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    .end local v1    # "preSSOLogin":Ljava/lang/String;
    .end local v2    # "preSSOLoginBindingPage":Ljava/lang/String;
    .end local v3    # "preSSOLoginUrl":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$9;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v5

    const-string/jumbo v6, "h5PageLoadResource"

    invoke-virtual {v5, v6, v0}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    goto :goto_0
.end method
