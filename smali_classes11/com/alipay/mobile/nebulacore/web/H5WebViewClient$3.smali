.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 619
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$000(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 620
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    .line 2400
    const/4 v0, 0x0

    .line 621
    .local v0, "reloadType":I
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v2

    .line 3391
    iget-boolean v2, v2, Lior;->aY:Z

    .line 621
    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 622
    .local v1, "result":I
    :goto_0
    const-string/jumbo v2, "H5_PAGE_REPAIR"

    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 623
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param3()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "result"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    const-string/jumbo v3, "type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alipay/mobile/nebula/log/H5LogData;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 624
    invoke-virtual {v2}, Lcom/alipay/mobile/nebula/log/H5LogData;->param4()Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$3;->this$0:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->access$100(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;)Lior;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/nebula/log/H5LogData;->addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;

    move-result-object v2

    .line 622
    invoke-static {v2}, Lcom/alipay/mobile/nebula/log/H5LogUtil;->logNebulaTech(Lcom/alipay/mobile/nebula/log/H5LogData;)V

    .line 626
    .end local v0    # "reloadType":I
    .end local v1    # "result":I
    :cond_0
    return-void

    .line 621
    .restart local v0    # "reloadType":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
