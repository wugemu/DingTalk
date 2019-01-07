.class public Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;
.super Ljava/lang/Object;
.source "MailOperationUploadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MailOperationUploadManager"

.field private static volatile sInstance:Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->sInstance:Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->sInstance:Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    invoke-direct {v0}, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->sInstance:Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;->sInstance:Lcom/alibaba/alimei/mail/operation/MailOperationUploadManager;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public upload(Lcom/alibaba/alimei/mail/operation/OperationData;Ljava/lang/String;)V
    .locals 9
    .param p1, "data"    # Lcom/alibaba/alimei/mail/operation/OperationData;
    .param p2, "resultJson"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 37
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v6

    const-string/jumbo v7, "f_cmail_upload_ops_enable"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v3

    .line 38
    .local v3, "isUploadEnable":Z
    if-eqz v3, :cond_1

    .line 39
    new-instance v4, Labc;

    invoke-direct {v4}, Labc;-><init>()V

    .line 40
    .local v4, "param":Labc;
    if-eqz p1, :cond_0

    .line 41
    iget-object v6, p1, Lcom/alibaba/alimei/mail/operation/OperationData;->fp:Ljava/lang/String;

    iput-object v6, v4, Labc;->a:Ljava/lang/String;

    .line 43
    :cond_0
    iput-object p2, v4, Labc;->b:Ljava/lang/String;

    .line 46
    :try_start_0
    invoke-static {}, Lzh;->b()Ljava/lang/String;

    move-result-object v6

    .line 2048
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v1, v5

    .line 47
    .local v1, "encryData":[B
    :goto_0
    new-instance v2, Ljava/lang/String;

    const-string/jumbo v6, "ISO_8859_1"

    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v6

    invoke-direct {v2, v1, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 48
    .local v2, "encryptStr":Ljava/lang/String;
    const-string/jumbo v6, "MailOperationUploadManager"

    invoke-static {v6, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "encryData":[B
    .end local v2    # "encryptStr":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lro;->a()Lro;

    move-result-object v6

    .line 3044
    const-string/jumbo v7, "MailRPC"

    const-string/jumbo v8, "uploadOperationInfo"

    invoke-static {v7, v8}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3045
    new-instance v7, Lro$29;

    invoke-direct {v7, v6, v5}, Lro$29;-><init>(Lro;Lcma;)V

    .line 3062
    iget-object v5, v6, Lro;->a:Lcom/alibaba/alimei/idl/service/CMailIService;

    invoke-interface {v5, v4, v7}, Lcom/alibaba/alimei/idl/service/CMailIService;->uploadClientInfo(Labc;Liyv;)V

    .line 55
    .end local v4    # "param":Labc;
    :cond_1
    return-void

    .line 2051
    .restart local v4    # "param":Labc;
    :cond_2
    :try_start_1
    invoke-static {v6}, Lzf;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2052
    new-instance v7, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v8, "ISO_8859_1"

    invoke-static {v8}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 2053
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2054
    invoke-static {v7, v8, v6}, Lzf;->a(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
