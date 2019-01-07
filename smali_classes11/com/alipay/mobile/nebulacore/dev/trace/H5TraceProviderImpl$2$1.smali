.class Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2$1;
.super Ljava/lang/Object;
.source "H5TraceProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 131
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v6

    .line 132
    .local v6, "service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 133
    invoke-virtual {v6}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v8

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->takeScreenShot(Liop;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 134
    .local v7, "snapshot":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_0

    .line 135
    const/4 v0, 0x0

    .line 137
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 140
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 141
    .local v2, "byteArray":[B
    const/4 v8, 0x0

    invoke-static {v2, v8}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "encoded":Ljava/lang/String;
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 143
    .local v5, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "type"

    const-string/jumbo v9, "screenshot"

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v8, "viewId"

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;

    iget-object v9, v9, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;->val$viewId:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v8, "subType"

    const-string/jumbo v9, "upload"

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string/jumbo v8, "img"

    invoke-virtual {v5, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string/jumbo v8, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string/jumbo v8, "H5TraceProviderImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "Send snapshot: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2$1;->this$1:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;

    iget-object v8, v8, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl$2;->this$0:Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;

    invoke-static {v8, v5}, Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;->access$400(Lcom/alipay/mobile/nebulacore/dev/trace/H5TraceProviderImpl;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 157
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "byteArray":[B
    .end local v4    # "encoded":Ljava/lang/String;
    .end local v5    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v7    # "snapshot":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 150
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "snapshot":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v8, "H5TraceProviderImpl"

    invoke-static {v8, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v8

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 150
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method
