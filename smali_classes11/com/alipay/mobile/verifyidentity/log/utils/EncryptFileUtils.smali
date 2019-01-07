.class public Lcom/alipay/mobile/verifyidentity/log/utils/EncryptFileUtils;
.super Ljava/lang/Object;
.source "EncryptFileUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static read(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    invoke-static {p0}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->read(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 24
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 25
    const/4 v0, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    invoke-static {v2}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptUtil;->generateLocalStorageDesKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    :cond_0
    return-object v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 14
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getInstance()Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/engine/MicroModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 15
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_0

    .line 17
    invoke-static {v1}, Lcom/alipay/mobile/verifyidentity/log/utils/EncryptUtil;->generateLocalStorageDesKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alipay/mobile/verifyidentity/log/utils/TriDesCBC;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_0
    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/log/utils/FileCacheUtil;->write(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
