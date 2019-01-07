.class public interface abstract Lcom/alibaba/wukong/auth/AuthInfo;
.super Ljava/lang/Object;
.source "AuthInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;
    }
.end annotation


# virtual methods
.method public abstract getDomain()Ljava/lang/String;
.end method

.method public abstract getMobile()Ljava/lang/String;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getOpenId()J
.end method

.method public abstract getStatus()Lcom/alibaba/wukong/auth/AuthInfo$AuthStatus;
.end method
