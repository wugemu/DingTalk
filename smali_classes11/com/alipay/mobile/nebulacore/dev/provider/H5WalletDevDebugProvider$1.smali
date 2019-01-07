.class Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;
.super Ljava/lang/Object;
.source "H5WalletDevDebugProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->screenshot(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

.field final synthetic val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

.field final synthetic val$viewId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->val$viewId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 330
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v5

    .line 331
    .local v5, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 332
    invoke-virtual {v5}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->takeScreenShot(Liop;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 333
    .local v6, "snapshot":Landroid/graphics/Bitmap;
    if-eqz v6, :cond_0

    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v1, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;

    invoke-direct {v1}, Lcom/alipay/mobile/nebula/io/PoolingByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 339
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 340
    .local v2, "byteArray":[B
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v4

    .line 341
    .local v4, "encoded":Ljava/lang/String;
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v8, "img"

    invoke-virtual {v7, v8, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 345
    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 349
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "byteArray":[B
    .end local v4    # "encoded":Ljava/lang/String;
    .end local v6    # "snapshot":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->this$0:Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->val$viewId:Ljava/lang/String;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider$1;->val$jsonObject:Lcom/alibaba/fastjson/JSONObject;

    invoke-static {v7, v8, v9}, Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;->access$000(Lcom/alipay/mobile/nebulacore/dev/provider/H5WalletDevDebugProvider;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 350
    return-void

    .line 342
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "snapshot":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v3

    .line 343
    .local v3, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "H5WalletDevDebugProvider"

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v7

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_2

    .line 342
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1
.end method
