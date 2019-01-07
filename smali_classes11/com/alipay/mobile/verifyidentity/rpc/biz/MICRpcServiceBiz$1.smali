.class Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;
.super Ljava/lang/Object;
.source "MICRpcServiceBiz.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/proxy/rpc/VIMessageChannelCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)V
    .locals 1

    .prologue
    .line 152
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 157
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "RpcProxy return the Result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string/jumbo v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RpcProxy rpcResponse: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    const-class v3, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {v0, v3}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;

    invoke-static {v2, v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$202(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;)Lcom/alipay/mobileic/core/model/rpc/MICRpcResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 166
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Failed to parse the RpcProxy Result!"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-static {v0}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 164
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz$1;->this$0:Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;

    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;->access$000(Lcom/alipay/mobile/verifyidentity/rpc/biz/MICRpcServiceBiz;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
