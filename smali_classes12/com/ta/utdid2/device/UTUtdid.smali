.class public Lcom/ta/utdid2/device/UTUtdid;
.super Ljava/lang/Object;
.source "UTUtdid.java"


# static fields
.field private static final CREATE_LOCK:Ljava/lang/Object;

.field private static final S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

.field private static final S_GLOBAL_PERSISTENT_CONFIG_KEY:Ljava/lang/String; = "Alvin2"

.field private static final S_LOCAL_STORAGE_KEY:Ljava/lang/String; = "ContextData"

.field private static final S_LOCAL_STORAGE_NAME:Ljava/lang/String; = ".DataStorage"

.field private static final UM_SETTINGS_STORAGE:Ljava/lang/String; = "dxCRMxhQkdGePGnp"

.field private static final UM_SETTINGS_STORAGE_NEW:Ljava/lang/String; = "mqBRboGZkQPcAkyk"

.field private static s_umutdid:Lcom/ta/utdid2/device/UTUtdid;


# instance fields
.field private mCBDomain:Ljava/lang/String;

.field private mCBKey:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

.field private mUtdid:Ljava/lang/String;

.field private mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ".UTSystemConfig"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Global"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 35
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    .line 37
    const-string/jumbo v0, "xx_utdid_key"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "xx_utdid_domain"

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 44
    iput-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 48
    const-string/jumbo v0, "[^0-9a-zA-Z=/+]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    .line 51
    iput-object p1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    sget-object v2, Lcom/ta/utdid2/device/UTUtdid;->S_GLOBAL_PERSISTENT_CONFIG_DIR:Ljava/lang/String;

    const-string/jumbo v3, "Alvin2"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 55
    new-instance v0, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v2, ".DataStorage"

    const-string/jumbo v3, "ContextData"

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    .line 57
    new-instance v0, Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdidHelper;-><init>()V

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    .line 58
    const-string/jumbo v0, "K_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "D_%d"

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBDomain:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public static calcHmac([B)Ljava/lang/String;
    .locals 6
    .param p0, "src"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 456
    const/16 v4, 0x2c

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    .line 460
    .local v0, "key":[B
    const-string/jumbo v4, "HmacSHA1"

    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 461
    .local v1, "mac":Ljavax/crypto/Mac;
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-static {v0}, Lcom/ta/audid/utils/RC4;->rc4([B)[B

    move-result-object v4

    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 462
    .local v3, "sk":Ljavax/crypto/spec/SecretKeySpec;
    invoke-virtual {v1, v3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 463
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v2

    .line 464
    .local v2, "result":[B
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 456
    :array_0
    .array-data 1
        0x45t
        0x72t
        0x74t
        -0x21t
        0x7dt
        -0x36t
        -0x1ft
        0x56t
        -0xbt
        0xbt
        -0x4et
        -0x60t
        -0x11t
        -0x63t
        0x40t
        0x17t
        -0x5ft
        -0x7et
        -0x52t
        -0x40t
        0x71t
        0x74t
        -0x10t
        -0x67t
        0x31t
        -0x1et
        0x9t
        -0x27t
        0x21t
        -0x50t
        -0x44t
        -0x4et
        -0x75t
        0x35t
        0x1et
        -0x7at
        0x40t
        -0x68t
        0x4at
        -0x31t
        0x6at
        0x55t
        -0x26t
        -0x5dt
    .end array-data
.end method

.method private checkSettingsPermission()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 468
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "android.permission.WRITE_SETTINGS"

    .line 469
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 468
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    .line 470
    .local v0, "lPermission":I
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private generateUtdid()[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 426
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 427
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-int v8, v10

    .line 428
    .local v8, "timestamp":I
    new-instance v10, Ljava/util/Random;

    invoke-direct {v10}, Ljava/util/Random;-><init>()V

    invoke-virtual {v10}, Ljava/util/Random;->nextInt()I

    move-result v9

    .line 431
    .local v9, "uniqueID":I
    invoke-static {v8}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v2

    .line 432
    .local v2, "bTimestamp":[B
    invoke-static {v9}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v3

    .line 433
    .local v3, "bUniqueID":[B
    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v2, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 434
    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v3, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 435
    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 436
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 439
    :try_start_0
    iget-object v10, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/ta/utdid2/android/utils/PhoneInfoUtils;->getImei(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 443
    .local v7, "imei":Ljava/lang/String;
    :goto_0
    invoke-static {v7}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v5

    .line 444
    .local v5, "hashCode":I
    invoke-static {v5}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v1

    .line 445
    .local v1, "bHashCode":[B
    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v4, v1, v10, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 446
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-static {v10}, Lcom/ta/utdid2/device/UTUtdid;->calcHmac([B)Ljava/lang/String;

    move-result-object v6

    .line 447
    .local v6, "hmac":Ljava/lang/String;
    invoke-static {v6}, Lcom/ta/utdid2/android/utils/StringUtils;->hashCode(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Lcom/ta/utdid2/android/utils/IntUtils;->getBytes(I)[B

    move-result-object v0

    .line 448
    .local v0, "bCheckSum":[B
    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 449
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    return-object v10

    .line 441
    .end local v0    # "bCheckSum":[B
    .end local v1    # "bHashCode":[B
    .end local v5    # "hashCode":I
    .end local v6    # "hmac":Ljava/lang/String;
    .end local v7    # "imei":Ljava/lang/String;
    :catch_0
    move-exception v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    invoke-virtual {v11}, Ljava/util/Random;->nextInt()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "imei":Ljava/lang/String;
    goto :goto_0
.end method

.method private getUtdidFromTaoPPC()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v2, :cond_0

    .line 233
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v3, "UTDID2"

    invoke-virtual {v2, v3}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, "lUtdid":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v2, v1}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "lPackedUtdid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 241
    .end local v0    # "lPackedUtdid":Ljava/lang/String;
    .end local v1    # "lUtdid":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static instance(Landroid/content/Context;)Lcom/ta/utdid2/device/UTUtdid;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    if-eqz p0, :cond_1

    .line 105
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_1

    .line 106
    sget-object v1, Lcom/ta/utdid2/device/UTUtdid;->CREATE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0, p0}, Lcom/ta/utdid2/device/UTUtdid;-><init>(Landroid/content/Context;)V

    .line 109
    sput-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    invoke-direct {v0}, Lcom/ta/utdid2/device/UTUtdid;->removeIllegalKeys()V

    .line 111
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_1
    sget-object v0, Lcom/ta/utdid2/device/UTUtdid;->s_umutdid:Lcom/ta/utdid2/device/UTUtdid;

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isValidUtdid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pUtdid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 248
    if-eqz p1, :cond_1

    .line 250
    const-string/jumbo v2, "\n"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 253
    :cond_0
    const/16 v2, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 254
    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 256
    .local v0, "lMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-nez v2, :cond_1

    .line 257
    const/4 v1, 0x1

    .line 261
    .end local v0    # "lMatcher":Ljava/util/regex/Matcher;
    :cond_1
    return v1
.end method

.method private removeIllegalKeys()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v5, :cond_4

    .line 67
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "UTDID2"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "lUtdid":Ljava/lang/String;
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "UTDID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v4}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 71
    invoke-direct {p0, v4}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 74
    :cond_0
    const/4 v2, 0x0

    .line 75
    .local v2, "lNeedSync":Z
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "DID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "lDID":Ljava/lang/String;
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 77
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "DID"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 78
    const/4 v2, 0x1

    .line 81
    :cond_1
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "EI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "lEI":Ljava/lang/String;
    invoke-static {v1}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 83
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "EI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 84
    const/4 v2, 0x1

    .line 87
    :cond_2
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "SI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "lSI":Ljava/lang/String;
    invoke-static {v3}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 89
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v6, "SI"

    invoke-virtual {v5, v6}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->remove(Ljava/lang/String;)V

    .line 90
    const/4 v2, 0x1

    .line 93
    :cond_3
    if-eqz v2, :cond_4

    .line 94
    iget-object v5, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v5}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 98
    .end local v0    # "lDID":Ljava/lang/String;
    .end local v1    # "lEI":Ljava/lang/String;
    .end local v2    # "lNeedSync":Z
    .end local v3    # "lSI":Ljava/lang/String;
    .end local v4    # "lUtdid":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method private saveUtdidToLocalStorage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "lPackedUtdid":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v2, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 150
    .end local v0    # "lPackedUtdid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private saveUtdidToNewSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "lUtdid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->checkSettingsPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    const-string/jumbo v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_0
    const/16 v1, 0x18

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 169
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mqBRboGZkQPcAkyk"

    .line 168
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 175
    :goto_0
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 177
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 178
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mqBRboGZkQPcAkyk"

    .line 177
    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    .end local v0    # "data":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "data":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private saveUtdidToSettings(Ljava/lang/String;)V
    .locals 1
    .param p1, "lPackedUtdid"    # Ljava/lang/String;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->checkSettingsPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    if-eqz p1, :cond_0

    .line 221
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->syncUtdidToSettings(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method private saveUtdidToTaoPPC(Ljava/lang/String;)V
    .locals 2
    .param p1, "pUtdid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string/jumbo v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x18

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    const-string/jumbo v1, "UTDID2"

    invoke-virtual {v0, v1, p1}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mTaoPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    invoke-virtual {v0}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->commit()Z

    .line 135
    :cond_1
    return-void
.end method

.method private syncUtdidToSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "pPackedUtdid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "data":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 202
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    :try_start_1
    iget-object v1, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "dxCRMxhQkdGePGnp"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 210
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/ta/utdid2/device/UTUtdid;->getValueForUpdate()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getValueForUpdate()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/ta/utdid2/device/UTUtdid;->readUtdid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 283
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 284
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :goto_0
    monitor-exit p0

    return-object v3

    .line 290
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->generateUtdid()[B

    move-result-object v2

    .line 291
    .local v2, "lUtdid":[B
    if-eqz v2, :cond_2

    .line 293
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/ta/utdid2/android/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 294
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 296
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v3, v2}, Lcom/ta/utdid2/device/UTUtdidHelper;->pack([B)Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "lPackedUtdid":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 299
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 301
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    .end local v1    # "lPackedUtdid":Ljava/lang/String;
    .end local v2    # "lUtdid":[B
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, ""

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/ta/audid/utils/UtdidLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized readUtdid()Ljava/lang/String;
    .locals 15

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 316
    monitor-enter p0

    :try_start_0
    const-string/jumbo v6, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    .local v6, "lNewSettingsUtdid":Ljava/lang/String;
    :try_start_1
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "mqBRboGZkQPcAkyk"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 324
    :goto_0
    :try_start_2
    invoke-direct {p0, v6}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-eqz v13, :cond_0

    .line 419
    .end local v6    # "lNewSettingsUtdid":Ljava/lang/String;
    :goto_1
    monitor-exit p0

    return-object v6

    .line 329
    .restart local v6    # "lNewSettingsUtdid":Ljava/lang/String;
    :cond_0
    :try_start_3
    new-instance v4, Lcom/ta/utdid2/device/UTUtdidHelper2;

    invoke-direct {v4}, Lcom/ta/utdid2/device/UTUtdidHelper2;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    .local v4, "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    const/4 v5, 0x0

    .line 333
    .local v5, "lNeedUpdateSettings":Z
    const/4 v0, 0x0

    .line 335
    .local v0, "data":Ljava/lang/String;
    :try_start_4
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "dxCRMxhQkdGePGnp"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 340
    :goto_2
    :try_start_5
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 342
    invoke-virtual {v4, v0}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePackWithBase64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 343
    .local v11, "lTmpUtdidBase64":Ljava/lang/String;
    invoke-direct {p0, v11}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 345
    invoke-direct {p0, v11}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    move-object v6, v11

    .line 346
    goto :goto_1

    .line 349
    :cond_1
    invoke-virtual {v4, v0}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 350
    .local v10, "lTmpUtdid":Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 351
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v13, v10}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 352
    .local v7, "lPTmpUtdid":Ljava/lang/String;
    invoke-static {v7}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 354
    invoke-direct {p0, v7}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 357
    :try_start_6
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "dxCRMxhQkdGePGnp"

    .line 357
    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 365
    .end local v7    # "lPTmpUtdid":Ljava/lang/String;
    :cond_2
    :goto_3
    :try_start_7
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v13, v0}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 366
    .local v3, "lDePackedUtdid":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 367
    iput-object v3, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 369
    invoke-direct {p0, v3}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v0}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 373
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 374
    iget-object v6, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    goto :goto_1

    .line 379
    .end local v3    # "lDePackedUtdid":Ljava/lang/String;
    .end local v10    # "lTmpUtdid":Ljava/lang/String;
    .end local v11    # "lTmpUtdidBase64":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    .line 383
    :cond_4
    invoke-direct {p0}, Lcom/ta/utdid2/device/UTUtdid;->getUtdidFromTaoPPC()Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, "lSUtdid":Ljava/lang/String;
    invoke-direct {p0, v9}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 385
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v13, v9}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 386
    .local v8, "lPackedUtdid":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 388
    invoke-direct {p0, v8}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 391
    :cond_5
    invoke-direct {p0, v9}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToNewSettings(Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, v8}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToLocalStorage(Ljava/lang/String;)V

    .line 394
    iput-object v9, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    move-object v6, v9

    .line 395
    goto/16 :goto_1

    .line 399
    .end local v8    # "lPackedUtdid":Ljava/lang/String;
    :cond_6
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mPC:Lcom/ta/utdid2/core/persistent/PersistentConfiguration;

    iget-object v14, p0, Lcom/ta/utdid2/device/UTUtdid;->mCBKey:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/ta/utdid2/core/persistent/PersistentConfiguration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "lContent":Ljava/lang/String;
    invoke-static {v2}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 401
    invoke-virtual {v4, v2}, Lcom/ta/utdid2/device/UTUtdidHelper2;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 402
    .local v12, "lUtdid":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 403
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v13, v2}, Lcom/ta/utdid2/device/UTUtdidHelper;->dePack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 405
    :cond_7
    invoke-direct {p0, v12}, Lcom/ta/utdid2/device/UTUtdid;->isValidUtdid(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 406
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdidHelper:Lcom/ta/utdid2/device/UTUtdidHelper;

    invoke-virtual {v13, v12}, Lcom/ta/utdid2/device/UTUtdidHelper;->packUtdidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "lBUtdid":Ljava/lang/String;
    invoke-static {v12}, Lcom/ta/utdid2/android/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_9

    .line 408
    iput-object v12, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    .line 409
    if-eqz v5, :cond_8

    .line 411
    invoke-direct {p0, v1}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToSettings(Ljava/lang/String;)V

    .line 414
    :cond_8
    iget-object v13, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;

    invoke-direct {p0, v13}, Lcom/ta/utdid2/device/UTUtdid;->saveUtdidToTaoPPC(Ljava/lang/String;)V

    .line 415
    iget-object v6, p0, Lcom/ta/utdid2/device/UTUtdid;->mUtdid:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 419
    .end local v1    # "lBUtdid":Ljava/lang/String;
    .end local v12    # "lUtdid":Ljava/lang/String;
    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 316
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "lContent":Ljava/lang/String;
    .end local v4    # "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    .end local v5    # "lNeedUpdateSettings":Z
    .end local v6    # "lNewSettingsUtdid":Ljava/lang/String;
    .end local v9    # "lSUtdid":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13

    .restart local v0    # "data":Ljava/lang/String;
    .restart local v4    # "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    .restart local v5    # "lNeedUpdateSettings":Z
    .restart local v6    # "lNewSettingsUtdid":Ljava/lang/String;
    .restart local v7    # "lPTmpUtdid":Ljava/lang/String;
    .restart local v10    # "lTmpUtdid":Ljava/lang/String;
    .restart local v11    # "lTmpUtdidBase64":Ljava/lang/String;
    :catch_0
    move-exception v13

    goto/16 :goto_3

    .end local v7    # "lPTmpUtdid":Ljava/lang/String;
    .end local v10    # "lTmpUtdid":Ljava/lang/String;
    .end local v11    # "lTmpUtdidBase64":Ljava/lang/String;
    :catch_1
    move-exception v13

    goto/16 :goto_2

    .end local v0    # "data":Ljava/lang/String;
    .end local v4    # "lHelper2":Lcom/ta/utdid2/device/UTUtdidHelper2;
    .end local v5    # "lNeedUpdateSettings":Z
    :catch_2
    move-exception v13

    goto/16 :goto_0
.end method
