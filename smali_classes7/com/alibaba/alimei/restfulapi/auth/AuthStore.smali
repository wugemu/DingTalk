.class public interface abstract Lcom/alibaba/alimei/restfulapi/auth/AuthStore;
.super Ljava/lang/Object;
.source "AuthStore.java"


# virtual methods
.method public abstract getAccessToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getDeviceId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRefreshToken(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract storeAuth(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/AuthInfo;)Ljava/lang/Object;
.end method

.method public abstract storeRefreshAuth(Ljava/lang/String;Lcom/alibaba/alimei/restfulapi/auth/RefreshAuthInfo;)Ljava/lang/Object;
.end method
