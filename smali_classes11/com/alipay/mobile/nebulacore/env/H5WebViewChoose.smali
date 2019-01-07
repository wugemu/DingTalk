.class public Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;
.super Ljava/lang/Object;
.source "H5WebViewChoose.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5WebViewFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildWebViewRules(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/HashMap;
    .locals 7
    .param p0, "config"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v3, "rules":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 250
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 252
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/ClassCastException;
    :try_start_2
    const-string/jumbo v4, "H5WebViewFactory"

    const-string/jumbo v6, "exception detail"

    invoke-static {v4, v6, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_1
    move-exception v2

    .line 259
    .local v2, "globalException":Ljava/lang/Exception;
    const-string/jumbo v4, "H5WebViewFactory"

    const-string/jumbo v5, "exception detail."

    invoke-static {v4, v5, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .end local v2    # "globalException":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method private static buildWebViewSdkVersion(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/HashMap;
    .locals 5
    .param p0, "config"    # Lcom/alibaba/fastjson/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v1, "version":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 269
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 272
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-object v1
.end method

.method private static degradeSysWebViewByUrl(Ljava/lang/String;)Z
    .locals 10
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v7

    const-class v8, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 119
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_1

    .line 120
    const-string/jumbo v7, "h5_degradeSysWebViewUrlRegexs"

    invoke-interface {v1, v7}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    .line 121
    .local v0, "configArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 123
    .local v5, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 124
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "val":Ljava/lang/String;
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5PatternHelper;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 126
    .local v4, "pattern":Ljava/util/regex/Pattern;
    if-eqz v4, :cond_0

    .line 129
    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 130
    .local v3, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    const-string/jumbo v7, "H5WebViewFactory"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "degradeSysWebViewByUrlRegex: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v7, 0x1

    .line 137
    .end local v0    # "configArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "size":I
    .end local v6    # "val":Ljava/lang/String;
    :goto_1
    return v7

    .line 123
    .restart local v0    # "configArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v2    # "i":I
    .restart local v4    # "pattern":Ljava/util/regex/Pattern;
    .restart local v5    # "size":I
    .restart local v6    # "val":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v0    # "configArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v2    # "i":I
    .end local v4    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "size":I
    .end local v6    # "val":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private static disableUcWebView(Lcom/alibaba/fastjson/JSONArray;Landroid/os/Bundle;)Z
    .locals 16
    .param p0, "jsonArray"    # Lcom/alibaba/fastjson/JSONArray;
    .param p1, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 321
    const/4 v11, 0x0

    .line 322
    .local v11, "result":Z
    if-eqz p0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    .line 324
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 326
    .local v9, "phoneInfo":Ljava/lang/String;
    const-string/jumbo v13, "appId"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "appId":Ljava/lang/String;
    const-string/jumbo v13, "url"

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 328
    .local v3, "entryUrl":Ljava/lang/String;
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView phoneInfo is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", appId is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", entryUrl is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView jsonArray is "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v13

    if-ge v5, v13, :cond_5

    .line 333
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView loop jsonArray round "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v8

    .line 335
    .local v8, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->size()I

    move-result v7

    .line 336
    .local v7, "objSize":I
    if-eqz v8, :cond_a

    .line 337
    const/4 v10, 0x0

    .line 338
    .local v10, "pi":Z
    const/4 v1, 0x0

    .line 339
    .local v1, "ai":Z
    const/4 v4, 0x0

    .line 340
    .local v4, "eu":Z
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 341
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 342
    .local v12, "value":Ljava/lang/String;
    const-string/jumbo v14, "phoneInfo"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 343
    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    .line 345
    :cond_1
    const-string/jumbo v14, "appId"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 346
    invoke-static {v2, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    .line 348
    :cond_2
    const-string/jumbo v14, "entryUrl"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 349
    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    goto :goto_1

    .line 352
    .end local v6    # "key":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x1

    if-ne v7, v13, :cond_6

    .line 353
    if-nez v10, :cond_4

    if-nez v1, :cond_4

    if-eqz v4, :cond_6

    .line 354
    :cond_4
    const/4 v11, 0x1

    .line 355
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView loop object in round "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", pi || ai || eu break"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    .end local v1    # "ai":Z
    .end local v2    # "appId":Ljava/lang/String;
    .end local v3    # "entryUrl":Ljava/lang/String;
    .end local v4    # "eu":Z
    .end local v5    # "i":I
    .end local v7    # "objSize":I
    .end local v8    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v9    # "phoneInfo":Ljava/lang/String;
    .end local v10    # "pi":Z
    :cond_5
    :goto_2
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView result "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    return v11

    .line 360
    .restart local v1    # "ai":Z
    .restart local v2    # "appId":Ljava/lang/String;
    .restart local v3    # "entryUrl":Ljava/lang/String;
    .restart local v4    # "eu":Z
    .restart local v5    # "i":I
    .restart local v7    # "objSize":I
    .restart local v8    # "object":Lcom/alibaba/fastjson/JSONObject;
    .restart local v9    # "phoneInfo":Ljava/lang/String;
    .restart local v10    # "pi":Z
    :cond_6
    const/4 v13, 0x2

    if-ne v7, v13, :cond_9

    .line 361
    if-eqz v10, :cond_7

    if-eqz v1, :cond_7

    .line 362
    const/4 v11, 0x1

    .line 363
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView loop object in round "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", pi && ai break"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 366
    :cond_7
    if-eqz v10, :cond_8

    if-eqz v4, :cond_8

    .line 367
    const/4 v11, 0x1

    .line 368
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView loop object in round "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", pi && eu break"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 371
    :cond_8
    if-eqz v1, :cond_9

    if-eqz v4, :cond_9

    .line 372
    const/4 v11, 0x1

    .line 373
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView loop object in round "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", ai && eu break"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 378
    :cond_9
    const/4 v13, 0x3

    if-ne v7, v13, :cond_a

    .line 379
    if-eqz v10, :cond_a

    if-eqz v1, :cond_a

    if-eqz v4, :cond_a

    .line 380
    const/4 v11, 0x1

    .line 381
    const-string/jumbo v13, "H5WebViewFactory"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string/jumbo v15, "disableUcWebView loop object in round "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", pi && ai && eu break"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 332
    .end local v1    # "ai":Z
    .end local v4    # "eu":Z
    .end local v10    # "pi":Z
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0
.end method

.method private static enableExternalWebView(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 26
    .param p0, "bizType"    # Ljava/lang/String;
    .param p1, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 142
    const/4 v11, 0x1

    .line 143
    .local v11, "enableExternalWebView":Z
    const-string/jumbo v3, "h5_webViewConfig"

    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 144
    .local v25, "webviewConfig":Ljava/lang/String;
    const-string/jumbo v3, "H5WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "h5_webViewConfig "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-static/range {v25 .. v25}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v19

    .line 146
    .local v19, "joConfig":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "h5_enableExternalWebView"

    move-object/from16 v0, v19

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 147
    .local v23, "value":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    const-string/jumbo v3, "YES"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    .line 150
    :cond_0
    if-nez v11, :cond_1

    .line 151
    const/4 v3, 0x0

    .line 241
    :goto_0
    return v3

    .line 153
    :cond_1
    const/4 v15, 0x0

    .line 154
    .local v15, "externalWebViewUsageRule":Lcom/alibaba/fastjson/JSONObject;
    const/4 v14, 0x0

    .line 155
    .local v14, "externalWebViewSdkVersion":Lcom/alibaba/fastjson/JSONObject;
    const/4 v13, 0x0

    .line 156
    .local v13, "externalWebViewModel":Lcom/alibaba/fastjson/JSONArray;
    const/4 v12, 0x0

    .line 157
    .local v12, "externalWebView4UC":Lcom/alibaba/fastjson/JSONArray;
    const/4 v8, 0x2

    .line 159
    .local v8, "cpuType":I
    :try_start_0
    const-string/jumbo v3, "h5_externalWebViewUsageRule"

    const/4 v4, 0x0

    .line 160
    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v15

    .line 161
    const-string/jumbo v3, "h5_externalWebViewSdkVersion"

    const/4 v4, 0x0

    .line 162
    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    .line 163
    const-string/jumbo v3, "h5_externalWebViewModel"

    const/4 v4, 0x0

    .line 164
    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v13

    .line 165
    const-string/jumbo v3, "h5_externalWebView4UC"

    const/4 v4, 0x0

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getJSONArray(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONArray;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    .line 166
    const-string/jumbo v3, "h5_externalWebView4CPU"

    const/4 v4, 0x2

    move-object/from16 v0, v19

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 170
    :goto_1
    const/16 v22, 0x1

    .line 171
    .local v22, "usage":Z
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5DeviceHelper;->x86(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "x86 cpu use system webview."

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    .line 174
    .local v2, "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    if-eqz v2, :cond_2

    .line 175
    const-string/jumbo v3, "appId"

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "appId":Ljava/lang/String;
    const-string/jumbo v3, "isTinyApp"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v3, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v17

    .line 177
    .local v17, "isTinyApp":Z
    const-string/jumbo v3, "H5_USE_AndroidWebview"

    const-string/jumbo v4, "x86\u5185\u6838\u964d\u7ea7\u7cfb\u7edfwebview,"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 178
    invoke-interface/range {v2 .. v7}, Lcom/alipay/mobile/nebula/provider/H5LogProvider;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .end local v5    # "appId":Ljava/lang/String;
    .end local v17    # "isTinyApp":Z
    :cond_2
    const/16 v22, 0x0

    .line 184
    .end local v2    # "h5LogProvider":Lcom/alipay/mobile/nebula/provider/H5LogProvider;
    :cond_3
    if-eqz v22, :cond_4

    .line 185
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->disableUcWebView(Lcom/alibaba/fastjson/JSONArray;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "disable ucwebview by h5_externalWebView4UC"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const/16 v22, 0x0

    .line 191
    :cond_4
    if-eqz v22, :cond_5

    .line 192
    invoke-static {v14}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->buildWebViewSdkVersion(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/HashMap;

    move-result-object v24

    .line 193
    .local v24, "versionInMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 194
    .local v9, "currentSdkVersion":I
    const-string/jumbo v3, "min"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string/jumbo v3, "max"

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 195
    const-string/jumbo v3, "min"

    .line 196
    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v9, :cond_7

    const-string/jumbo v3, "max"

    .line 197
    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v9, v3, :cond_7

    const/16 v22, 0x1

    .line 198
    :goto_2
    if-nez v22, :cond_5

    .line 199
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "disable ucwebview by h5_externalWebViewSdkVersion"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v9    # "currentSdkVersion":I
    .end local v24    # "versionInMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    :goto_3
    if-eqz v22, :cond_6

    .line 208
    if-eqz v13, :cond_6

    .line 209
    const/16 v16, 0x0

    .local v16, "index":I
    :goto_4
    invoke-virtual {v13}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_6

    .line 210
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 211
    .local v18, "item":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 212
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "disable ucwebview by h5_externalWebViewModel"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/16 v22, 0x0

    .line 220
    .end local v16    # "index":I
    .end local v18    # "item":Ljava/lang/String;
    :cond_6
    if-eqz v22, :cond_d

    .line 221
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 222
    invoke-static {v15}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->buildWebViewRules(Lcom/alibaba/fastjson/JSONObject;)Ljava/util/HashMap;

    move-result-object v20

    .line 223
    .local v20, "rulesInMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eqz v3, :cond_b

    .line 224
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 225
    .local v21, "type":Ljava/lang/String;
    const-string/jumbo v3, "SYSTEM_BUILD_IN"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 226
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "disable ucwebview by h5_externalWebViewUsageRule"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 167
    .end local v20    # "rulesInMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v21    # "type":Ljava/lang/String;
    .end local v22    # "usage":Z
    :catch_0
    move-exception v10

    .line 168
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "exception detail"

    invoke-static {v3, v4, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 197
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "currentSdkVersion":I
    .restart local v22    # "usage":Z
    .restart local v24    # "versionInMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_7
    const/16 v22, 0x0

    goto :goto_2

    .line 202
    :cond_8
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "disable ucwebview by h5_externalWebViewSdkVersion"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/16 v22, 0x0

    goto/16 :goto_3

    .line 209
    .end local v9    # "currentSdkVersion":I
    .end local v24    # "versionInMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "index":I
    .restart local v18    # "item":Ljava/lang/String;
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    .line 229
    .end local v16    # "index":I
    .end local v18    # "item":Ljava/lang/String;
    .restart local v20    # "rulesInMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v21    # "type":Ljava/lang/String;
    :cond_a
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "THIRDPARTY"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 233
    .end local v21    # "type":Ljava/lang/String;
    :cond_b
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "rulesInMap is null, default"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 237
    .end local v20    # "rulesInMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_c
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 240
    :cond_d
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "disable ucwebview finally"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public static getBizType(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .param p0, "startParams"    # Landroid/os/Bundle;

    .prologue
    .line 303
    if-nez p0, :cond_1

    .line 304
    const/4 v0, 0x0

    .line 316
    :cond_0
    :goto_0
    return-object v0

    .line 306
    :cond_1
    const-string/jumbo v1, "bizType"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    .local v0, "bizType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 310
    const-string/jumbo v1, "publicId"

    const-string/jumbo v2, ""

    invoke-static {p0, v1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    const-string/jumbo v1, "appId"

    invoke-static {p0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getWebViewType(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 6
    .param p0, "bizType"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "startParams"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 65
    const-string/jumbo v2, "H5WebViewFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getWebViewType bizType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-static {p0}, Lcom/alipay/mobile/h5container/service/RnService;->isRnBiz(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 67
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->RN_VIEW:Lcom/alipay/mobile/nebula/webview/WebViewType;

    .line 112
    :goto_0
    return-object v2

    .line 70
    :cond_0
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 71
    const-string/jumbo v2, "h5_read_use_webview_config"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 72
    const-string/jumbo v2, "h5_use_uc_webview"

    invoke-static {v2, v5}, Lcom/alipay/mobile/nebula/dev/H5DevConfig;->getBooleanConfig(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const-string/jumbo v2, "H5WebViewFactory"

    const-string/jumbo v3, "read switch use uc webView"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto :goto_0

    .line 76
    :cond_1
    const-string/jumbo v2, "H5WebViewFactory"

    const-string/jumbo v3, "read switch use android webView"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto :goto_0

    .line 81
    :cond_2
    sget-boolean v2, Lcom/alipay/mobile/nebulacore/Nebula;->h5_dev_uc:Z

    if-eqz v2, :cond_4

    .line 82
    const-string/jumbo v2, "h5_uc_webview"

    invoke-static {p1, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    const-string/jumbo v2, "H5WebViewFactory"

    const-string/jumbo v3, "debug config to enable uc webview"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto :goto_0

    .line 86
    :cond_3
    const-string/jumbo v2, "H5WebViewFactory"

    const-string/jumbo v3, "debug config to disable uc webview"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto :goto_0

    .line 92
    :cond_4
    const-string/jumbo v2, "url"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->degradeSysWebViewByUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    const-string/jumbo v2, "H5WebViewFactory"

    const-string/jumbo v3, "degrade system by h5_degradeSysWebViewUrlPrefix"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto :goto_0

    .line 99
    :cond_5
    const-string/jumbo v2, "useSysWebView"

    invoke-static {p2, v2}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "useSysWeb":Ljava/lang/String;
    const-string/jumbo v2, "yes"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->useSysWebWillCrash()Z

    move-result v2

    if-nez v2, :cond_6

    .line 101
    const-string/jumbo v2, "H5WebViewFactory"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "useSysWeb "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " use SysWebview"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto/16 :goto_0

    .line 106
    :cond_6
    invoke-static {p0, p2}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->enableExternalWebView(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->useSysWebWillCrash()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 107
    :cond_7
    const-string/jumbo v2, "H5WebViewFactory"

    const-string/jumbo v3, "bizType match online config to use uc webview"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto/16 :goto_0

    .line 112
    :cond_8
    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto/16 :goto_0
.end method

.method public static notNeedInitUc(Landroid/os/Bundle;)Z
    .locals 6
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 293
    invoke-static {p0}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->getBizType(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 294
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 293
    invoke-static {v3, v4, p0}, Lcom/alipay/mobile/nebulacore/env/H5WebViewChoose;->getWebViewType(Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 295
    .local v0, "useUc":Z
    :goto_0
    const-string/jumbo v3, "H5WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ucReady "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v5, Liog;->a:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " useUc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " needInitUc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Liog;->b:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    sget-boolean v3, Liog;->a:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    sget-boolean v3, Liog;->b:Z

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    .end local v0    # "useUc":Z
    :cond_2
    move v0, v2

    .line 293
    goto :goto_0
.end method

.method public static sendUcReceiver(Z)V
    .locals 3
    .param p0, "result"    # Z

    .prologue
    .line 278
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 279
    .local v1, "manager":Ldq;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "h5_action_uc_init_finish"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 281
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 282
    return-void
.end method

.method public static useSysWebWillCrash()Z
    .locals 8

    .prologue
    .line 39
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v6

    const-class v7, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 42
    .local v1, "h5ConfigProvider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v1, :cond_1

    .line 43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    .local v4, "phoneInfo":Ljava/lang/String;
    const-string/jumbo v6, "h5_first_init_use_android_webView_phone"

    .line 46
    invoke-interface {v1, v6}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 47
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v3

    .line 48
    .local v3, "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 49
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_1

    .line 50
    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "configValue":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 52
    const-string/jumbo v6, "H5WebViewFactory"

    const-string/jumbo v7, "h5_first_init_use_android_webView_phone contain use uc"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v6, 0x1

    .line 58
    .end local v0    # "configValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "phoneInfo":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    return v6

    .line 49
    .restart local v0    # "configValue":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .restart local v4    # "phoneInfo":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    .end local v0    # "configValue":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "jsonArray":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "phoneInfo":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method
