.class Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;
.super Ljava/lang/Object;
.source "H5BridgeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->fixJson(Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

.field final synthetic val$javascript:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->val$javascript:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 391
    const-string/jumbo v1, ""

    .line 392
    .local v1, "res":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 393
    .local v2, "time":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->val$javascript:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 394
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->access$200(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->access$200(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->val$javascript:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 395
    const-string/jumbo v4, "H5BridgeImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "contain white"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->val$javascript:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " not add"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->val$javascript:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 400
    :cond_1
    const-string/jumbo v4, "H5BridgeImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "coast "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " for action fixJson"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->access$300(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;)Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 402
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$4;->this$0:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    invoke-static {v4}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->access$300(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;)Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "javascript:(function(){if(typeof AlipayJSBridge === \'object\'){"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "}})();"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 405
    const-string/jumbo v4, "H5BridgeImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "fixJson jsapi rep:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :cond_2
    return-void
.end method
