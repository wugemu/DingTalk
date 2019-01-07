.class public Lcom/ut/mini/core/sign/UTSecuritySDKRequestAuthentication;
.super Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;
.source "UTSecuritySDKRequestAuthentication.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "appkey"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string/jumbo v0, ""

    invoke-direct {p0, p1, v0}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "appkey"    # Ljava/lang/String;
    .param p2, "authCode"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/ut/mini/core/sign/UTSecurityThridRequestAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method
