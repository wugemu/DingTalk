.class public Lcom/alipay/mobile/verifyidentity/adapter/patcher/ViPatcherFactory;
.super Ljava/lang/Object;
.source "ViPatcherFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
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

.method public static getViPatcher()Lcom/alipay/mobile/verifyidentity/patcher/ViPatcher;
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alipay/mobile/verifyidentity/patcher/ViPatcher;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/patcher/ViPatcher;-><init>()V

    return-object v0
.end method