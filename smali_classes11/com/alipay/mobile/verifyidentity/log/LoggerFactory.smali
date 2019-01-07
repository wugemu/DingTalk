.class public Lcom/alipay/mobile/verifyidentity/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
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

.method public static getTraceLogger()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;->getInstance()Lcom/alipay/mobile/verifyidentity/log/VITraceLogger;

    move-result-object v0

    return-object v0
.end method
