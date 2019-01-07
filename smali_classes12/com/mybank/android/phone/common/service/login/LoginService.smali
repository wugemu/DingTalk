.class public abstract Lcom/mybank/android/phone/common/service/login/LoginService;
.super Lcom/mybank/android/phone/common/service/api/CommonService;
.source "LoginService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mybank/android/phone/common/service/login/LoginService$LoginConstants;,
        Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/mybank/android/phone/common/service/api/CommonService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract authLogin(Landroid/content/Context;Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
.end method

.method public abstract autoLogin(Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
.end method

.method public abstract clearSession()V
.end method

.method public abstract doCallback(Landroid/os/Bundle;)V
.end method

.method public abstract fakeLogin(Ljava/lang/String;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
.end method

.method public abstract getAccountInfo()Lcom/mybank/android/phone/common/service/login/AccountInfo;
.end method

.method public abstract login(Landroid/content/Context;Landroid/os/Bundle;Lcom/mybank/android/phone/common/service/login/LoginCallback;)V
.end method

.method public abstract logout(Lcom/mybank/android/phone/common/service/login/LoginService$LoginOutCallback;)V
.end method

.method public abstract syncAutoLogin(Landroid/content/Context;)Z
.end method
