.class Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;
.super Ljava/lang/Object;
.source "H5LongClickPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageSaveRunner"
.end annotation


# instance fields
.field bridgeContext:Liny;

.field cusHandleResult:Z

.field filePath:Ljava/lang/String;

.field savePath:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

.field toastPath:Ljava/lang/String;

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Liny;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "bridgeContext"    # Liny;
    .param p4, "cusHandleResult"    # Z
    .param p5, "savePath"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->url:Ljava/lang/String;

    .line 240
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->bridgeContext:Liny;

    .line 241
    iput-boolean p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->cusHandleResult:Z

    .line 242
    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->savePath:Ljava/lang/String;

    .line 243
    return-void
.end method

.method private download()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 324
    const/4 v8, 0x0

    .line 325
    .local v8, "inputStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 327
    .local v5, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->url:Ljava/lang/String;

    const-string/jumbo v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 328
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->url:Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->loadResponse(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 333
    :goto_0
    if-nez v8, :cond_1

    .line 387
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 388
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 334
    const/4 v9, 0x0

    .line 390
    :goto_1
    return v9

    .line 330
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->url:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5ImageUtil;->base64ToInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    goto :goto_0

    .line 337
    :cond_1
    const-string/jumbo v4, "/DCIM/Alipay/"

    .line 338
    .local v4, "filePathPart":Ljava/lang/String;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->savePath:Ljava/lang/String;

    const-string/jumbo v10, "default"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 339
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->savePath:Ljava/lang/String;

    .line 342
    :cond_2
    const-string/jumbo v3, ""

    .line 343
    .local v3, "ext":Ljava/lang/String;
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->url:Ljava/lang/String;

    const-string/jumbo v10, "http"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 344
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->url:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5Utils;->isImage(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 345
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->url:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    :cond_3
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 354
    const-string/jumbo v3, "jpg"

    .line 357
    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->toastPath:Ljava/lang/String;

    .line 359
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->toastPath:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->filePath:Ljava/lang/String;

    .line 361
    const-string/jumbo v9, "H5LongClickPlugin"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "filePath "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->filePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->filePath:Ljava/lang/String;

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5FileUtil;->create(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 363
    const-string/jumbo v9, "H5LongClickPlugin"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "failed to create file "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->filePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/alipay/mobile/nebula/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 388
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 364
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 347
    :cond_5
    :try_start_2
    const-string/jumbo v3, "jpg"

    goto/16 :goto_2

    .line 366
    :cond_6
    new-instance v7, Ljava/io/File;

    iget-object v9, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->filePath:Ljava/lang/String;

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 367
    .local v7, "imageFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/16 v9, 0x400

    :try_start_3
    invoke-static {v9}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->getBuf(I)[B

    move-result-object v0

    .line 370
    .local v0, "buffer":[B
    :goto_3
    invoke-virtual {v8, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "count":I
    if-lez v1, :cond_7

    .line 371
    const/4 v9, 0x0

    invoke-virtual {v6, v0, v9, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 383
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 384
    .end local v3    # "ext":Ljava/lang/String;
    .end local v4    # "filePathPart":Ljava/lang/String;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "imageFile":Ljava/io/File;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_4
    const-string/jumbo v9, "H5LongClickPlugin"

    const-string/jumbo v10, "save image exception"

    invoke-static {v9, v10, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 387
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 388
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 385
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 373
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v3    # "ext":Ljava/lang/String;
    .restart local v4    # "filePathPart":Ljava/lang/String;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "imageFile":Ljava/io/File;
    :cond_7
    :try_start_5
    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->returnBuf([B)V

    .line 374
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 376
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->filePath:Ljava/lang/String;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string/jumbo v13, "image/*"

    aput-object v13, v11, v12

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 387
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 388
    invoke-static {v6}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 390
    const/4 v9, 0x1

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 387
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    .end local v3    # "ext":Ljava/lang/String;
    .end local v4    # "filePathPart":Ljava/lang/String;
    .end local v7    # "imageFile":Ljava/io/File;
    :catchall_0
    move-exception v9

    :goto_5
    invoke-static {v8}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 388
    invoke-static {v5}, Lcom/alipay/mobile/nebula/util/H5IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v9

    .line 387
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "ext":Ljava/lang/String;
    .restart local v4    # "filePathPart":Ljava/lang/String;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "imageFile":Ljava/io/File;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 383
    .end local v3    # "ext":Ljava/lang/String;
    .end local v4    # "filePathPart":Ljava/lang/String;
    .end local v7    # "imageFile":Ljava/io/File;
    :catch_1
    move-exception v2

    goto :goto_4
.end method

.method private loadResponse(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 11
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getUcService()Lcom/alipay/mobile/h5container/service/UcService;

    move-result-object v5

    .line 286
    .local v5, "ucService":Lcom/alipay/mobile/h5container/service/UcService;
    const/4 v3, 0x0

    .line 287
    .local v3, "response":Landroid/webkit/WebResourceResponse;
    if-eqz v5, :cond_0

    sget-boolean v8, Liog;->a:Z

    if-eqz v8, :cond_0

    .line 288
    invoke-virtual {v5, p1}, Lcom/alipay/mobile/h5container/service/UcService;->getResponse(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v3

    .line 290
    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 291
    const-string/jumbo v8, "H5LongClickPlugin"

    const-string/jumbo v9, "load response from uc cache"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {v3}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    .line 320
    :goto_0
    return-object v2

    .line 296
    :cond_1
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 297
    iget-object v8, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->this$0:Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    invoke-static {v8}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->access$200(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getSession()Lipc;

    move-result-object v8

    invoke-interface {v8}, Lipc;->getWebProvider()Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;

    move-result-object v1

    .line 298
    .local v1, "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    if-eqz v1, :cond_2

    .line 299
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;->getContent(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v7

    .line 300
    .local v7, "webResourceResponse":Landroid/webkit/WebResourceResponse;
    if-eqz v7, :cond_2

    .line 301
    const-string/jumbo v8, "H5LongClickPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "get from H5pkg "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v2

    goto :goto_0

    .line 309
    .end local v1    # "h5ContentProvider":Lcom/alipay/mobile/nebula/appcenter/api/H5ContentProvider;
    .end local v7    # "webResourceResponse":Landroid/webkit/WebResourceResponse;
    :cond_2
    :try_start_0
    const-string/jumbo v8, "H5LongClickPlugin"

    const-string/jumbo v9, "load response from net"

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 311
    .local v6, "urlPattern":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 312
    .local v0, "conn":Ljava/net/URLConnection;
    const/16 v8, 0x2710

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 313
    const/16 v8, 0x2710

    invoke-virtual {v0, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 314
    const-string/jumbo v8, "H5LongClickPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "load response length "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 316
    .local v2, "inputStream":Ljava/io/InputStream;
    goto/16 :goto_0

    .line 317
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "urlPattern":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 318
    .local v4, "t":Ljava/lang/Throwable;
    const-string/jumbo v8, "H5LongClickPlugin"

    const-string/jumbo v9, "load response exception"

    invoke-static {v8, v9, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    const/4 v2, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;->download()Z

    move-result v0

    .line 249
    .local v0, "succeed":Z
    new-instance v1, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;Z)V

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    .line 281
    return-void
.end method
