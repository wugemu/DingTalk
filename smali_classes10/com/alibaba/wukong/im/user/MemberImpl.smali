.class public Lcom/alibaba/wukong/im/user/MemberImpl;
.super Ljava/lang/Object;
.source "MemberImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/Member;


# static fields
.field private static final serialVersionUID:J = -0xcf317b8dd6291f7L


# instance fields
.field public mRoleType:Lcom/alibaba/wukong/im/Member$RoleType;

.field public mUser:Lcom/alibaba/wukong/im/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public roleType()Lcom/alibaba/wukong/im/Member$RoleType;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/MemberImpl;->mRoleType:Lcom/alibaba/wukong/im/Member$RoleType;

    return-object v0
.end method

.method public user()Lcom/alibaba/wukong/im/User;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/wukong/im/user/MemberImpl;->mUser:Lcom/alibaba/wukong/im/User;

    return-object v0
.end method
