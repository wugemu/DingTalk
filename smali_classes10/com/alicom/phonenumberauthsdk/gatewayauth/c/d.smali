.class public final Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;
.super Ljava/lang/Object;
.source "SDKLogger.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method public static a(Z)V
    .locals 0

    .prologue
    .line 15
    sput-boolean p0, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->a:Z

    .line 16
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->a:Z

    if-eqz v0, :cond_0

    .line 32
    const-string/jumbo v0, "AliAuthSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/alicom/phonenumberauthsdk/gatewayauth/c/d;->a:Z

    if-eqz v0, :cond_0

    .line 38
    const-string/jumbo v0, "AliAuthSDK"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
