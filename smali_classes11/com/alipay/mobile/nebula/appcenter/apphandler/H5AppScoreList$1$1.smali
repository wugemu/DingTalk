.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;
.super Ljava/lang/Object;
.source "H5AppScoreList.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(ILjava/lang/String;)V
    .locals 4
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    const v0, 0x18769

    if-ne v0, p1, :cond_0

    .line 125
    const-string/jumbo v0, "h5_app_score_rpc_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->saveLongData(Ljava/lang/String;J)V

    .line 126
    const-string/jumbo v0, "h5_score_rpc_limit"

    const-string/jumbo v1, "limit_tag"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->saveStringData(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    iget-boolean v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->val$forceRequest:Z

    if-eqz v0, :cond_1

    .line 130
    const-string/jumbo v0, "h5_app_score_rpc_time"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5SharedPreUtil;->removeData(Ljava/lang/String;)V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V

    .line 134
    const-string/jumbo v0, "H5AppScoreList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "errorCode : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " errorMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->val$rpcListener:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V

    .line 136
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 115
    const-string/jumbo v0, "H5AppScoreList"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " response : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-static {v0, p1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$300(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-static {p1}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$400(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Lcom/alibaba/fastjson/JSONObject;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    iget-object v0, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;->this$1:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;

    iget-object v1, v1, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->val$rpcListener:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V

    .line 119
    return-void
.end method
