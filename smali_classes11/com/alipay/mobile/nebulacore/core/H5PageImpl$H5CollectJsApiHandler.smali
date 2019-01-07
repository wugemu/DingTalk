.class Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;
.super Ljava/lang/Object;
.source "H5PageImpl.java"

# interfaces
.implements Lioa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H5CollectJsApiHandler"
.end annotation


# instance fields
.field public exitTabScene:Z

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field public waiting:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1896
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1897
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->exitTabScene:Z

    .line 1898
    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->waiting:Z

    .line 1899
    return-void
.end method


# virtual methods
.method public onCallBack(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 9
    .param p1, "param"    # Lcom/alibaba/fastjson/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 1903
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->waiting:Z

    .line 1904
    const-string/jumbo v5, "H5PageImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "collectJsApi param : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const-string/jumbo v5, "syncJsApis"

    invoke-static {p1, v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 1906
    .local v2, "apiArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1907
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 1908
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 1909
    .local v4, "jsApi":Lcom/alibaba/fastjson/JSONObject;
    if-eqz v4, :cond_0

    .line 1910
    const-string/jumbo v5, "apiName"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1911
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v5, "params"

    invoke-static {v4, v5, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 1912
    .local v1, "actionParams":Lcom/alibaba/fastjson/JSONObject;
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 1907
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "actionParams":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1916
    .end local v3    # "i":I
    .end local v4    # "jsApi":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$1000(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1917
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->exitTabScene:Z

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->access$1100(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;Z)V

    .line 1921
    :goto_1
    return-void

    .line 1919
    :cond_2
    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->this$0:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/core/H5PageImpl$H5CollectJsApiHandler;->exitTabScene:Z

    invoke-virtual {v5, v6}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->doExitPage(Z)Z

    goto :goto_1
.end method
