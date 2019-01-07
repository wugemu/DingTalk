.class public Lcom/alipay/mobile/nebulauc/impl/setup/UcBizSetupHelper;
.super Ljava/lang/Object;
.source "UcBizSetupHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 21
    invoke-static {p0}, Lgxk;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v2

    .line 22
    .local v2, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 23
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    .line 24
    .local v3, "size":I
    new-array v0, v3, [Ljava/lang/String;

    .line 25
    .local v0, "hostArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 26
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 25
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v5, v5, p1, v0}, Lcom/uc/webview/export/extension/UCSettings;->updateBussinessInfo(IILjava/lang/String;Ljava/lang/Object;)V

    .line 32
    .end local v0    # "hostArray":[Ljava/lang/String;
    .end local v1    # "i":I
    .end local v3    # "size":I
    :cond_1
    return-void
.end method
