.class public Ldlc;
.super Ljava/lang/Object;
.source "EncryptTools.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ldlc;


# instance fields
.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ldla;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Ldlc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ldlc;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ldlc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    iput v1, p0, Ldlc;->d:I

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldlc;->e:Ljava/lang/Boolean;

    .line 72
    return-void
.end method

.method static synthetic a(Ldlc;I)I
    .locals 0
    .param p0, "x0"    # Ldlc;
    .param p1, "x1"    # I

    .prologue
    .line 59
    iput p1, p0, Ldlc;->d:I

    return p1
.end method

.method private static a(Ljava/util/List;)Ldla;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldla;",
            ">;)",
            "Ldla;"
        }
    .end annotation

    .prologue
    .line 588
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    const/4 v1, 0x0

    .line 589
    .local v1, "lastestEncryptKey":Ldla;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldla;

    .line 590
    .local v0, "encrpyKeyObject":Ldla;
    if-nez v1, :cond_1

    .line 591
    move-object v1, v0

    goto :goto_0

    .line 593
    :cond_1
    iget-wide v4, v0, Ldla;->d:J

    iget-wide v6, v1, Ldla;->d:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 594
    move-object v1, v0

    goto :goto_0

    .line 598
    .end local v0    # "encrpyKeyObject":Ldla;
    :cond_2
    return-object v1
.end method

.method public static declared-synchronized a()Ldlc;
    .locals 2

    .prologue
    .line 75
    const-class v1, Ldlc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ldlc;->b:Ldlc;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ldlc;

    invoke-direct {v0}, Ldlc;-><init>()V

    sput-object v0, Ldlc;->b:Ldlc;

    .line 78
    :cond_0
    sget-object v0, Ldlc;->b:Ldlc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Ldlc;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Ldlc;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 59
    iput-object p1, p0, Ldlc;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Ldlc;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Ldlc;

    .prologue
    .line 59
    iget-object v0, p0, Ldlc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic a(Ldlc;Ljava/util/List;)V
    .locals 10
    .param p0, "x0"    # Ldlc;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 59
    .line 8179
    if-eqz p1, :cond_2

    .line 8180
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldla;

    .line 8181
    if-eqz v0, :cond_0

    .line 8182
    iget-object v1, p0, Ldlc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Ldla;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 8183
    if-nez v1, :cond_4

    .line 8184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v1

    .line 8186
    :goto_1
    const/4 v3, 0x0

    .line 8187
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldla;

    .line 8188
    if-eqz v1, :cond_1

    iget-object v6, v1, Ldla;->a:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v1, Ldla;->a:Ljava/lang/String;

    iget-object v7, v0, Ldla;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-wide v6, v1, Ldla;->d:J

    iget-wide v8, v0, Ldla;->d:J

    cmp-long v1, v6, v8

    if-nez v1, :cond_1

    .line 8189
    const/4 v1, 0x1

    .line 8193
    :goto_2
    if-nez v1, :cond_0

    .line 8194
    const/16 v1, 0x10

    const-string/jumbo v3, "00011online"

    iget-object v5, v0, Ldla;->b:Ljava/lang/String;

    invoke-static {v1, v3, v5}, Ldko;->a(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Ldla;->c:[B

    .line 8195
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8196
    iget-object v1, p0, Ldlc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, v0, Ldla;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 59
    :cond_2
    return-void

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move-object v2, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 204
    iget-object v1, p0, Ldlc;->e:Ljava/lang/Boolean;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Ldlc;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    monitor-exit v1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Ldlc;->e:Ljava/lang/Boolean;

    .line 209
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    const-string/jumbo v0, "crypto"

    sget-object v1, Ldlc;->a:Ljava/lang/String;

    const-string/jumbo v2, "get key start"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v0

    .line 1083
    iget-object v1, v0, Ldyn;->b:Ldxp;

    if-nez v1, :cond_2

    .line 1084
    new-instance v1, Ldxp;

    invoke-direct {v1}, Ldxp;-><init>()V

    iput-object v1, v0, Ldyn;->b:Ldxp;

    .line 1086
    :cond_2
    iget-object v0, v0, Ldyn;->b:Ldxp;

    .line 211
    new-instance v1, Ldlc$3;

    invoke-direct {v1, p0, p1}, Ldlc$3;-><init>(Ldlc;Ljava/lang/String;)V

    .line 2036
    new-instance v2, Ldxp$1;

    invoke-direct {v2, v0, v1}, Ldxp$1;-><init>(Ldxp;Lcma;)V

    .line 2043
    const-class v0, Lcom/alibaba/android/dingtalkim/models/idl/service/EncryptionIService;

    invoke-static {v0}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/idl/service/EncryptionIService;

    .line 2044
    if-eqz v0, :cond_0

    .line 2047
    invoke-interface {v0, p1, v2}, Lcom/alibaba/android/dingtalkim/models/idl/service/EncryptionIService;->getKeyByCorpId(Ljava/lang/String;Liyv;)V

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic b(Ldlc;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Ldlc;

    .prologue
    .line 59
    iget-object v0, p0, Ldlc;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Ldlc;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()Lcom/dingtalk/cryptokit/CryptoException;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 604
    iget v2, p0, Ldlc;->d:I

    if-nez v2, :cond_0

    .line 605
    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v0

    .line 606
    .local v0, "code":I
    const-string/jumbo v1, "dt key is not init"

    .line 617
    .local v1, "reason":Ljava/lang/String;
    :goto_0
    const-string/jumbo v2, "crypto"

    sget-object v3, Ldlc;->a:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    new-instance v2, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-direct {v2, v0, v1}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 607
    .end local v0    # "code":I
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    iget v2, p0, Ldlc;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 608
    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v0

    .line 609
    .restart local v0    # "code":I
    const-string/jumbo v1, "dt key is initializing"

    .restart local v1    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 610
    .end local v0    # "code":I
    .end local v1    # "reason":Ljava/lang/String;
    :cond_1
    iget v2, p0, Ldlc;->d:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Ldlc;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v0

    .line 612
    .restart local v0    # "code":I
    const-string/jumbo v1, "dt key is loading"

    .restart local v1    # "reason":Ljava/lang/String;
    goto :goto_0

    .line 614
    .end local v0    # "code":I
    .end local v1    # "reason":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v0

    .line 615
    .restart local v0    # "code":I
    const-string/jumbo v1, "has no dt key, will be loaded"

    .restart local v1    # "reason":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J
    .locals 12
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "srcInputStream"    # Ljava/io/FileInputStream;
    .param p3, "dstOutputStream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 285
    :cond_0
    new-instance v0, Lcom/dingtalk/cryptokit/CryptoException;

    const-string/jumbo v1, "Invalid params"

    invoke-direct {v0, v1}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 288
    :cond_1
    const-wide/16 v10, 0x0

    .line 289
    .local v10, "size":J
    const/4 v7, 0x0

    .line 290
    .local v7, "hasKey":Z
    iget-object v0, p0, Ldlc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 292
    .local v8, "keys":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    if-nez v8, :cond_3

    .line 294
    const-string/jumbo v0, "crypto"

    sget-object v1, Ldlc;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "f e initKey "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Ldlc;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget v0, p0, Ldlc;->d:I

    if-nez v0, :cond_2

    .line 297
    invoke-virtual {p0}, Ldlc;->b()V

    .line 324
    :cond_2
    :goto_0
    if-nez v7, :cond_4

    .line 326
    invoke-direct {p0, p1}, Ldlc;->a(Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Ldlc;->d()Lcom/dingtalk/cryptokit/CryptoException;

    move-result-object v0

    throw v0

    .line 302
    :cond_3
    invoke-static {v8}, Ldlc;->a(Ljava/util/List;)Ldla;

    move-result-object v9

    .line 303
    .local v9, "lastestEncryptKey":Ldla;
    if-eqz v9, :cond_2

    iget-object v0, v9, Ldla;->c:[B

    if-eqz v0, :cond_2

    .line 304
    const/4 v7, 0x1

    .line 306
    const/4 v5, 0x0

    .line 308
    .local v5, "tempStorage":[B
    const/16 v0, 0x2000

    :try_start_0
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v5

    .line 309
    iget-object v0, v9, Ldla;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/dingtalk/cryptokit/Algorithm;->getByName(Ljava/lang/String;)Lcom/dingtalk/cryptokit/Algorithm;

    move-result-object v0

    iget-object v1, v9, Ldla;->c:[B

    iget-wide v2, v9, Ldla;->d:J

    long-to-int v2, v2

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Liwd;->a(Lcom/dingtalk/cryptokit/Algorithm;[BILjava/io/InputStream;Ljava/io/OutputStream;[B)Z

    .line 311
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v10

    .line 318
    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 312
    :catch_0
    move-exception v6

    .line 313
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 314
    new-instance v0, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v1, -0x1fc

    invoke-static {v6}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 318
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v0

    .line 315
    :catch_1
    move-exception v6

    .line 316
    .local v6, "e":Ljava/lang/Throwable;
    :try_start_2
    new-instance v0, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-static {v6}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 330
    .end local v5    # "tempStorage":[B
    .end local v6    # "e":Ljava/lang/Throwable;
    .end local v9    # "lastestEncryptKey":Ldla;
    :cond_4
    return-wide v10
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "sourceString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "hasKey":Z
    const/4 v4, 0x0

    .line 253
    .local v4, "result":Ljava/lang/String;
    iget-object v5, p0, Ldlc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 254
    .local v2, "keys":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    if-nez v2, :cond_1

    .line 255
    const-string/jumbo v5, "crypto"

    sget-object v6, Ldlc;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "e initKey "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Ldlc;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget v5, p0, Ldlc;->d:I

    if-nez v5, :cond_0

    .line 258
    invoke-virtual {p0}, Ldlc;->b()V

    .line 273
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 275
    invoke-direct {p0, p1}, Ldlc;->a(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Ldlc;->d()Lcom/dingtalk/cryptokit/CryptoException;

    move-result-object v5

    throw v5

    .line 263
    :cond_1
    :try_start_0
    invoke-static {v2}, Ldlc;->a(Ljava/util/List;)Ldla;

    move-result-object v3

    .line 264
    .local v3, "lastestEncryptKey":Ldla;
    if-eqz v3, :cond_0

    iget-object v5, v3, Ldla;->c:[B

    if-eqz v5, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 266
    iget-object v5, v3, Ldla;->e:Ljava/lang/String;

    iget-object v6, v3, Ldla;->c:[B

    iget-wide v8, v3, Ldla;->d:J

    long-to-int v7, v8

    invoke-static {v5, v6, v7, p2}, Liwd;->a(Ljava/lang/String;[BILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 268
    .end local v3    # "lastestEncryptKey":Ldla;
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v5, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-static {v0}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 278
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    return-object v4
.end method

.method public final b(Ljava/lang/String;Ljava/io/FileInputStream;Ljava/io/FileOutputStream;)J
    .locals 16
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "srcInputStream"    # Ljava/io/FileInputStream;
    .param p3, "dstOutputStream"    # Ljava/io/FileOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 335
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 336
    :cond_0
    new-instance v11, Lcom/dingtalk/cryptokit/CryptoException;

    const-string/jumbo v12, "Invalid params"

    invoke-direct {v11, v12}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 339
    :cond_1
    const-wide/16 v8, 0x0

    .line 340
    .local v8, "size":J
    const/4 v5, 0x0

    .line 341
    .local v5, "hasKey":Z
    move-object/from16 v0, p0

    iget-object v11, v0, Ldlc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 343
    .local v7, "keys":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    if-nez v7, :cond_3

    .line 345
    const-string/jumbo v11, "crypto"

    sget-object v12, Ldlc;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "f d initKey "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v14, v0, Ldlc;->d:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget v11, v0, Ldlc;->d:I

    if-nez v11, :cond_2

    .line 347
    invoke-virtual/range {p0 .. p0}, Ldlc;->b()V

    .line 383
    :cond_2
    :goto_0
    if-nez v5, :cond_7

    .line 384
    invoke-direct/range {p0 .. p1}, Ldlc;->a(Ljava/lang/String;)V

    .line 385
    invoke-direct/range {p0 .. p0}, Ldlc;->d()Lcom/dingtalk/cryptokit/CryptoException;

    move-result-object v11

    throw v11

    .line 352
    :cond_3
    const/4 v10, 0x0

    .line 354
    .local v10, "tempStorage":[B
    const/4 v2, 0x0

    .line 355
    .local v2, "bestEncryptKey":Ldla;
    :try_start_0
    new-instance v6, Liwh;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Liwh;-><init>(Ljava/io/InputStream;)V

    .line 356
    .local v6, "header":Liwh;
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldla;

    .line 357
    .local v4, "encrpyKeyObject":Ldla;
    iget-wide v12, v4, Ldla;->d:J

    .line 2096
    iget v14, v6, Liwh;->b:I

    .line 357
    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-nez v12, :cond_4

    .line 358
    move-object v2, v4

    .line 3096
    .end local v4    # "encrpyKeyObject":Ldla;
    :cond_5
    iget v11, v6, Liwh;->b:I

    .line 363
    if-lez v11, :cond_6

    if-eqz v2, :cond_6

    iget-object v11, v2, Ldla;->c:[B

    if-eqz v11, :cond_6

    .line 364
    const/4 v5, 0x1

    .line 365
    const/16 v11, 0x2000

    invoke-static {v11}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->getBuf(I)[B

    move-result-object v10

    .line 366
    iget-object v11, v2, Ldla;->e:Ljava/lang/String;

    invoke-static {v11}, Lcom/dingtalk/cryptokit/Algorithm;->getByName(Ljava/lang/String;)Lcom/dingtalk/cryptokit/Algorithm;

    move-result-object v11

    iget-object v12, v2, Ldla;->c:[B

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v11, v12, v0, v1, v10}, Liwd;->a(Lcom/dingtalk/cryptokit/Algorithm;[BLjava/io/InputStream;Ljava/io/OutputStream;[B)Z

    .line 368
    invoke-virtual/range {p2 .. p2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->size()J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v8

    .line 379
    :goto_1
    invoke-static {v10}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    goto :goto_0

    .line 370
    :cond_6
    :try_start_1
    const-string/jumbo v11, "crypto"

    sget-object v12, Ldlc;->a:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "f d has no valid key "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4096
    iget v14, v6, Liwh;->b:I

    .line 370
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 373
    .end local v6    # "header":Liwh;
    :catch_0
    move-exception v3

    .line 374
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 375
    new-instance v11, Lcom/dingtalk/cryptokit/CryptoException;

    const/16 v12, -0x1fc

    invoke-static {v3}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(ILjava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 379
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v11

    invoke-static {v10}, Lcom/alibaba/doraemon/utils/ByteArrayPool;->returnBuf([B)V

    throw v11

    .line 376
    :catch_1
    move-exception v3

    .line 377
    .local v3, "e":Ljava/lang/Throwable;
    :try_start_3
    new-instance v11, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-static {v3}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 388
    .end local v2    # "bestEncryptKey":Ldla;
    .end local v3    # "e":Ljava/lang/Throwable;
    .end local v10    # "tempStorage":[B
    :cond_7
    return-wide v8
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "encryptedString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/dingtalk/cryptokit/CryptoException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 544
    const/4 v3, 0x0

    .line 545
    .local v3, "hasKey":Z
    const/4 v6, 0x0

    .line 547
    .local v6, "result":Ljava/lang/String;
    iget-object v7, p0, Ldlc;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 548
    .local v5, "keys":Ljava/util/List;, "Ljava/util/List<Ldla;>;"
    if-nez v5, :cond_1

    .line 549
    const-string/jumbo v7, "crypto"

    sget-object v8, Ldlc;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "d initKey "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, p0, Ldlc;->d:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    iget v7, p0, Ldlc;->d:I

    if-nez v7, :cond_0

    .line 551
    invoke-virtual {p0}, Ldlc;->b()V

    .line 579
    :cond_0
    :goto_0
    if-nez v3, :cond_5

    .line 580
    invoke-direct {p0, p1}, Ldlc;->a(Ljava/lang/String;)V

    .line 581
    invoke-direct {p0}, Ldlc;->d()Lcom/dingtalk/cryptokit/CryptoException;

    move-result-object v7

    throw v7

    .line 556
    :cond_1
    const/4 v0, 0x0

    .line 557
    .local v0, "bestEncryptKey":Ldla;
    :try_start_0
    new-instance v4, Liwh;

    invoke-direct {v4, p2}, Liwh;-><init>(Ljava/lang/String;)V

    .line 558
    .local v4, "header":Liwh;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldla;

    .line 559
    .local v2, "encrpyKeyObject":Ldla;
    iget-wide v8, v2, Ldla;->d:J

    .line 5096
    iget v10, v4, Liwh;->b:I

    .line 559
    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 560
    move-object v0, v2

    .line 6096
    .end local v2    # "encrpyKeyObject":Ldla;
    :cond_3
    iget v7, v4, Liwh;->b:I

    .line 565
    if-lez v7, :cond_4

    if-eqz v0, :cond_4

    iget-object v7, v0, Ldla;->c:[B

    if-eqz v7, :cond_4

    .line 566
    const/4 v3, 0x1

    .line 7088
    iget-object v7, v4, Liwh;->a:Lcom/dingtalk/cryptokit/Algorithm;

    .line 567
    iget-object v8, v0, Ldla;->c:[B

    .line 7104
    iget-object v9, v4, Liwh;->c:Ljava/lang/String;

    .line 567
    invoke-static {v7, v8, v9}, Liwd;->a(Lcom/dingtalk/cryptokit/Algorithm;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 569
    :cond_4
    const-string/jumbo v7, "crypto"

    sget-object v8, Ldlc;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "d has no valid key "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8096
    iget v10, v4, Liwh;->b:I

    .line 569
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 571
    .end local v4    # "header":Liwh;
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "crypto"

    sget-object v8, Ldlc;->a:Ljava/lang/String;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "decrypt SecretWithHeader<init> exception encryptedString: "

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 574
    invoke-static {p2}, Ldky;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 573
    invoke-static {v9}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 572
    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    new-instance v7, Lcom/dingtalk/cryptokit/CryptoException;

    invoke-static {v1}, Ldhq;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/dingtalk/cryptokit/CryptoException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 583
    .end local v0    # "bestEncryptKey":Ldla;
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_5
    return-object v6
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 99
    const-class v0, Ldlc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Ldlc$1;

    invoke-direct {v1, p0}, Ldlc$1;-><init>(Ldlc;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method
