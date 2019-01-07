.class public Lcom/dbappsecurity/et/DIJni;
.super Ljava/lang/Object;
.source "DIJni.java"


# static fields
.field public static volatile diJni:Lcom/dbappsecurity/et/DIJni;

.field public static stc_isload:Z


# instance fields
.field public isLoad:Z

.field logUts:Lcom/dbappsecurity/utl/LogUts;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 15
    sput-boolean v2, Lcom/dbappsecurity/et/DIJni;->stc_isload:Z

    .line 20
    :try_start_0
    const-string/jumbo v1, "safechat"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x1

    sput-boolean v1, Lcom/dbappsecurity/et/DIJni;->stc_isload:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .local v0, "var2":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/dbappsecurity/et/DIJni;->diJni:Lcom/dbappsecurity/et/DIJni;

    return-void

    .line 23
    .end local v0    # "var2":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 24
    .restart local v0    # "var2":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 26
    sput-boolean v2, Lcom/dbappsecurity/et/DIJni;->stc_isload:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dbappsecurity/et/DIJni;->isLoad:Z

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/dbappsecurity/et/DIJni;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dbappsecurity/utl/LogUts;->getInstance(Ljava/lang/String;)Lcom/dbappsecurity/utl/LogUts;

    move-result-object v0

    iput-object v0, p0, Lcom/dbappsecurity/et/DIJni;->logUts:Lcom/dbappsecurity/utl/LogUts;

    .line 38
    return-void
.end method

.method public static getInstance()Lcom/dbappsecurity/et/DIJni;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 48
    sget-object v0, Lcom/dbappsecurity/et/DIJni;->diJni:Lcom/dbappsecurity/et/DIJni;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/dbappsecurity/et/DIJni;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/dbappsecurity/et/DIJni;->diJni:Lcom/dbappsecurity/et/DIJni;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/dbappsecurity/et/DIJni;

    invoke-direct {v0}, Lcom/dbappsecurity/et/DIJni;-><init>()V

    sput-object v0, Lcom/dbappsecurity/et/DIJni;->diJni:Lcom/dbappsecurity/et/DIJni;

    .line 53
    sget-boolean v0, Lcom/dbappsecurity/et/DIJni;->stc_isload:Z

    if-eqz v0, :cond_2

    .line 54
    sget-object v0, Lcom/dbappsecurity/et/DIJni;->diJni:Lcom/dbappsecurity/et/DIJni;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/dbappsecurity/et/DIJni;->isLoad:Z

    .line 59
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_1
    sget-object v0, Lcom/dbappsecurity/et/DIJni;->diJni:Lcom/dbappsecurity/et/DIJni;

    return-object v0

    .line 56
    :cond_2
    :try_start_1
    sget-object v0, Lcom/dbappsecurity/et/DIJni;->diJni:Lcom/dbappsecurity/et/DIJni;

    invoke-virtual {v0}, Lcom/dbappsecurity/et/DIJni;->LoadSo()V

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public LoadSo()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 151
    :try_start_0
    const-string/jumbo v1, "safechat"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dbappsecurity/et/DIJni;->isLoad:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "var2":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    .line 158
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/dbappsecurity/et/DIJni;->isLoad:Z

    .line 160
    new-instance v1, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v2

    sget-object v3, Lcom/dbappsecurity/utl/ErrorMsg$Err;->load_so_err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v5, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v1
.end method

.method public native dbappsecurityLg([B[B)V
.end method

.method public native decryptBufferHelper([B[BLjava/lang/String;Ljava/lang/Integer;)[B
.end method

.method public native decryptFileHelper([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)[B
.end method

.method public native decryptFileHelperNew([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;[BLjava/lang/Integer;)[B
.end method

.method public native decryptMsg([B[BLjava/lang/String;ILjava/lang/Integer;)[B
.end method

.method public native decryptStreamHelper([B[B[BLjava/lang/String;ILjava/lang/Integer;)[B
.end method

.method public native domainName([BLjava/lang/Integer;)[B
.end method

.method public native encryptBufferHelper([B[BLjava/lang/String;IILjava/lang/Integer;)[B
.end method

.method public native encryptFileHelper([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;)[B
.end method

.method public native encryptFileHelperNew([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Integer;[BLjava/lang/Integer;)[B
.end method

.method public native encryptKey([B[BLjava/lang/String;ILjava/lang/Integer;)Ljava/lang/String;
.end method

.method public native encryptKeyData([BLjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
.end method

.method public native encryptKeys([B[BLjava/lang/String;ILjava/lang/Integer;)Ljava/lang/String;
.end method

.method public native encryptMsg([B[BLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
.end method

.method public native encryptStreamHelper([B[B[BLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)[B
.end method

.method public native getEncryptionAttributeHelper([BLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end method

.method public native getNonce([BLjava/lang/Integer;)V
.end method

.method public declared-synchronized isLoad()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/dbappsecurity/et/DIJni;->isLoad:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public native releaseVoipKey(Ljava/lang/Integer;)V
.end method

.method public native setVoipKey([BLjava/lang/String;Ljava/lang/Integer;)V
.end method

.method public native stringFromJNI(Ljava/lang/Integer;)V
.end method

.method public native test([I)V
.end method
