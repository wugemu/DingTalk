.class final Lhnl$1;
.super Lcmi;
.source "MiniAppBizRpcProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhnl;->rpcCall(Ljava/lang/String;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcmi",
        "<",
        "Lhod;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Ljava/util/concurrent/CountDownLatch;

.field final synthetic c:Lhnl;


# direct methods
.method constructor <init>(Lhnl;[Ljava/lang/String;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .param p1, "this$0"    # Lhnl;

    .prologue
    .line 103
    iput-object p1, p0, Lhnl$1;->c:Lhnl;

    iput-object p2, p0, Lhnl$1;->a:[Ljava/lang/String;

    iput-object p3, p0, Lhnl$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcmi;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 139
    const-string/jumbo v0, "MiniAppBizRpcProviderImpl"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "MiniAppIService.getMiniAppMetaData"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "errorCode="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "errorMsg="

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    .line 1071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lhnl$1;->a:[Ljava/lang/String;

    iget-object v1, p0, Lhnl$1;->c:Lhnl;

    const/16 v2, 0x190

    invoke-static {v1, v2, p1}, Lhnl;->a(Lhnl;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 143
    iget-object v0, p0, Lhnl$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 144
    return-void
.end method

.method public final synthetic onLoadSuccess(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 103
    check-cast p1, Lhod;

    .line 1107
    const-string/jumbo v0, "MiniAppBizRpcProviderImpl"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "MiniAppIService.getMiniAppMetaData"

    aput-object v2, v1, v6

    const/4 v2, 0x1

    const-string/jumbo v3, "miniAppPackageModel="

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    .line 2071
    const-string/jumbo v2, "mini_app"

    invoke-static {v2, v0, v1}, Lhmv;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1110
    if-eqz p1, :cond_0

    .line 1111
    iget-object v0, p1, Lhod;->b:Ljava/lang/String;

    .line 1112
    iget-object v1, p1, Lhod;->a:Ljava/lang/String;

    .line 1113
    iget-object v2, p1, Lhod;->c:Ljava/lang/String;

    .line 1116
    :try_start_0
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1117
    const-string/jumbo v4, "resultCode"

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    const-string/jumbo v4, "stat"

    const-string/jumbo v5, "success"

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const-string/jumbo v4, "data"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONArray;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const-string/jumbo v1, "config"

    invoke-static {v0}, Lcom/alibaba/fastjson/JSONObject;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string/jumbo v0, "removeAppIdList"

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    iget-object v0, p0, Lhnl$1;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1134
    :cond_0
    :goto_0
    iget-object v0, p0, Lhnl$1;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 103
    return-void

    .line 1126
    :catch_0
    move-exception v0

    .line 1127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1129
    iget-object v0, p0, Lhnl$1;->a:[Ljava/lang/String;

    iget-object v1, p0, Lhnl$1;->c:Lhnl;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Lhnl;->a(Lhnl;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_0
.end method
