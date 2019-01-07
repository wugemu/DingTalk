.class public interface abstract Lcom/alibaba/wukong/im/Blacklist;
.super Ljava/lang/Object;
.source "Blacklist.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
    }
.end annotation


# virtual methods
.method public abstract getLastModify()J
.end method

.method public abstract getOpenId()J
.end method

.method public abstract getStatus()Lcom/alibaba/wukong/im/Blacklist$BlacklistStatus;
.end method
