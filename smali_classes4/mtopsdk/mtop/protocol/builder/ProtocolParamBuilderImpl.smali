.class public Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;
.super Ljava/lang/Object;
.source "ProtocolParamBuilderImpl.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ProtocolParamBuilderImpl"


# instance fields
.field private sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

.field private signGenerator:Lkkj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lkkj;

    .line 36
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    return-void
.end method

.method private buildExtParams(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)V
    .locals 13
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 130
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v4

    .line 133
    .local v4, "mtopProperty":Lmtopsdk/mtop/common/MtopNetworkProp;
    iget-object v11, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    if-eqz v11, :cond_0

    iget-object v11, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 134
    iget-object v11, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 135
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {p2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 140
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v11, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v11}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalXcmdVersion()Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "xcmdVersion":Ljava/lang/String;
    invoke-static {v10}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 142
    const-string/jumbo v11, "x-cmd-v"

    invoke-interface {p2, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    iget-object v11, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v11}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppVersion()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "appVersion":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 148
    const-string/jumbo v11, "x-app-ver"

    invoke-interface {p2, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_2
    iget-object v11, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v11}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalXOrangeQ()Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "xOrangeQ":Ljava/lang/String;
    invoke-static {v9}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 153
    const-string/jumbo v11, "x-orange-q"

    invoke-interface {p2, v11, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :cond_3
    const-string/jumbo v11, "ua"

    invoke-static {v11}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 157
    .local v6, "userAgent":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 158
    const-string/jumbo v11, "user-agent"

    invoke-interface {p2, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_4
    const-string/jumbo v11, "x-c-traceid"

    iget-object v12, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->clientTraceId:Ljava/lang/String;

    invoke-interface {p2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string/jumbo v11, "f-refer"

    const-string/jumbo v12, "mtop"

    invoke-interface {p2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget v11, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    if-lez v11, :cond_7

    .line 165
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v5, "netInfo":Lorg/json/JSONObject;
    iget v11, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    .line 167
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->e()Ljava/lang/String;

    move-result-object v8

    .line 168
    .local v8, "wifiSSID":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 170
    :try_start_0
    const-string/jumbo v11, "SSID"

    invoke-virtual {v5, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v8    # "wifiSSID":Ljava/lang/String;
    :cond_5
    :goto_1
    iget v11, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->netParam:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_6

    .line 178
    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->d()Ljava/lang/String;

    move-result-object v7

    .line 179
    .local v7, "wifiBSSID":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 181
    :try_start_1
    const-string/jumbo v11, "BSSID"

    invoke-virtual {v5, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 188
    .end local v7    # "wifiBSSID":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 189
    const-string/jumbo v11, "x-netinfo"

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p2, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .end local v5    # "netInfo":Lorg/json/JSONObject;
    :cond_7
    return-void

    .line 171
    .restart local v5    # "netInfo":Lorg/json/JSONObject;
    .restart local v8    # "wifiSSID":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v11, "mtopsdk.ProtocolParamBuilderImpl"

    const-string/jumbo v12, "set wifi ssid error."

    invoke-static {v11, v12, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 182
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v8    # "wifiSSID":Ljava/lang/String;
    .restart local v7    # "wifiBSSID":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 183
    .restart local v1    # "e":Lorg/json/JSONException;
    const-string/jumbo v11, "mtopsdk.ProtocolParamBuilderImpl"

    const-string/jumbo v12, "set wifi bssid error."

    invoke-static {v11, v12, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method private buildGlobalParams()Ljava/util/Map;
    .locals 8
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

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 200
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 201
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "pv"

    const-string/jumbo v6, "5.0"

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo v3, "netType"

    const-string/jumbo v6, "netType"

    invoke-static {v6}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v3, "nq"

    const-string/jumbo v6, "nq"

    invoke-static {v6}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v3, "lat"

    invoke-static {v3}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "lat":Ljava/lang/String;
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const-string/jumbo v3, "lng"

    invoke-static {v3}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "lng":Ljava/lang/String;
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    const-string/jumbo v3, "lat"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v3, "lng"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v1    # "lng":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "t"

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string/jumbo v3, "deviceId"

    const-string/jumbo v6, "deviceId"

    invoke-static {v6}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string/jumbo v3, "sid"

    const-string/jumbo v6, "sid"

    invoke-static {v6}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    const-string/jumbo v3, "utdid"

    const-string/jumbo v6, "utdid"

    invoke-static {v6}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string/jumbo v3, "umt"

    const-string/jumbo v6, "umt"

    invoke-static {v6}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Lmtopsdk/mtop/features/MtopFeatureManager;->getMtopTotalFeatures()J

    move-result-wide v4

    .line 221
    .local v4, "x_features":J
    const-string/jumbo v3, "x-features"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    return-object v2
.end method

.method private buildMtopProtocolParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;
    .locals 14
    .param p1, "mtopProxy"    # Lmtopsdk/mtop/MtopProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 62
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v4

    .line 63
    .local v4, "mtopRequest":Lmtopsdk/mtop/domain/MtopRequest;
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v3

    .line 65
    .local v3, "mtopProperty":Lmtopsdk/mtop/common/MtopNetworkProp;
    invoke-direct {p0}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->buildGlobalParams()Ljava/util/Map;

    move-result-object v5

    .line 67
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v10, "api"

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v10, "v"

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string/jumbo v10, "data"

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v11, "ttid"

    iget-object v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-static {v10}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    :goto_0
    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget-object v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    invoke-static {v10}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 75
    const-string/jumbo v10, "reqbiz-ext"

    iget-object v11, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->reqBizExt:Ljava/lang/String;

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_0
    const-string/jumbo v11, "uid"

    iget-object v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    invoke-static {v10}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    iget-object v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->reqUserId:Ljava/lang/String;

    :goto_1
    invoke-interface {v5, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v10

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmtopsdk/mtop/global/SwitchConfig;->isSecurityAppKeyApi(Ljava/lang/String;)Z

    move-result v6

    .line 81
    .local v6, "securityAppkeyFlag":Z
    if-eqz v6, :cond_4

    iget-object v10, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v10}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSecurityAppKey()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "appKey":Ljava/lang/String;
    :goto_2
    iput-object v0, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->mtopSignAppkey:Ljava/lang/String;

    .line 83
    const-string/jumbo v10, "appKey"

    invoke-interface {v5, v10, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-boolean v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->useOpenApi:Z

    if-eqz v10, :cond_1

    .line 88
    const-string/jumbo v10, "exttype"

    sget-object v11, Lmtopsdk/mtop/domain/ApiTypeEnum;->ISV_OPEN_API:Lmtopsdk/mtop/domain/ApiTypeEnum;

    invoke-virtual {v11}, Lmtopsdk/mtop/domain/ApiTypeEnum;->getApiType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v10, "extdata"

    iget-object v11, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    iget-object v12, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    invoke-direct {p0, v11, v12}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->prepareSignExtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_1
    iget-object v11, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lkkj;

    move-object v10, v5

    check-cast v10, Ljava/util/HashMap;

    invoke-interface {v11, v10, v0}, Lkkj;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "sign":Ljava/lang/String;
    invoke-static {v7}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v10, 0x80

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 95
    .local v1, "logBuf":Ljava/lang/StringBuilder;
    const-string/jumbo v10, "api="

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";v="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " getMtopSignApi4  failed. [appKey="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ,isWBSign=true]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "logStr":Ljava/lang/String;
    const-string/jumbo v10, "mtopsdk.ProtocolParamBuilderImpl"

    iget-object v11, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v11}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v5, 0x0

    .line 120
    .end local v1    # "logBuf":Ljava/lang/StringBuilder;
    .end local v2    # "logStr":Ljava/lang/String;
    .end local v5    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    return-object v5

    .line 72
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v6    # "securityAppkeyFlag":Z
    .end local v7    # "sign":Ljava/lang/String;
    .restart local v5    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string/jumbo v10, "ttid"

    invoke-static {v10}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 78
    :cond_3
    const-string/jumbo v10, "uid"

    invoke-static {v10}, Lkkn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 81
    .restart local v6    # "securityAppkeyFlag":Z
    :cond_4
    iget-object v10, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v10}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 105
    .restart local v0    # "appKey":Ljava/lang/String;
    .restart local v7    # "sign":Ljava/lang/String;
    :cond_5
    const-string/jumbo v10, "sign"

    invoke-interface {v5, v10, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget v10, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    if-gez v10, :cond_6

    if-eqz v6, :cond_7

    .line 109
    :cond_6
    const-string/jumbo v10, "t"

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 110
    .local v8, "time":Ljava/lang/String;
    iget-object v10, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lkkj;

    iget v11, v3, Lmtopsdk/mtop/common/MtopNetworkProp;->wuaFlag:I

    invoke-interface {v10, v8, v0, v11}, Lkkj;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 111
    .local v9, "wua":Ljava/lang/String;
    const-string/jumbo v10, "wua"

    invoke-interface {v5, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-static {v9}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-object v10, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v10}, Lmtopsdk/common/util/TBSdkLog;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 113
    const-string/jumbo v10, "mtopsdk.ProtocolParamBuilderImpl"

    iget-object v11, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v11}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "call getSecurityBodyDataEx fail, wua is null. "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .end local v8    # "time":Ljava/lang/String;
    .end local v9    # "wua":Ljava/lang/String;
    :cond_7
    invoke-direct {p0, p1, v5}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->buildExtParams(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)V

    goto :goto_3
.end method

.method private prepareSignExtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "openAppKey"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 235
    .local v0, "extBuilder":Ljava/lang/StringBuilder;
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string/jumbo v1, "openappkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    const-string/jumbo v1, ";accesstoken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public buildParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;
    .locals 4
    .param p1, "proxy"    # Lmtopsdk/mtop/MtopProxy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 40
    if-eqz p1, :cond_0

    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->GW:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getEntrance()Lmtopsdk/mtop/domain/EntranceEnum;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 41
    :cond_0
    const-string/jumbo v1, "mtopsdk.ProtocolParamBuilderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[buildParams]mtopProxy or entrance is invalid.---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSign()Lkkj;

    move-result-object v1

    iput-object v1, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lkkj;

    .line 45
    iget-object v1, p0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lkkj;

    if-nez v1, :cond_2

    .line 46
    const-string/jumbo v1, "mtopsdk.ProtocolParamBuilderImpl"

    iget-object v2, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v2}, Lmtopsdk/mtop/util/MtopStatistics;->getSeqNo()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ISign for SDKConfig.getInstance().getGlobalSign is null"

    invoke-static {v1, v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-direct {p0, p1}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->buildMtopProtocolParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v0

    .line 51
    .local v0, "paramReaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0
.end method
