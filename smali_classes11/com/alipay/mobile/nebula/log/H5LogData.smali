.class public Lcom/alipay/mobile/nebula/log/H5LogData;
.super Ljava/lang/Object;
.source "H5LogData.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "H5LogData"


# instance fields
.field private currentParamMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param1Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param2Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param3Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private param4Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private seedId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "seedId"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public static seedId(Ljava/lang/String;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1
    .param p0, "seeId"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v0, Lcom/alipay/mobile/nebula/log/H5LogData;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebula/log/H5LogData;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "h5LogData":Lcom/alipay/mobile/nebula/log/H5LogData;
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 104
    const-string/jumbo v0, "H5LogData"

    const-string/jumbo v1, "please addParam first !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-object p0

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    if-nez p2, :cond_1

    const-string/jumbo v0, ""

    :goto_1
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public addMapParam(Ljava/util/Map;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/alipay/mobile/nebula/log/H5LogData;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 132
    const-string/jumbo v2, "H5LogData"

    const-string/jumbo v3, "please addParam first !"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    return-object p0

    .line 135
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    const-string/jumbo v1, ""

    .line 140
    .local v1, "value":Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    .end local v1    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public addNonNullValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 119
    const-string/jumbo v0, "H5LogData"

    const-string/jumbo v1, "please addParam first !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-object p0

    .line 122
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    :cond_1
    const-string/jumbo v0, "H5LogData"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "empty value, key : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addUniteParam(Lior;)Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 13
    .param p1, "h5PageData"    # Lior;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v11, 0x0

    .line 147
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    if-nez v9, :cond_1

    .line 148
    const-string/jumbo v9, "H5LogData"

    const-string/jumbo v10, "please addParam first !"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    :cond_0
    :goto_0
    return-object p0

    .line 151
    :cond_1
    if-nez p1, :cond_2

    .line 152
    const-string/jumbo v9, "H5LogData"

    const-string/jumbo v10, "h5PageData == null, return"

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :cond_2
    const-string/jumbo v9, "bizScenario"

    const-string/jumbo v10, ""

    invoke-virtual {p1, v9, v10}, Lior;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "bizScenario":Ljava/lang/String;
    const-string/jumbo v9, "isOfflineApp"

    invoke-virtual {p1, v9, v11}, Lior;->b(Ljava/lang/String;Z)Z

    move-result v4

    .line 1537
    .local v4, "isOfflineApp":Z
    :try_start_0
    iget-object v7, p1, Lior;->z:Ljava/lang/String;

    .line 160
    .local v7, "title":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 161
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, " "

    const-string/jumbo v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, ","

    const-string/jumbo v11, ""

    .line 162
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\n"

    const-string/jumbo v11, ""

    .line 163
    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 166
    :cond_3
    const-string/jumbo v1, ""
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1906
    .local v1, "customParams":Ljava/lang/String;
    :try_start_1
    iget-object v9, p1, Lior;->ao:Ljava/lang/String;

    .line 168
    const-string/jumbo v10, "utf-8"

    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 172
    :goto_1
    :try_start_2
    const-string/jumbo v9, "isH5Activity"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Lior;->b(Ljava/lang/String;Z)Z

    move-result v3

    .line 173
    .local v3, "isH5Activity":Z
    const-string/jumbo v8, ""

    .line 174
    .local v8, "viewId":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 176
    .local v5, "refViewID":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 2474
    iget-object v9, p1, Lior;->w:Ljava/lang/String;

    .line 177
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 178
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 179
    const-string/jumbo v9, "viewID"

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3501
    :cond_4
    :goto_2
    iget-object v9, p1, Lior;->y:Ljava/lang/String;

    .line 189
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 190
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 191
    const-string/jumbo v9, "refViewID"

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5275
    :cond_5
    :goto_3
    iget-object v9, p1, Lior;->aQ:Ljava/lang/String;

    .line 210
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 211
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "xContentVersion"

    .line 6275
    iget-object v11, p1, Lior;->aQ:Ljava/lang/String;

    .line 211
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6284
    :cond_6
    iget-object v9, p1, Lior;->aR:Ljava/lang/String;

    .line 213
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 214
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "eagleId"

    .line 7284
    iget-object v11, p1, Lior;->aR:Ljava/lang/String;

    .line 214
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7293
    :cond_7
    iget-object v9, p1, Lior;->aS:Ljava/lang/String;

    .line 216
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 217
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "requestId"

    .line 8293
    iget-object v11, p1, Lior;->aS:Ljava/lang/String;

    .line 217
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8382
    :cond_8
    iget-object v9, p1, Lior;->aX:Ljava/lang/String;

    .line 219
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 220
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "spmId"

    .line 9382
    iget-object v11, p1, Lior;->aX:Ljava/lang/String;

    .line 220
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_9
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "url"

    .line 9474
    iget-object v11, p1, Lior;->w:Ljava/lang/String;

    .line 223
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "referer"

    .line 9501
    iget-object v11, p1, Lior;->y:Ljava/lang/String;

    .line 224
    invoke-static {v11}, Lcom/alipay/mobile/nebula/util/H5Utils;->getMaxLogStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "appId"

    .line 9870
    iget-object v11, p1, Lior;->ak:Ljava/lang/String;

    .line 225
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "version"

    .line 9888
    iget-object v11, p1, Lior;->am:Ljava/lang/String;

    .line 226
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "publicId"

    .line 10879
    iget-object v11, p1, Lior;->al:Ljava/lang/String;

    .line 227
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "sourceId"

    sget-object v11, Lcom/alipay/mobile/nebula/appcenter/util/H5AppUtil;->secAppId:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "psd"

    invoke-static {p1, v4}, Lcom/alipay/mobile/nebula/log/H5Logger;->getPsd(Lior;Z)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "viewId"

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "refviewId"

    invoke-interface {v9, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "bizScenario"

    invoke-interface {v9, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "token"

    .line 11144
    iget-object v11, p1, Lior;->aA:Ljava/lang/String;

    .line 233
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "h5Token"

    .line 11153
    iget-object v11, p1, Lior;->aB:Ljava/lang/String;

    .line 234
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "h5SessionToken"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "H5Session"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11162
    iget-object v12, p1, Lior;->aC:Ljava/lang/String;

    .line 235
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "openAppId"

    .line 11969
    iget-object v11, p1, Lior;->au:Ljava/lang/String;

    .line 236
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "shopId"

    .line 11978
    iget-object v11, p1, Lior;->av:Ljava/lang/String;

    .line 237
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "title"

    invoke-interface {v9, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "customParams"

    invoke-interface {v9, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "webViewType"

    .line 12924
    iget-object v11, p1, Lior;->ap:Ljava/lang/String;

    .line 240
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "isTinyApp"

    .line 12960
    iget-object v11, p1, Lior;->at:Ljava/lang/String;

    .line 241
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13951
    iget-object v9, p1, Lior;->as:Ljava/lang/String;

    .line 243
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 244
    iget-object v9, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    const-string/jumbo v10, "log_release_type"

    .line 14951
    iget-object v11, p1, Lior;->as:Ljava/lang/String;

    .line 244
    invoke-interface {v9, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 246
    .end local v1    # "customParams":Ljava/lang/String;
    .end local v3    # "isH5Activity":Z
    .end local v5    # "refViewID":Ljava/lang/String;
    .end local v7    # "title":Ljava/lang/String;
    .end local v8    # "viewId":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 247
    .local v6, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v9, "H5LogData"

    invoke-static {v9, v6}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 169
    .end local v6    # "throwable":Ljava/lang/Throwable;
    .restart local v1    # "customParams":Ljava/lang/String;
    .restart local v7    # "title":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 170
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    const-string/jumbo v9, "H5LogData"

    invoke-static {v9, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 3474
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "isH5Activity":Z
    .restart local v5    # "refViewID":Ljava/lang/String;
    .restart local v8    # "viewId":Ljava/lang/String;
    :cond_a
    iget-object v9, p1, Lior;->w:Ljava/lang/String;

    .line 183
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 184
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 185
    const-string/jumbo v9, "viewID"

    invoke-static {v9, v8}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4501
    :cond_b
    iget-object v9, p1, Lior;->y:Ljava/lang/String;

    .line 195
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->getCleanUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->enableStockTradeLog()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 197
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 198
    const-string/jumbo v9, "refViewID"

    invoke-static {v9, v5}, Lcom/alipay/mobile/nebula/log/H5Logger;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 204
    :cond_c
    invoke-static {}, Lcom/alipay/mobile/nebula/log/H5Logger;->getH5LogProvider()Lcom/alipay/mobile/nebula/provider/H5LogProvider;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 205
    const-string/jumbo v9, "viewID"

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 206
    const-string/jumbo v9, "refViewID"

    invoke-static {v9}, Lcom/alipay/mobile/nebula/log/H5Logger;->getContextParam(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    goto/16 :goto_3
.end method

.method public getParam1Map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param1Map:Ljava/util/Map;

    return-object v0
.end method

.method public getParam2Map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param2Map:Ljava/util/Map;

    return-object v0
.end method

.method public getParam3Map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param3Map:Ljava/util/Map;

    return-object v0
.end method

.method public getParam4Map()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param4Map:Ljava/util/Map;

    return-object v0
.end method

.method public getSeedId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->seedId:Ljava/lang/String;

    return-object v0
.end method

.method public param1()Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param1Map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param1Map:Ljava/util/Map;

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param1Map:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    .line 68
    return-object p0
.end method

.method public param2()Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param2Map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param2Map:Ljava/util/Map;

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param2Map:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    .line 76
    return-object p0
.end method

.method public param3()Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param3Map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param3Map:Ljava/util/Map;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param3Map:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    .line 84
    return-object p0
.end method

.method public param4()Lcom/alipay/mobile/nebula/log/H5LogData;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param4Map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param4Map:Ljava/util/Map;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->param4Map:Ljava/util/Map;

    iput-object v0, p0, Lcom/alipay/mobile/nebula/log/H5LogData;->currentParamMap:Ljava/util/Map;

    .line 92
    return-object p0
.end method
