.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;
.super Ljava/lang/Object;
.source "H5AppScoreList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->updateAppScoreInfo(ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

.field final synthetic val$forceRequest:Z

.field final synthetic val$rpcListener:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;ZLcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->val$forceRequest:Z

    iput-object p3, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->val$rpcListener:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$000(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->val$forceRequest:Z

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$100(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;)V

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;

    iget-object v2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;->val$rpcListener:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;

    invoke-static {v1, v2, v7}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;->access$200(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreRpcListener;Z)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    const-class v1, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;

    .line 111
    .local v0, "rpcProvider":Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;
    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v1, "com.alipay.hpmweb.queryAppCredit"

    const/4 v4, 0x1

    new-instance v9, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;

    invoke-direct {v9, p0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1$1;-><init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppScoreList$1;)V

    move-object v3, v2

    move-object v5, v2

    move-object v6, v2

    move-object v8, v2

    invoke-interface/range {v0 .. v9}, Lcom/alipay/mobile/nebula/provider/H5SimpleRpcProvider;->sendSimpleRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/alibaba/fastjson/JSONObject;Ljava/lang/String;ZLiop;Lcom/alipay/mobile/nebula/callback/H5SimpleRpcListener;)V

    goto :goto_0
.end method
