.class public final Lbkk;
.super Ljava/lang/Object;
.source "MeetingDeviceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbdu;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 50
    const-string/jumbo v9, "meeting_device_orginfo"

    invoke-static {v9}, Lcpk;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    .local v2, "data":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 52
    const/4 v8, 0x0

    .line 72
    :cond_0
    :goto_0
    return-object v8

    .line 54
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Lbdu;>;"
    :try_start_0
    invoke-static {v2}, Lcoo;->a(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 57
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    instance-of v9, v6, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v9, :cond_0

    .line 58
    move-object v0, v6

    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    move-object v1, v0

    .line 59
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 60
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 61
    .local v5, "item":Lcom/alibaba/fastjson/JSONObject;
    new-instance v7, Lbdu;

    invoke-direct {v7}, Lbdu;-><init>()V

    .line 62
    .local v7, "model":Lbdu;
    const-string/jumbo v9, "corpId"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lbdu;->a:Ljava/lang/String;

    .line 63
    const-string/jumbo v9, "corpName"

    invoke-virtual {v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v7, Lbdu;->b:Ljava/lang/String;

    .line 65
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 68
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "i":I
    .end local v5    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "model":Lbdu;
    :catch_0
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    new-array v9, v13, [Ljava/lang/String;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "[MeetingDeviceUtil] readOrgInfos error, "

    aput-object v11, v10, v12

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v9}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lbdu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "orgInfos":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lbdu;>;"
    if-nez p0, :cond_0

    .line 30
    const-string/jumbo v3, "meeting_device_orginfo"

    invoke-static {v3}, Lcpk;->a(Ljava/lang/String;)V

    .line 44
    :goto_0
    return-void

    .line 32
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 33
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbdu;

    .line 34
    .local v2, "model":Lbdu;
    if-eqz v2, :cond_1

    .line 37
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 38
    .local v1, "item":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "corpId"

    iget-object v5, v2, Lbdu;->a:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string/jumbo v4, "corpName"

    iget-object v5, v2, Lbdu;->b:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 42
    .end local v1    # "item":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "model":Lbdu;
    :cond_2
    const-string/jumbo v3, "meeting_device_orginfo"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcpk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
