.class public final Ltu;
.super Lyq;
.source "DownloadDentryTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private d:Lyc;

.field private e:Lya;

.field private f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/alimei/restfulapi/service/RpcCallback",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/io/File;

.field private k:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

.field private l:Ljava/util/concurrent/CountDownLatch;

.field private m:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Lyq;-><init>()V

    .line 58
    iput-object v0, p0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 77
    iput-object v0, p0, Ltu;->i:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 78
    iput-object v0, p0, Ltu;->j:Ljava/io/File;

    .line 81
    iput-object v0, p0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    .line 86
    iput-object p1, p0, Ltu;->a:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 89
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltu;->g:Ljava/lang/String;

    .line 90
    invoke-virtual {p2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ltu;->h:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ltu;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    return-void
.end method

.method static synthetic a(Ltu;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Ltu;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 49
    iput-object p1, p0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "dirName"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 205
    .local v1, "mkdirs":Z
    if-nez v1, :cond_0

    .line 206
    const-string/jumbo v2, "getDentryDownloadDir: dir.mkdirs() return false"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    .end local v1    # "mkdirs":Z
    :cond_0
    return-object v0
.end method

.method private a(Z)Ljava/lang/String;
    .locals 4
    .param p1, "appendId"    # Z

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .local v1, "sbFileName":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 437
    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 438
    .local v0, "index":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 439
    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_0
    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 445
    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 446
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .end local v0    # "index":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic a(Ltu;)V
    .locals 0
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    invoke-direct {p0}, Ltu;->n()V

    return-void
.end method

.method static synthetic a(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ltu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 49
    invoke-virtual {p0, p1, p2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;)Z
    .locals 28
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;

    .prologue
    .line 459
    const/4 v14, 0x0

    .line 460
    .local v14, "isSuccess":Z
    invoke-direct/range {p0 .. p0}, Ltu;->l()Ljava/lang/String;

    move-result-object v10

    .line 461
    .local v10, "externalStorageState":Ljava/lang/String;
    const-string/jumbo v22, "mounted"

    move-object/from16 v0, v22

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 462
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "write fail, sdcard: "

    aput-object v24, v22, v23

    const/16 v23, 0x1

    aput-object v10, v22, v23

    invoke-static/range {v22 .. v22}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 463
    .local v16, "msg":Ljava/lang/String;
    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->SdCardError:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v23, Ljava/lang/Exception;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v23}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 464
    const-string/jumbo v22, "writeAttachmentStreamContent: error: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    const/16 v22, 0x0

    .line 581
    .end local v16    # "msg":Ljava/lang/String;
    :goto_0
    return v22

    .line 469
    :cond_0
    invoke-direct/range {p0 .. p0}, Ltu;->k()Ljava/lang/String;

    move-result-object v15

    .line 470
    .local v15, "mDirName":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 471
    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    new-instance v23, Ljava/io/FileNotFoundException;

    const-string/jumbo v24, "null savePath, no sdcard ?"

    invoke-direct/range {v23 .. v24}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v23}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 472
    const-string/jumbo v22, "writeAttachmentStreamContent:  sdcard not found, savePath is empty, error: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    const/16 v22, 0x0

    goto :goto_0

    .line 477
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Ltu;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 478
    .local v6, "dir":Ljava/io/File;
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Ltu;->a(Z)Ljava/lang/String;

    move-result-object v11

    .line 479
    .local v11, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->j:Ljava/io/File;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    .line 480
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ltu;->j:Ljava/io/File;

    .line 483
    :cond_2
    const/4 v13, 0x0

    .line 485
    .local v13, "isAppend":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->j:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->j:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    cmp-long v22, v22, v24

    if-nez v22, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->j:Ljava/io/File;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 488
    new-instance v22, Ljava/io/File;

    move-object/from16 v0, v22

    invoke-direct {v0, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ltu;->j:Ljava/io/File;

    .line 489
    const-string/jumbo v22, "writeAttachmentStreamContent: downloadedSize: 0, delete and create a new file "

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    :goto_1
    const/4 v13, 0x1

    .line 498
    :goto_2
    const/4 v12, 0x0

    .line 499
    .local v12, "ins":Ljava/io/InputStream;
    const/16 v17, 0x0

    .line 500
    .local v17, "os":Ljava/io/OutputStream;
    const/16 v19, 0x0

    .line 503
    .local v19, "totalRead":I
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 504
    new-instance v18, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->j:Ljava/io/File;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .end local v17    # "os":Ljava/io/OutputStream;
    .local v18, "os":Ljava/io/OutputStream;
    const/16 v22, 0x1000

    :try_start_1
    move/from16 v0, v22

    new-array v4, v0, [B

    .line 508
    .local v4, "buffer":[B
    const-wide/16 v20, 0x0

    .line 511
    .local v20, "updateSize":J
    :cond_3
    :goto_3
    const/16 v22, 0x0

    const/16 v23, 0x1000

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v12, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    .line 512
    .local v5, "bytesRead":I
    add-int v19, v19, v5

    .line 515
    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v5, v0, :cond_7

    .line 516
    const-string/jumbo v22, "writeAttachmentStreamContent: Attachment load reached EOF, total download size: %d"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 550
    :goto_4
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_4

    .line 551
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v22

    add-long v8, v22, v20

    .line 552
    .local v8, "downloadedSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateDownloadedSize(JJ)Z

    .line 555
    .end local v8    # "downloadedSize":J
    :cond_4
    invoke-virtual/range {p0 .. p0}, Ltu;->h()Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v22

    if-eqz v22, :cond_a

    .line 556
    const/4 v14, 0x0

    .line 570
    :goto_5
    invoke-static/range {v18 .. v18}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    move-object/from16 v17, v18

    .line 574
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v18    # "os":Ljava/io/OutputStream;
    .end local v20    # "updateSize":J
    .restart local v17    # "os":Ljava/io/OutputStream;
    :goto_6
    :try_start_2
    invoke-static {v12}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 579
    :goto_7
    const-string/jumbo v22, "writeAttachmentStreamContent: isSuccess: %b, totalRead: %d, fileLength: %d, downloadedSize: %d"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 580
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->j:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    .line 579
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v22, v14

    .line 581
    goto/16 :goto_0

    .line 491
    .end local v12    # "ins":Ljava/io/InputStream;
    .end local v17    # "os":Ljava/io/OutputStream;
    .end local v19    # "totalRead":I
    :cond_5
    const-string/jumbo v22, "writeAttachmentStreamContent: append content into exist file: %s"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->j:Ljava/io/File;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 495
    :cond_6
    const-string/jumbo v22, "writeAttachmentStreamContent: create a new attachment file "

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 521
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v12    # "ins":Ljava/io/InputStream;
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v19    # "totalRead":I
    .restart local v20    # "updateSize":J
    :cond_7
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Ltu;->h()Z

    move-result v22

    if-eqz v22, :cond_9

    .line 522
    const-string/jumbo v22, "writeAttachmentStreamContent: canceled"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 523
    const-wide/16 v22, 0x0

    cmp-long v22, v20, v22

    if-lez v22, :cond_8

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v22

    add-long v8, v22, v20

    .line 525
    .restart local v8    # "downloadedSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateDownloadedSize(JJ)Z

    .line 526
    const-wide/16 v20, 0x0

    .line 528
    .end local v8    # "downloadedSize":J
    :cond_8
    invoke-direct/range {p0 .. p0}, Ltu;->n()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_4

    .line 561
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v20    # "updateSize":J
    :catch_0
    move-exception v7

    move-object/from16 v17, v18

    .line 562
    .end local v18    # "os":Ljava/io/OutputStream;
    .local v7, "e":Ljava/io/FileNotFoundException;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :goto_8
    :try_start_4
    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 563
    const-string/jumbo v22, "writeAttachmentStreamContent: FileNotFoundException: "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 570
    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_6

    .line 533
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v20    # "updateSize":J
    :cond_9
    const/16 v22, 0x0

    :try_start_5
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v4, v1, v5}, Ljava/io/OutputStream;->write([BII)V

    .line 536
    int-to-long v0, v5

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v22

    int-to-long v0, v5

    move-wide/from16 v24, v0

    add-long v8, v22, v24

    .line 538
    .restart local v8    # "downloadedSize":J
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    .line 539
    const-string/jumbo v22, "writeAttachmentStreamContent: bytesRead: %d, totalRead: %d, updateSize: %d, downloadedSize: %d"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    .line 540
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    .line 539
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 542
    const-wide/32 v22, 0xa0000

    cmp-long v22, v20, v22

    if-ltz v22, :cond_3

    .line 543
    const-string/jumbo v22, "writeAttachmentStreamContent: notify progress"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    const-wide/16 v20, 0x0

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v24

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-interface {v0, v1, v2, v8, v9}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateDownloadedSize(JJ)Z

    .line 2595
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v22, v0

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->d:Lyc;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lyc;->g:Ljava/lang/Object;

    .line 2597
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->d:Lyc;

    move-object/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lyc;->c:I

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->e:Lya;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->d:Lyc;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Lya;->a(Lyc;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_3

    .line 565
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v8    # "downloadedSize":J
    .end local v20    # "updateSize":J
    :catch_1
    move-exception v7

    move-object/from16 v17, v18

    .line 566
    .end local v18    # "os":Ljava/io/OutputStream;
    .local v7, "e":Ljava/io/IOException;
    .restart local v17    # "os":Ljava/io/OutputStream;
    :goto_9
    :try_start_6
    sget-object v22, Lcom/alibaba/alimei/framework/SDKError;->IOError:Lcom/alibaba/alimei/framework/SDKError;

    move-object/from16 v0, v22

    invoke-static {v0, v7}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;Ljava/lang/Throwable;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 567
    const-string/jumbo v22, "writeAttachmentStreamContent: IOException: "

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 570
    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_6

    .line 558
    .end local v7    # "e":Ljava/io/IOException;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "bytesRead":I
    .restart local v18    # "os":Ljava/io/OutputStream;
    .restart local v20    # "updateSize":J
    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_5

    .line 570
    .end local v4    # "buffer":[B
    .end local v5    # "bytesRead":I
    .end local v18    # "os":Ljava/io/OutputStream;
    .end local v20    # "updateSize":J
    .restart local v17    # "os":Ljava/io/OutputStream;
    :catchall_0
    move-exception v22

    :goto_a
    invoke-static/range {v17 .. v17}, Lcom/alibaba/alimei/restfulapi/support/IOUtils;->close(Ljava/io/Closeable;)V

    throw v22

    .line 575
    :catch_2
    move-exception v7

    .line 576
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    .line 570
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v17    # "os":Ljava/io/OutputStream;
    .restart local v18    # "os":Ljava/io/OutputStream;
    :catchall_1
    move-exception v22

    move-object/from16 v17, v18

    .end local v18    # "os":Ljava/io/OutputStream;
    .restart local v17    # "os":Ljava/io/OutputStream;
    goto :goto_a

    .line 565
    :catch_3
    move-exception v7

    goto :goto_9

    .line 561
    :catch_4
    move-exception v7

    goto/16 :goto_8
.end method

.method static synthetic a(Ltu;Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;)Z
    .locals 1
    .param p0, "x0"    # Ltu;
    .param p1, "x1"    # Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Ltu;->a(Lcom/alibaba/alimei/restfulapi/response/data/AttachmentDownloadResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Ltu;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 1
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    iget-object v0, p0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-nez v0, :cond_0

    .line 663
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[Alimei: DownloadDentryTask]: "

    aput-object v1, v0, v2

    aput-object p1, v0, v3

    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[Alimei: DownloadDentryTask: ids: "

    aput-object v1, v0, v2

    iget-object v1, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 666
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "-"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 667
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "-"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 668
    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "]: "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p1, v0, v1

    .line 665
    invoke-static {v0}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private varargs b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 643
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xc8

    invoke-static {v1}, Lyh;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-direct {p0, p1}, Ltu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3049
    const-string/jumbo v2, "cspace_download"

    .line 4027
    invoke-static {}, Lyh;->a()Lyj;

    move-result-object v3

    .line 4028
    if-eqz v3, :cond_0

    .line 4029
    const/16 v4, 0xc8

    invoke-interface {v3, v4, v2, v1, p2}, Lyj;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 646
    :catch_0
    move-exception v0

    .line 647
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Ltu;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Ltu;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Ltu;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    iget-object v0, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method static synthetic d(Ltu;)V
    .locals 0
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    invoke-virtual {p0}, Ltu;->a()V

    return-void
.end method

.method static synthetic e(Ltu;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    iget-object v0, p0, Ltu;->j:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Ltu;)Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    .locals 1
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    iget-object v0, p0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    return-object v0
.end method

.method private f()Z
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x3

    .line 96
    iget-object v4, p0, Ltu;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 97
    .local v1, "redoCounterValue":I
    if-gt v1, v7, :cond_0

    move v0, v2

    .line 98
    .local v0, "isRedo":Z
    :goto_0
    const-string/jumbo v4, "isRedo: isRedo: %b, redoCounterValue: %d, max: %d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    const/4 v2, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-direct {p0, v4, v5}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return v0

    .end local v0    # "isRedo":Z
    :cond_0
    move v0, v3

    .line 97
    goto :goto_0
.end method

.method private g()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 156
    iget-object v6, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-lez v6, :cond_2

    .line 157
    invoke-direct {p0}, Ltu;->k()Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "mDirName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 159
    const-string/jumbo v6, "getStartOffset: getSavePath() return null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {p0, v6, v7}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iget-object v6, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    .line 177
    .end local v5    # "mDirName":Ljava/lang/String;
    :goto_0
    return-wide v2

    .line 164
    .restart local v5    # "mDirName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v5}, Ltu;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 165
    .local v1, "dir":Ljava/io/File;
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Ltu;->a(Z)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, "fileName":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 167
    .local v0, "dentryFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 169
    .local v2, "downloadSize":J
    iget-object v6, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    goto :goto_0

    .line 172
    .end local v2    # "downloadSize":J
    :cond_1
    iget-object v6, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    goto :goto_0

    .line 176
    .end local v0    # "dentryFile":Ljava/io/File;
    .end local v1    # "dir":Ljava/io/File;
    .end local v4    # "fileName":Ljava/lang/String;
    .end local v5    # "mDirName":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6, v2, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    goto :goto_0
.end method

.method static synthetic g(Ltu;)V
    .locals 0
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    invoke-direct {p0}, Ltu;->o()V

    return-void
.end method

.method static synthetic h(Ltu;)V
    .locals 0
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    invoke-direct {p0}, Ltu;->m()V

    return-void
.end method

.method static synthetic i(Ltu;)Z
    .locals 1
    .param p0, "x0"    # Ltu;

    .prologue
    .line 49
    invoke-direct {p0}, Ltu;->f()Z

    move-result v0

    return v0
.end method

.method private k()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 218
    invoke-direct {p0}, Ltu;->l()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "mounted"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 241
    :goto_0
    return-object v2

    .line 221
    :cond_0
    iget-object v4, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v4, :cond_3

    iget-object v4, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->isCrypt()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 222
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 223
    .local v0, "file":Ljava/io/File;
    if-nez v0, :cond_1

    .line 224
    const-string/jumbo v4, "getSavePath: getFilesDir() return null"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 229
    .local v1, "mkdirs":Z
    if-nez v1, :cond_2

    .line 230
    const-string/jumbo v4, "getSavePath: file.mkdirs() return false"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {p0, v4, v5}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    .end local v1    # "mkdirs":Z
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 235
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .local v3, "sbPath":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {}, Lafv;->c()Lafy;

    move-result-object v4

    invoke-virtual {v4}, Lafy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "savePath":Ljava/lang/String;
    const-string/jumbo v4, "getSavePath: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private l()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "externalStorageState":Ljava/lang/String;
    const-string/jumbo v1, "mounted"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 247
    const-string/jumbo v1, "getExternalStorageState: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_0
    return-object v0
.end method

.method private declared-synchronized m()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_0

    .line 317
    iget-object v3, p0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    .line 318
    .local v0, "oldCount":J
    iget-object v3, p0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 319
    const-string/jumbo v3, "handleCountDown: %d -> %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    const/4 v3, 0x0

    iput-object v3, p0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    .end local v0    # "oldCount":J
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 322
    :catch_0
    move-exception v2

    .line 323
    .local v2, "throwable":Ljava/lang/Throwable;
    :try_start_1
    const-string/jumbo v3, "handleCountDown: error: %s, cause: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-direct {p0, v3, v4}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 316
    .end local v2    # "throwable":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private n()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 605
    iget-object v0, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 606
    iget-object v0, p0, Ltu;->d:Lyc;

    iget-object v1, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lyc;->g:Ljava/lang/Object;

    .line 607
    iget-object v0, p0, Ltu;->d:Lyc;

    iput v2, v0, Lyc;->c:I

    .line 608
    iget-object v0, p0, Ltu;->e:Lya;

    iget-object v1, p0, Ltu;->d:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 609
    const-string/jumbo v0, "cancel task: downloadedSize: %d"

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 610
    return-void
.end method

.method private o()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 614
    const-string/jumbo v1, "notifyDataChange: error: %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v0, p0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-nez v0, :cond_0

    const-string/jumbo v0, "null"

    :goto_0
    aput-object v0, v2, v3

    invoke-virtual {p0, v1, v2}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_2

    .line 617
    iget-object v0, p0, Ltu;->d:Lyc;

    const/4 v1, 0x2

    iput v1, v0, Lyc;->c:I

    .line 618
    iget-object v0, p0, Ltu;->d:Lyc;

    iget-object v1, p0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 619
    iget-object v0, p0, Ltu;->d:Lyc;

    iget-object v1, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lyc;->g:Ljava/lang/Object;

    .line 622
    invoke-virtual {p0}, Ltu;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 623
    iget-object v0, p0, Ltu;->e:Lya;

    iget-object v1, p0, Ltu;->d:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 634
    :goto_1
    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Ltu;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-virtual {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 625
    :cond_1
    const-string/jumbo v0, "notifyDataChange: canceled"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 629
    :cond_2
    iget-object v0, p0, Ltu;->d:Lyc;

    iput v4, v0, Lyc;->c:I

    .line 630
    iget-object v0, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 631
    iget-object v0, p0, Ltu;->d:Lyc;

    iget-object v1, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lyc;->g:Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Ltu;->e:Lya;

    iget-object v1, p0, Ltu;->d:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 23

    .prologue
    .line 256
    const-string/jumbo v3, "executeDownloadNextChunked: enter"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->i:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    if-nez v3, :cond_0

    .line 1329
    new-instance v3, Ltu$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Ltu$1;-><init>(Ltu;)V

    .line 258
    move-object/from16 v0, p0

    iput-object v3, v0, Ltu;->i:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 261
    :cond_0
    invoke-direct/range {p0 .. p0}, Ltu;->g()J

    move-result-wide v8

    .line 2183
    .local v8, "startOffset":J
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    const-wide/32 v6, 0x3c00000

    add-long v10, v4, v6

    .line 2185
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    cmp-long v3, v10, v4

    if-gez v3, :cond_1

    .line 263
    .local v10, "nextEnd":J
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v20

    .line 264
    .local v20, "size":J
    const-string/jumbo v3, "executeDownloadNextChunked: startOffset: %d, nextEnd: %d, size: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    cmp-long v3, v8, v10

    if-nez v3, :cond_3

    cmp-long v3, v8, v20

    if-nez v3, :cond_3

    .line 268
    const-string/jumbo v3, "executeDownloadNextChunked: already downloaded by file size"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-direct/range {p0 .. p0}, Ltu;->k()Ljava/lang/String;

    move-result-object v18

    .line 270
    .local v18, "dirName":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 271
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ltu;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    .line 272
    .local v17, "dir":Ljava/io/File;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Ltu;->a(Z)Ljava/lang/String;

    move-result-object v19

    .line 273
    .local v19, "fileName":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 274
    .local v2, "dentryFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v13

    .line 275
    .local v13, "dentryFileExists":Z
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v14

    .line 277
    .local v14, "dentryFileLength":J
    if-eqz v13, :cond_2

    cmp-long v3, v14, v20

    if-nez v3, :cond_2

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setLocalUrl(Ljava/lang/String;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateLocalUrl(JLjava/lang/String;)Z

    .line 280
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-object/from16 v0, p0

    iget-object v4, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v4

    invoke-interface {v3, v4, v5, v14, v15}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->updateDownloadedSize(JJ)Z

    .line 282
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v16, "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-interface {v3, v0, v4}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->notifyDataChanged(Ljava/util/List;I)V

    .line 285
    invoke-direct/range {p0 .. p0}, Ltu;->o()V

    .line 312
    .end local v2    # "dentryFile":Ljava/io/File;
    .end local v13    # "dentryFileExists":Z
    .end local v14    # "dentryFileLength":J
    .end local v16    # "dentryModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/cspace/model/DentryModel;>;"
    .end local v17    # "dir":Ljava/io/File;
    .end local v18    # "dirName":Ljava/lang/String;
    .end local v19    # "fileName":Ljava/lang/String;
    :goto_1
    return-void

    .line 2189
    .end local v10    # "nextEnd":J
    .end local v20    # "size":J
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v10

    goto/16 :goto_0

    .line 289
    .restart local v2    # "dentryFile":Ljava/io/File;
    .restart local v10    # "nextEnd":J
    .restart local v13    # "dentryFileExists":Z
    .restart local v14    # "dentryFileLength":J
    .restart local v17    # "dir":Ljava/io/File;
    .restart local v18    # "dirName":Ljava/lang/String;
    .restart local v19    # "fileName":Ljava/lang/String;
    .restart local v20    # "size":J
    :cond_2
    const-string/jumbo v3, "executeDownloadNextChunked: already downloaded, dentryFileExists: %b, dentryFileLength: %d, size: %d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 290
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 289
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    .end local v2    # "dentryFile":Ljava/io/File;
    .end local v13    # "dentryFileExists":Z
    .end local v14    # "dentryFileLength":J
    .end local v17    # "dir":Ljava/io/File;
    .end local v18    # "dirName":Ljava/lang/String;
    .end local v19    # "fileName":Ljava/lang/String;
    :cond_3
    :goto_2
    const-string/jumbo v3, "executeDownloadNextChunked: call downloadAttachmentChunked"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    move-result-object v3

    const-string/jumbo v4, "file"

    move-object/from16 v0, p0

    iget-object v5, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 300
    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getPath()Ljava/lang/String;

    move-result-object v6

    :goto_3
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Ltu;->i:Lcom/alibaba/alimei/restfulapi/service/RpcCallback;

    .line 299
    invoke-interface/range {v3 .. v12}, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;->downloadAttachmentChunked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Ltu;->k:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 303
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    if-nez v3, :cond_4

    .line 304
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    .line 305
    const-string/jumbo v3, "executeDownloadNextChunked: new mLatchLocker: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Ltu;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Ltu;->l:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 309
    :catch_0
    move-exception v22

    .line 310
    .local v22, "throwable":Ljava/lang/Throwable;
    const-string/jumbo v3, "executeDownloadNextChunked: Wait attachment download, error: %s, cause: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 294
    .end local v22    # "throwable":Ljava/lang/Throwable;
    .restart local v18    # "dirName":Ljava/lang/String;
    :cond_5
    const-string/jumbo v3, "executeDownloadNextChunked: getSavePath() return null"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 300
    .end local v18    # "dirName":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v6}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getServerId()Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 653
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x64

    invoke-static {v1}, Lyh;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 654
    invoke-direct {p0, p1}, Ltu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4053
    const-string/jumbo v2, "cspace_download"

    .line 5034
    invoke-static {}, Lyh;->a()Lyj;

    move-result-object v3

    .line 5035
    if-eqz v3, :cond_0

    .line 5036
    const/16 v4, 0x64

    invoke-interface {v3, v4, v2, v1, p2}, Lyj;->a(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :cond_0
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 657
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    const-string/jumbo v0, "DownloadDentryTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 105
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v2

    iput-object v2, p0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    .line 108
    iget-object v2, p0, Ltu;->f:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    iget-object v3, p0, Ltu;->a:Ljava/lang/String;

    iget-object v4, p0, Ltu;->g:Ljava/lang/String;

    iget-object v5, p0, Ltu;->h:Ljava/lang/String;

    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;->getDentryModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 110
    .local v0, "dbModel":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v2

    iget-object v4, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setDownloadedSize(J)V

    .line 113
    const-string/jumbo v2, "update downloadedSize with database %d -> %d"

    new-array v3, v8, [Ljava/lang/Object;

    iget-object v4, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v2, v3}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_0
    new-instance v2, Lyc;

    const-string/jumbo v3, "cspace_dentry_download"

    iget-object v4, p0, Ltu;->a:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v7}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v2, p0, Ltu;->d:Lyc;

    .line 119
    iget-object v2, p0, Ltu;->d:Lyc;

    iget-object v3, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v3, v2, Lyc;->g:Ljava/lang/Object;

    .line 121
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v2

    iput-object v2, p0, Ltu;->e:Lya;

    .line 124
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v2

    iget-object v3, p0, Ltu;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v1

    .line 125
    .local v1, "mAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v1, :cond_1

    .line 126
    iget-object v2, p0, Ltu;->d:Lyc;

    iput v8, v2, Lyc;->c:I

    .line 127
    iget-object v2, p0, Ltu;->d:Lyc;

    sget-object v3, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v3

    iput-object v3, v2, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 128
    iget-object v2, p0, Ltu;->e:Lya;

    iget-object v3, p0, Ltu;->d:Lyc;

    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    .line 129
    const-string/jumbo v2, "not exist account: %s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Ltu;->a:Ljava/lang/String;

    aput-object v4, v3, v7

    invoke-direct {p0, v2, v3}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    :goto_0
    return v6

    .line 134
    :cond_1
    iget-object v2, p0, Ltu;->e:Lya;

    iget-object v3, p0, Ltu;->d:Lyc;

    invoke-interface {v2, v3}, Lya;->a(Lyc;)V

    .line 139
    invoke-virtual {p0}, Ltu;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 140
    const-string/jumbo v2, "execute: canceled"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0}, Ltu;->n()V

    goto :goto_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Ltu;->a()V

    goto :goto_0
.end method

.method protected final e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 586
    iget-object v0, p0, Ltu;->k:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Ltu;->k:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->cancle()V

    .line 589
    :cond_0
    invoke-super {p0}, Lyq;->e()V

    .line 590
    const-string/jumbo v0, "handleTaskWhenCancel: downloadedSize: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Ltu;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v3}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getDownloadedSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Ltu;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    return-void
.end method
