.class public interface abstract Lcom/alibaba/android/dingtalk/userbase/service/LoginIService;
.super Ljava/lang/Object;
.source "LoginIService.java"

# interfaces
.implements Lizm;


# annotations
.annotation runtime Lcom/laiwang/idl/AppName;
    value = "DD"
.end annotation


# virtual methods
.method public abstract acceptLicense(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract captchaGenSessionid(Ljava/lang/String;Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkFaceId(Ljava/lang/String;ILiyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkLicense(Ljava/lang/String;Ljava/lang/Integer;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkPhoneNumber(Lcfp;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfp;",
            "Liyv",
            "<",
            "Lcdb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract checkVerifyCode(Ljava/lang/String;Ljava/lang/String;ILiyv;)V
    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract faceIdCheckPwd(Ljava/lang/String;ILiyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract faceIdInit(Ljava/lang/String;Ljava/lang/String;ILiyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Liyv",
            "<",
            "Lcdl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract faceIdLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfo;",
            "Lcfw;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAuthSign(Ljava/lang/String;ILiyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getFaceId(Liyv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liyv",
            "<",
            "Lcdm;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getUpstreamToken(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcgb;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract login(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginByDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginBySelectUser(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginByTempToken(Lcfo;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcfw;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcfw;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loginByUic(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract needInit(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportForLost(Ljava/lang/String;Ljava/lang/String;Lcfw;Lcfo;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfw;",
            "Lcfo;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract reportForLost(Ljava/lang/String;Ljava/lang/String;Lcfw;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfw;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract sendSmsCode(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendVerifyCode(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Liyv",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract showUsersForVerify(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcge;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract simVerifyInit(Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/util/List",
            "<",
            "Lcfx;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract simVerifyLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfo;",
            "Lcfw;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract startUpstreamTokenLogin(Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract tokenLogin(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfw;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfw;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract tokenLogin(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract tokenLoginByThirdParty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfo;",
            "Lcfw;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract upstreamTokenLogin(Lcfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfw;Ljava/lang/String;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfw;",
            "Ljava/lang/String;",
            "Liyv",
            "<",
            "Lcee;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract verifyThirdPartyAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcfo;Lcfw;Liyv;)V
    .annotation runtime Lcom/laiwang/idl/AntRpcCache;
    .end annotation

    .annotation runtime Lcom/laiwang/idl/NoAuth;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcfo;",
            "Lcfw;",
            "Liyv",
            "<",
            "Lcga;",
            ">;)V"
        }
    .end annotation
.end method
