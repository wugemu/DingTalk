.class public final Lue;
.super Lyq;
.source "UploadDentryTask.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field private c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

.field private d:J

.field private e:Lyc;

.field private f:Lya;

.field private g:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

.field private h:Ljava/io/File;

.field private i:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

.field private j:Ljava/util/concurrent/CountDownLatch;

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/alimei/cspace/model/DentryModel;)V
    .locals 2
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dentryModel"    # Lcom/alibaba/alimei/cspace/model/DentryModel;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Lyq;-><init>()V

    .line 47
    iput-object v0, p0, Lue;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 61
    iput-object v0, p0, Lue;->j:Ljava/util/concurrent/CountDownLatch;

    .line 66
    iput-object p1, p0, Lue;->a:Ljava/lang/String;

    .line 67
    iput-object p2, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lue;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    return-void
.end method

.method static synthetic a(Lue;J)J
    .locals 1
    .param p0, "x0"    # Lue;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lue;->d:J

    return-wide p1
.end method

.method static synthetic a(Lue;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 1
    .param p0, "x0"    # Lue;

    .prologue
    .line 38
    iget-object v0, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    return-object v0
.end method

.method static synthetic a(Lue;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;
    .locals 0
    .param p0, "x0"    # Lue;
    .param p1, "x1"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 38
    iput-object p1, p0, Lue;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    return-object p1
.end method

.method static synthetic b(Lue;)J
    .locals 2
    .param p0, "x0"    # Lue;

    .prologue
    .line 38
    iget-wide v0, p0, Lue;->d:J

    return-wide v0
.end method

.method static synthetic c(Lue;)Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;
    .locals 1
    .param p0, "x0"    # Lue;

    .prologue
    .line 38
    iget-object v0, p0, Lue;->g:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    return-object v0
.end method

.method static synthetic d(Lue;)V
    .locals 0
    .param p0, "x0"    # Lue;

    .prologue
    .line 38
    invoke-direct {p0}, Lue;->f()V

    return-void
.end method

.method static synthetic e(Lue;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lue;

    .prologue
    .line 38
    iget-object v0, p0, Lue;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 255
    iget-object v0, p0, Lue;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lue;->e:Lyc;

    const/4 v1, 0x2

    iput v1, v0, Lyc;->c:I

    .line 257
    iget-object v0, p0, Lue;->e:Lyc;

    iget-object v1, p0, Lue;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    iput-object v1, v0, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 258
    iget-object v0, p0, Lue;->e:Lyc;

    iget-object v1, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lyc;->g:Ljava/lang/Object;

    .line 259
    iget-object v0, p0, Lue;->f:Lya;

    iget-object v1, p0, Lue;->e:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    .line 265
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lue;->e:Lyc;

    const/4 v1, 0x1

    iput v1, v0, Lyc;->c:I

    .line 262
    iget-object v0, p0, Lue;->e:Lyc;

    iget-object v1, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v1, v0, Lyc;->g:Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lue;->f:Lya;

    iget-object v1, p0, Lue;->e:Lyc;

    invoke-interface {v0, v1}, Lya;->a(Lyc;)V

    goto :goto_0
.end method

.method static synthetic f(Lue;)V
    .locals 1
    .param p0, "x0"    # Lue;

    .prologue
    .line 38
    .line 1236
    iget-object v0, p0, Lue;->j:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1237
    iget-object v0, p0, Lue;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1238
    const/4 v0, 0x0

    iput-object v0, p0, Lue;->j:Ljava/util/concurrent/CountDownLatch;

    .line 38
    :cond_0
    return-void
.end method

.method static synthetic g(Lue;)Z
    .locals 2
    .param p0, "x0"    # Lue;

    .prologue
    .line 38
    .line 2072
    iget-object v0, p0, Lue;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method


# virtual methods
.method a()J
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const-wide/32 v6, 0x7d000

    .line 105
    iget-object v2, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v4, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 106
    iget-object v2, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    add-long v0, v2, v6

    .line 110
    .local v0, "endLength":J
    :goto_0
    return-wide v0

    .line 108
    .end local v0    # "endLength":J
    :cond_0
    iget-object v2, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSize()J

    move-result-wide v0

    .restart local v0    # "endLength":J
    goto :goto_0
.end method

.method a(J)V
    .locals 9
    .param p1, "endLength"    # J

    .prologue
    const/4 v1, 0x1

    .line 115
    iget-object v0, p0, Lue;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/restfulapi/AlimeiResfulApi;->getAttachmentService(Ljava/lang/String;Z)Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;

    move-result-object v0

    iget-object v1, p0, Lue;->h:Ljava/io/File;

    iget-object v2, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadedSize()J

    move-result-wide v2

    iget-object v4, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v4}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getUploadId()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lue$1;

    invoke-direct {v7, p0}, Lue$1;-><init>(Lue;)V

    move-wide v4, p1

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/restfulapi/service/RpcAttachmentService;->uploadAttachment(Ljava/io/File;JJLjava/lang/String;Lcom/alibaba/alimei/restfulapi/service/RpcCallback;)Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    move-result-object v0

    iput-object v0, p0, Lue;->i:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    .line 225
    :try_start_0
    iget-object v0, p0, Lue;->j:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lue;->j:Ljava/util/concurrent/CountDownLatch;

    .line 229
    :cond_0
    iget-object v0, p0, Lue;->j:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v8

    .line 231
    .local v8, "tr":Ljava/lang/Throwable;
    const-string/jumbo v0, "Wait attachment upload finished error--->>"

    invoke-static {v0, v8}, Lzb;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected final b_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    const-string/jumbo v0, "UploadDentryTask"

    return-object v0
.end method

.method protected final c()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 77
    new-instance v1, Lyc;

    const-string/jumbo v2, "cspace_dentry_upload"

    iget-object v3, p0, Lue;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lyc;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v1, p0, Lue;->e:Lyc;

    .line 78
    invoke-static {}, Lxn;->j()Lya;

    move-result-object v1

    iput-object v1, p0, Lue;->f:Lya;

    .line 79
    iget-object v1, p0, Lue;->f:Lya;

    iget-object v2, p0, Lue;->e:Lyc;

    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 81
    invoke-static {}, Lxn;->g()Lxz;

    move-result-object v1

    iget-object v2, p0, Lue;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lxz;->b(Ljava/lang/String;)Lcom/alibaba/alimei/framework/model/UserAccountModel;

    move-result-object v0

    .line 82
    .local v0, "mAccount":Lcom/alibaba/alimei/framework/model/UserAccountModel;
    if-nez v0, :cond_0

    .line 83
    iget-object v1, p0, Lue;->e:Lyc;

    sget-object v2, Lcom/alibaba/alimei/framework/SDKError;->AccountNotLogin:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v2}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v2

    iput-object v2, v1, Lyc;->h:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 84
    iget-object v1, p0, Lue;->f:Lya;

    iget-object v2, p0, Lue;->e:Lyc;

    invoke-interface {v1, v2}, Lya;->a(Lyc;)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "not exist account: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lue;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lzb;->e(Ljava/lang/String;)I

    .line 100
    :goto_0
    return v5

    .line 89
    :cond_0
    invoke-static {}, Lcom/alibaba/alimei/cspace/db/datasource/DatasourceCenter;->getDentryDatasouce()Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    move-result-object v1

    iput-object v1, p0, Lue;->g:Lcom/alibaba/alimei/cspace/db/datasource/IDentryDatasource;

    .line 91
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v2}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getLocalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lue;->h:Ljava/io/File;

    .line 93
    iget-object v1, p0, Lue;->h:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    sget-object v1, Lcom/alibaba/alimei/framework/SDKError;->DentrySourceNotFound:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v1

    iput-object v1, p0, Lue;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 95
    invoke-direct {p0}, Lue;->f()V

    goto :goto_0

    .line 99
    :cond_1
    invoke-virtual {p0}, Lue;->a()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lue;->a(J)V

    goto :goto_0
.end method

.method protected final e()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar5;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar5;->b(I)V

    .prologue
    .line 244
    iget-object v0, p0, Lue;->i:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lue;->i:Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;

    invoke-interface {v0}, Lcom/alibaba/alimei/restfulapi/service/RpcServiceTicket;->cancle()V

    .line 247
    :cond_0
    invoke-super {p0}, Lyq;->e()V

    .line 248
    iget-object v0, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->setUploadStatus(I)V

    .line 249
    sget-object v0, Lcom/alibaba/alimei/framework/SDKError;->DentryFileUploadError:Lcom/alibaba/alimei/framework/SDKError;

    invoke-static {v0}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->buildSdkException(Lcom/alibaba/alimei/framework/SDKError;)Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    move-result-object v0

    iput-object v0, p0, Lue;->c:Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "upload size=cancel+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lue;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lzb;->d(Ljava/lang/String;)I

    .line 252
    return-void
.end method
