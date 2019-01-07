.class public Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;
.super Lcom/alipay/mobile/security/bio/service/BioStoreService;
.source "BioStoreServiceImpl.java"


# static fields
.field private static c:Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/security/bio/service/BioStoreService;-><init>()V

    .line 26
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->a:Ljava/lang/String;

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->b:Landroid/content/Context;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->b:Landroid/content/Context;

    const-string/jumbo v1, "BIOLOGY_DES_KEY_SEED"

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->a:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x2710

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/SignHelper;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->a:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->b:Landroid/content/Context;

    const-string/jumbo v1, "BIOLOGY_DES_KEY_SEED"

    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    sget-object v0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->c:Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;

    if-nez v0, :cond_1

    .line 34
    const-class v1, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->c:Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->c:Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;

    .line 38
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_1
    sget-object v0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->c:Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public DESdecrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cipher"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 118
    const-string/jumbo v0, ""

    .line 120
    .local v0, "decrypt":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v3

    .line 121
    .local v3, "inputData":[B
    iget-object v4, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->decryptMode([BLjava/lang/String;)[B

    move-result-object v3

    .line 122
    if-eqz v3, :cond_0

    .line 123
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "decrypt":Ljava/lang/String;
    .local v1, "decrypt":Ljava/lang/String;
    move-object v0, v1

    .line 128
    .end local v1    # "decrypt":Ljava/lang/String;
    .end local v3    # "inputData":[B
    .restart local v0    # "decrypt":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public DESencrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "plainText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 138
    const-string/jumbo v1, ""

    .line 141
    .local v1, "encrypt":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 142
    .local v2, "inputData":[B
    iget-object v3, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->encryptMode([BLjava/lang/String;)[B

    move-result-object v2

    .line 143
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->encryptBASE64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 147
    .end local v2    # "inputData":[B
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 95
    .local v1, "encode":[B
    const/16 v7, 0x10

    :try_start_0
    invoke-static {v7}, Lcom/alipay/mobile/security/bio/security/RandomHelper;->random(I)[B

    move-result-object v4

    .line 97
    .local v4, "randomSeed":[B
    invoke-static {p2}, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v5

    .line 99
    .local v5, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v5, v4}, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B

    move-result-object v3

    .line 100
    .local v3, "encodeSeed":[B
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-static {v7, v4}, Lcom/alipay/mobile/security/bio/security/AESEncrypt;->encrypt([B[B)[B

    move-result-object v2

    .line 102
    .local v2, "encodeContext":[B
    array-length v7, v3

    array-length v8, v2

    add-int/2addr v7, v8

    new-array v1, v7, [B

    .line 104
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    const/4 v7, 0x0

    array-length v8, v2

    array-length v9, v3

    invoke-static {v3, v7, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v2    # "encodeContext":[B
    .end local v3    # "encodeSeed":[B
    .end local v4    # "randomSeed":[B
    .end local v5    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    const/16 v7, 0x8

    invoke-static {v1, v7}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "strEncode":Ljava/lang/String;
    return-object v6

    .line 107
    .end local v6    # "strEncode":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public encryptWithRandom(Lcom/alipay/mobile/security/bio/service/BioStoreParameter;)Lcom/alipay/mobile/security/bio/service/BioStoreResult;
    .locals 7
    .param p1, "parameter"    # Lcom/alipay/mobile/security/bio/service/BioStoreParameter;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "parameter can not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 200
    :cond_0
    new-instance v3, Lcom/alipay/mobile/security/bio/service/BioStoreResult;

    invoke-direct {v3}, Lcom/alipay/mobile/security/bio/service/BioStoreResult;-><init>()V

    .line 204
    .local v3, "result":Lcom/alipay/mobile/security/bio/service/BioStoreResult;
    :try_start_0
    iget-object v5, p1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->publicKey:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v4

    .line 206
    .local v4, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    iget-object v5, p1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->random:[B

    invoke-static {v4, v5}, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B

    move-result-object v2

    .line 207
    .local v2, "encodeSeed":[B
    iget-object v5, p1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->content:[B

    iget-object v6, p1, Lcom/alipay/mobile/security/bio/service/BioStoreParameter;->random:[B

    invoke-static {v5, v6}, Lcom/alipay/mobile/security/bio/security/AESEncrypt;->encrypt([B[B)[B

    move-result-object v1

    .line 209
    .local v1, "encodeContent":[B
    iput-object v2, v3, Lcom/alipay/mobile/security/bio/service/BioStoreResult;->encodeSeed:[B

    .line 210
    iput-object v1, v3, Lcom/alipay/mobile/security/bio/service/BioStoreResult;->encodeContext:[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v1    # "encodeContent":[B
    .end local v2    # "encodeSeed":[B
    .end local v4    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    return-object v3

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public encryptWithRandom([BLjava/lang/String;[B)[B
    .locals 8
    .param p1, "content"    # [B
    .param p2, "publicKey"    # Ljava/lang/String;
    .param p3, "random"    # [B

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 172
    const/4 v1, 0x0

    .line 176
    .local v1, "encode":[B
    :try_start_0
    invoke-static {p2}, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->loadPublicKeyByStr(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;

    move-result-object v4

    .line 178
    .local v4, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v4, p3}, Lcom/alipay/mobile/security/bio/security/RSAEncrypt;->encrypt(Ljava/security/interfaces/RSAPublicKey;[B)[B

    move-result-object v3

    .line 179
    .local v3, "encodeSeed":[B
    invoke-static {p1, p3}, Lcom/alipay/mobile/security/bio/security/AESEncrypt;->encrypt([B[B)[B

    move-result-object v2

    .line 181
    .local v2, "encodeContext":[B
    array-length v5, v3

    array-length v6, v2

    add-int/2addr v5, v6

    new-array v1, v5, [B

    .line 183
    const/4 v5, 0x0

    const/4 v6, 0x0

    array-length v7, v2

    invoke-static {v2, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    const/4 v5, 0x0

    array-length v6, v2

    array-length v7, v3

    invoke-static {v3, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    .end local v2    # "encodeContext":[B
    .end local v3    # "encodeSeed":[B
    .end local v4    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :goto_0
    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRandom()[B
    .locals 1

    .prologue
    .line 166
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/security/RandomHelper;->random(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getRandomKey()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    const/16 v3, 0x10

    new-array v0, v3, [B

    .line 153
    .local v0, "b":[B
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 154
    .local v2, "random":Ljava/util/Random;
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 155
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "codeString":Ljava/lang/String;
    return-object v1
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    iget-object v2, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->b:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "value":Ljava/lang/String;
    const-string/jumbo v0, ""

    .line 81
    .local v0, "decode":Ljava/lang/String;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 82
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->DESdecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->mBioServiceManager:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 162
    return-void
.end method

.method public store(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 65
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "key of store can not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->DESencrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "encode":Ljava/lang/String;
    iget-object v1, p0, Lcom/alipay/mobile/security/bio/service/impl/BioStoreServiceImpl;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    return v1
.end method
