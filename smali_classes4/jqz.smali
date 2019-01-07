.class public final Ljqz;
.super Ljava/lang/Object;
.source "DowngradeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;)Z
    .locals 13
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "pageModel"    # Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 18
    const/4 v3, 0x0

    .line 19
    .local v3, "context":Ljqd;
    instance-of v11, p0, Ljqd;

    if-eqz v11, :cond_0

    move-object v3, p0

    .line 20
    check-cast v3, Ljqd;

    .line 22
    :cond_0
    iget-object v5, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->downgrade:Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;

    .line 23
    .local v5, "downgradeModel":Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;
    if-nez v5, :cond_1

    .line 24
    iget-object v10, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    invoke-static {v3, v10}, Ljre$a;->a(Ljqd;Ljava/lang/String;)V

    .line 76
    :goto_0
    return v9

    .line 30
    :cond_1
    :try_start_0
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 31
    .local v7, "osVersion":Ljava/lang/String;
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v11

    .line 1173
    iget-object v11, v11, Ljpo;->c:Ljpo$a;

    iget-object v11, v11, Ljpo$a;->a:Ljava/util/Map;

    .line 31
    const-string/jumbo v12, "appVersion"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 32
    .local v2, "appVersion":Ljava/lang/String;
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 33
    .local v4, "deviceName":Ljava/lang/String;
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v11

    .line 2173
    iget-object v11, v11, Ljpo;->c:Ljpo$a;

    iget-object v11, v11, Ljpo$a;->a:Ljava/util/Map;

    .line 33
    const-string/jumbo v12, "weexVersion"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 35
    .local v8, "weexVersion":Ljava/lang/String;
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v11

    .line 3173
    iget-object v11, v11, Ljpo;->c:Ljpo$a;

    iget-object v11, v11, Ljpo$a;->a:Ljava/util/Map;

    .line 35
    const-string/jumbo v12, "appName"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    .local v1, "appName":Ljava/lang/String;
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v11

    .line 4173
    iget-object v11, v11, Ljpo;->c:Ljpo$a;

    iget-object v11, v11, Ljpo$a;->a:Ljava/util/Map;

    .line 36
    const-string/jumbo v12, "appGroup"

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38
    .local v0, "appGroup":Ljava/lang/String;
    iget-object v11, v5, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;->apps:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 41
    iget-object v11, v5, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;->apps:Ljava/lang/String;

    invoke-static {v11}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    .line 42
    .local v6, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Ljqz;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 43
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "APP"

    invoke-static {v3, v11, v12, v2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "FAIL_APP"

    invoke-static {v3, v11, v12, v2}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 45
    goto/16 :goto_0

    .line 50
    .end local v6    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    iget-object v11, v5, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;->osVersion:Ljava/lang/String;

    invoke-static {v7, v11}, Ljqz;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 51
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "OS"

    invoke-static {v3, v11, v12, v7}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "FAIL_OS"

    invoke-static {v3, v11, v12, v7}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 53
    goto/16 :goto_0

    .line 55
    :cond_3
    const-string/jumbo v11, "AliAppTB"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, v5, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;->appVersion:Ljava/lang/String;

    invoke-static {v2, v11}, Ljqz;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 56
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "APP"

    invoke-static {v3, v11, v12, v2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "FAIL_APP"

    invoke-static {v3, v11, v12, v2}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 58
    goto/16 :goto_0

    .line 60
    :cond_4
    iget-object v11, v5, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;->weexVersion:Ljava/lang/String;

    invoke-static {v8, v11}, Ljqz;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 61
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "WEEX"

    invoke-static {v3, v11, v12, v8}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "FAIL_WEEX"

    invoke-static {v3, v11, v12, v8}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .line 63
    goto/16 :goto_0

    .line 65
    :cond_5
    iget-object v11, v5, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;->deviceModel:Ljava/util/List;

    if-eqz v11, :cond_6

    iget-object v11, v5, Lcom/taobao/windmill/bundle/container/core/AppConfigModel$DowngradeModel;->deviceModel:Ljava/util/List;

    .line 66
    invoke-interface {v11, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 67
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "DEVICE"

    invoke-static {v3, v11, v12, v4}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v11, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    const-string/jumbo v12, "FAIL_DEVICE"

    invoke-static {v3, v11, v12, v4}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v9, v10

    .line 69
    goto/16 :goto_0

    .line 72
    .end local v0    # "appGroup":Ljava/lang/String;
    .end local v1    # "appName":Ljava/lang/String;
    .end local v2    # "appVersion":Ljava/lang/String;
    .end local v4    # "deviceName":Ljava/lang/String;
    .end local v7    # "osVersion":Ljava/lang/String;
    .end local v8    # "weexVersion":Ljava/lang/String;
    :catch_0
    move-exception v10

    iget-object v10, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    invoke-static {v3, v10}, Ljre$a;->a(Ljqd;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 75
    .restart local v0    # "appGroup":Ljava/lang/String;
    .restart local v1    # "appName":Ljava/lang/String;
    .restart local v2    # "appVersion":Ljava/lang/String;
    .restart local v4    # "deviceName":Ljava/lang/String;
    .restart local v7    # "osVersion":Ljava/lang/String;
    .restart local v8    # "weexVersion":Ljava/lang/String;
    :cond_6
    iget-object v10, p1, Lcom/taobao/windmill/bundle/container/core/WMLAppManifest$PageModel;->url:Ljava/lang/String;

    invoke-static {v3, v10}, Ljre$a;->a(Ljqd;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p0, "currentVersion"    # Ljava/lang/String;
    .param p1, "downgradeVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 80
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 81
    invoke-virtual {p1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "opt":Ljava/lang/String;
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "opt2":Ljava/lang/String;
    const-string/jumbo v5, "="

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 84
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 86
    :cond_0
    const-string/jumbo v5, ""

    invoke-virtual {p1, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 5094
    .local v2, "version2":Ljava/lang/String;
    const-string/jumbo v5, ">"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5095
    invoke-static {p0, v2}, Ljqz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    :goto_0
    move v4, v3

    .line 5103
    .end local v0    # "opt":Ljava/lang/String;
    .end local v1    # "opt2":Ljava/lang/String;
    .end local v2    # "version2":Ljava/lang/String;
    :cond_1
    return v4

    .line 5096
    .restart local v0    # "opt":Ljava/lang/String;
    .restart local v1    # "opt2":Ljava/lang/String;
    .restart local v2    # "version2":Ljava/lang/String;
    :cond_2
    const-string/jumbo v5, ">="

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5097
    invoke-static {p0, v2}, Ljqz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_1

    goto :goto_0

    .line 5098
    :cond_3
    const-string/jumbo v5, "<"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 5099
    invoke-static {p0, v2}, Ljqz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_1

    goto :goto_0

    .line 5100
    :cond_4
    const-string/jumbo v5, "<="

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 5101
    invoke-static {p0, v2}, Ljqz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_1

    goto :goto_0

    .line 5102
    :cond_5
    const-string/jumbo v5, "="

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5103
    invoke-static {p0, v2}, Ljqz;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_6
    move v3, v4

    .line 5105
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p0, "version1"    # Ljava/lang/String;
    .param p1, "version2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 111
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 112
    :cond_0
    new-instance v6, Ljava/lang/Exception;

    const-string/jumbo v7, "compareVersion error:illegal params."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 114
    :cond_1
    const-string/jumbo v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 115
    .local v4, "versionArray1":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_3

    .line 117
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_2

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v4, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 115
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_3
    const-string/jumbo v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "versionArray2":[Ljava/lang/String;
    const/4 v1, 0x0

    :goto_1
    array-length v6, v5

    if-ge v1, v6, :cond_5

    .line 123
    aget-object v6, v5, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v8, :cond_4

    .line 124
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 122
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_5
    const/4 v2, 0x0

    .line 128
    .local v2, "idx":I
    array-length v6, v4

    array-length v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 129
    .local v3, "minLength":I
    const/4 v0, 0x0

    .line 130
    .local v0, "diff":I
    :goto_2
    if-ge v2, v3, :cond_6

    aget-object v6, v4, v2

    .line 131
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v7, v5, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v0, v6, v7

    if-nez v0, :cond_6

    aget-object v6, v4, v2

    aget-object v7, v5, v2

    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    .line 133
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 136
    :cond_6
    if-eqz v0, :cond_7

    .line 137
    :goto_3
    return v0

    .line 136
    :cond_7
    array-length v6, v4

    array-length v7, v5

    sub-int v0, v6, v7

    goto :goto_3
.end method
