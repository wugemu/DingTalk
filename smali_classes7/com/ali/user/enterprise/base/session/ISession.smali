.class public interface abstract Lcom/ali/user/enterprise/base/session/ISession;
.super Ljava/lang/Object;
.source "ISession.java"


# virtual methods
.method public abstract appendEventTrace(Ljava/lang/String;)V
.end method

.method public abstract checkSessionValid()Z
.end method

.method public abstract clearAutoLoginInfo()V
.end method

.method public abstract clearCookieManager()V
.end method

.method public abstract clearSessionInfo()V
.end method

.method public abstract clearSessionOnlyCookie()V
.end method

.method public abstract getBizType()Ljava/lang/String;
.end method

.method public abstract getCorpId()Ljava/lang/String;
.end method

.method public abstract getDisplayNick()Ljava/lang/String;
.end method

.method public abstract getEcode()Ljava/lang/String;
.end method

.method public abstract getEmail()Ljava/lang/String;
.end method

.method public abstract getEventTrace()Ljava/lang/String;
.end method

.method public abstract getExtJson()Ljava/lang/String;
.end method

.method public abstract getExtraMap()Ljava/lang/String;
.end method

.method public abstract getHavanaSsoTokenExpiredTime()J
.end method

.method public abstract getHeadPicLink()Ljava/lang/String;
.end method

.method public abstract getInjectCookieCount()I
.end method

.method public abstract getLoginPhone()Ljava/lang/String;
.end method

.method public abstract getLoginSite()I
.end method

.method public abstract getLoginTime()J
.end method

.method public abstract getLoginToken()Ljava/lang/String;
.end method

.method public abstract getNick()Ljava/lang/String;
.end method

.method public abstract getOldNick()Ljava/lang/String;
.end method

.method public abstract getOldSid()Ljava/lang/String;
.end method

.method public abstract getOldUserId()Ljava/lang/String;
.end method

.method public abstract getOneTimeToken()Ljava/lang/String;
.end method

.method public abstract getSessionExpiredTime()J
.end method

.method public abstract getSid()Ljava/lang/String;
.end method

.method public abstract getSsoToken()Ljava/lang/String;
.end method

.method public abstract getUidDigest()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getUserName()Ljava/lang/String;
.end method

.method public abstract injectCookie([Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method public abstract injectExternalCookies([Ljava/lang/String;)V
.end method

.method public abstract isCommentTokenUsed()Z
.end method

.method public abstract onLoginSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;JJLjava/lang/String;)V
.end method

.method public abstract recoverCookie()Z
.end method

.method public abstract removeEventTrace()V
.end method

.method public abstract sendClearSessionBroadcast()Z
.end method

.method public abstract setBizType(Ljava/lang/String;)V
.end method

.method public abstract setCommentTokenUsed(Z)V
.end method

.method public abstract setCorpId(Ljava/lang/String;)V
.end method

.method public abstract setDisplayNick(Ljava/lang/String;)V
.end method

.method public abstract setEcode(Ljava/lang/String;)V
.end method

.method public abstract setEmail(Ljava/lang/String;)V
.end method

.method public abstract setExtJson(Ljava/lang/String;)V
.end method

.method public abstract setExtraMap(Ljava/lang/String;)V
.end method

.method public abstract setHavanaSsoTokenExpiredTime(J)V
.end method

.method public abstract setHeadPicLink(Ljava/lang/String;)V
.end method

.method public abstract setInjectCookieCount(I)V
.end method

.method public abstract setLoginSite(I)V
.end method

.method public abstract setLoginTime(J)V
.end method

.method public abstract setLoginToken(Ljava/lang/String;)V
.end method

.method public abstract setNick(Ljava/lang/String;)V
.end method

.method public abstract setOneTimeToken(Ljava/lang/String;)V
.end method

.method public abstract setSessionExpiredTime(J)V
.end method

.method public abstract setSid(Ljava/lang/String;)V
.end method

.method public abstract setSsoToken(Ljava/lang/String;)V
.end method

.method public abstract setUidDigest(Ljava/lang/String;)V
.end method

.method public abstract setUserId(Ljava/lang/String;)V
.end method

.method public abstract setUserName(Ljava/lang/String;)V
.end method
