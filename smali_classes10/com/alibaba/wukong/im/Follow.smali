.class public interface abstract Lcom/alibaba/wukong/im/Follow;
.super Ljava/lang/Object;
.source "Follow.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/Follow$FollowStatus;
    }
.end annotation


# virtual methods
.method public abstract getLastModify()J
.end method

.method public abstract getOpenId()J
.end method

.method public abstract getStatus()Lcom/alibaba/wukong/im/Follow$FollowStatus;
.end method

.method public abstract getTag()J
.end method
