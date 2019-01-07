.class public Lcom/alipay/mobile/security/faceauth/config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static _instance:Lcom/alipay/mobile/security/faceauth/config/Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/security/faceauth/config/Config;->_instance:Lcom/alipay/mobile/security/faceauth/config/Config;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/security/faceauth/config/Config;
    .locals 2

    .prologue
    .line 14
    const-class v1, Lcom/alipay/mobile/security/faceauth/config/Config;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/security/faceauth/config/Config;->_instance:Lcom/alipay/mobile/security/faceauth/config/Config;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/alipay/mobile/security/faceauth/config/Config;

    invoke-direct {v0}, Lcom/alipay/mobile/security/faceauth/config/Config;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/faceauth/config/Config;->_instance:Lcom/alipay/mobile/security/faceauth/config/Config;

    .line 17
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/faceauth/config/Config;->_instance:Lcom/alipay/mobile/security/faceauth/config/Config;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "cipher"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 60
    const-string/jumbo v0, ""

    .line 62
    .local v0, "decrypt":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "uftwdboQGqE="

    .line 63
    .local v4, "key":Ljava/lang/String;
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->decryptBASE64(Ljava/lang/String;)[B

    move-result-object v3

    .line 64
    .local v3, "inputData":[B
    invoke-static {v3, v4}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->decryptMode([BLjava/lang/String;)[B

    move-result-object v3

    .line 65
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "decrypt":Ljava/lang/String;
    .local v1, "decrypt":Ljava/lang/String;
    move-object v0, v1

    .line 69
    .end local v1    # "decrypt":Ljava/lang/String;
    .end local v3    # "inputData":[B
    .end local v4    # "key":Ljava/lang/String;
    .restart local v0    # "decrypt":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 66
    :catch_0
    move-exception v2

    .line 67
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "plainText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 79
    const-string/jumbo v1, ""

    .line 81
    .local v1, "encrypt":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v3, "uftwdboQGqE="

    .line 82
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 83
    .local v2, "inputData":[B
    invoke-static {v2, v3}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->encryptMode([BLjava/lang/String;)[B

    move-result-object v2

    .line 84
    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/DESCoder;->encryptBASE64([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 88
    .end local v2    # "inputData":[B
    .end local v3    # "key":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getServerConfig(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->getServerConfig(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "config":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/config/Config;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getServerConfigVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->getServerConfigVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "version":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/faceauth/config/Config;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isSoundEnable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->getSoundEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setServerConfig(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverConfig"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/faceauth/config/Config;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "config":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->setServerConfig(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public setServerConfigVersion(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serverVersion"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/security/faceauth/config/Config;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "version":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->setServerConfigVersion(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public setSoundEnable(Landroid/content/Context;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enable"    # Z

    .prologue
    .line 96
    invoke-static {p1, p2}, Lcom/alipay/mobile/security/bio/utils/PreferenceHelper;->setSoundEnable(Landroid/content/Context;Z)V

    .line 97
    return-void
.end method
