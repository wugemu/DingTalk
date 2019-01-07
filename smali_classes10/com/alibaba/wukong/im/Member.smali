.class public interface abstract Lcom/alibaba/wukong/im/Member;
.super Ljava/lang/Object;
.source "Member.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/im/Member$RoleType;
    }
.end annotation


# virtual methods
.method public abstract roleType()Lcom/alibaba/wukong/im/Member$RoleType;
.end method

.method public abstract user()Lcom/alibaba/wukong/im/User;
.end method
