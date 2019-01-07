.class final Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;
.super Ljava/lang/Object;
.source "H5SessionTabInfoParser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser;->getOnlineData(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$appId:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 113
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 115
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;

    .line 116
    .local v3, "fallbackStreamProvider":Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;
    if-nez v3, :cond_1

    .line 117
    const-string/jumbo v4, "H5SessionTabInfoParser"

    const-string/jumbo v5, "##tabbar## getOnlineData fallbackStreamProvider == null return"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 122
    .local v18, "time":J
    const/4 v11, 0x0

    .line 124
    .local v11, "dataObj":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "Accept"

    const-string/jumbo v5, "text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8,UC/163"

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string/jumbo v4, "Accept-Encoding"

    const-string/jumbo v5, "gzip, deflate"

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string/jumbo v4, "Accept-Language"

    const-string/jumbo v5, "zh-CN,en-US;q=0.8"

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$url:Ljava/lang/String;

    const-string/jumbo v5, "GET"

    const/4 v7, 0x0

    const-wide/16 v8, 0x1388

    const/4 v10, 0x0

    .line 131
    invoke-interface/range {v3 .. v10}, Lcom/alipay/mobile/nebula/provider/H5FallbackStreamProvider;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BJZ)Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;

    move-result-object v17

    .line 133
    .local v17, "res":Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->getResStream()Ljava/io/InputStream;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 134
    invoke-virtual/range {v17 .. v17}, Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;->getResStream()Ljava/io/InputStream;

    move-result-object v16

    .line 135
    .local v16, "inputStream":Ljava/io/InputStream;
    invoke-static/range {v16 .. v16}, Lcom/alipay/mobile/nebula/util/H5Utils;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 136
    .local v2, "data":[B
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$appId:Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/alipay/mobile/nebula/util/H5TabbarUtils;->setTabData(Ljava/lang/String;[B)V

    .line 137
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/lang/String;-><init>([B)V

    .line 138
    .local v12, "dataStr":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v14, v4, v18

    .line 139
    .local v14, "dif":J
    const-string/jumbo v4, "H5SessionTabInfoParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "##tabbar## getOnlineData from entry onPrepareData "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-static {v12}, Lgxk;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 146
    .end local v2    # "data":[B
    .end local v12    # "dataStr":Ljava/lang/String;
    .end local v14    # "dif":J
    .end local v16    # "inputStream":Ljava/io/InputStream;
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v4, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    invoke-interface {v4, v11}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 143
    .end local v6    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "res":Lcom/alipay/mobile/nebula/data/H5CustomHttpResponse;
    :catch_0
    move-exception v13

    .line 144
    .local v13, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "H5SessionTabInfoParser"

    invoke-static {v4, v13}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v4, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0

    .line 146
    .end local v13    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    if-eqz v5, :cond_3

    .line 147
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$2;->val$h5SessionTabInfoListener:Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Lcom/alipay/mobile/nebulacore/tabbar/H5SessionTabInfoParser$H5SessionTabInfoListener;->onGetAsyncData(Lcom/alibaba/fastjson/JSONObject;)V

    :cond_3
    throw v4
.end method
