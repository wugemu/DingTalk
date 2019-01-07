.class public final Lfxk;
.super Ljava/lang/Object;
.source "SmartDeviceUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    .line 110
    if-nez p0, :cond_0

    .line 111
    const/4 v1, 0x0

    .line 121
    :goto_0
    return-object v1

    .line 114
    :cond_0
    const-string/jumbo v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    :cond_1
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 118
    :cond_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 119
    .local v0, "builder":Landroid/net/Uri$Builder;
    const-string/jumbo v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 121
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public static a(J)Z
    .locals 18
    .param p0, "orgId"    # J

    .prologue
    .line 68
    const-wide/16 v12, 0x0

    cmp-long v9, p0, v12

    if-gtz v9, :cond_0

    .line 69
    const/4 v9, 0x0

    .line 103
    :goto_0
    return v9

    .line 72
    :cond_0
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v9

    move-wide/from16 v0, p0

    invoke-virtual {v9, v0, v1}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(J)Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    move-result-object v8

    .line 74
    .local v8, "microAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v8, :cond_1

    iget-object v9, v8, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    if-eqz v9, :cond_1

    iget-object v9, v8, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 75
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 78
    :cond_2
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v9

    const-string/jumbo v12, "dt_device"

    const-string/jumbo v13, "device_micro_app"

    invoke-virtual {v9, v12, v13}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "key":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 81
    .local v7, "kk":Lorg/json/JSONObject;
    const-string/jumbo v9, "appIds"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 83
    .local v5, "jsonArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-gtz v9, :cond_4

    .line 84
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 87
    :cond_4
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_7

    .line 88
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v10

    .line 89
    .local v10, "temp":J
    iget-object v9, v8, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->microAPPList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    .line 90
    .local v2, "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    if-eqz v2, :cond_5

    .line 94
    iget-wide v12, v2, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->appId:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long v12, v12, v10

    if-nez v12, :cond_5

    .line 95
    const/4 v9, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "app":Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 99
    .end local v4    # "i":I
    .end local v5    # "jsonArray":Lorg/json/JSONArray;
    .end local v7    # "kk":Lorg/json/JSONObject;
    .end local v10    # "temp":J
    :catch_0
    move-exception v3

    .line 100
    .local v3, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "user"

    const-string/jumbo v12, "AlphaDeviceItem"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    const-string/jumbo v16, "AlphaDeviceItem isShow error:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v13}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0
.end method
