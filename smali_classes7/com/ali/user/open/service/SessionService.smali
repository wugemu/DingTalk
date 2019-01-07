.class public interface abstract Lcom/ali/user/open/service/SessionService;
.super Ljava/lang/Object;
.source "SessionService.java"


# virtual methods
.method public abstract getSession()Lcom/ali/user/open/session/Session;
.end method

.method public abstract isSessionValid()Z
.end method

.method public abstract logout()Lcom/ali/user/open/core/model/ResultCode;
.end method

.method public abstract refreshCookie(Ljava/lang/String;Lcom/ali/user/open/core/model/LoginReturnData;)V
.end method

.method public abstract refreshWhenLogin(Lcom/ali/user/open/core/model/LoginReturnData;)V
.end method
