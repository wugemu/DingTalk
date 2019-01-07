.class public Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;
.super Ljava/lang/Object;
.source "InvitationUnit.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DEST_QQ:I = 0x2

.field public static final DEST_WECHAT:I = 0x1


# instance fields
.field private dest:I

.field private icon:I

.field private pkgName:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method public getDest()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->dest:I

    return v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->icon:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setDest(I)V
    .locals 0
    .param p1, "dest"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->dest:I

    .line 52
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->icon:I

    .line 28
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->pkgName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/alibaba/dingtalk/sharebase/invitation/InvitationUnit;->title:Ljava/lang/String;

    .line 36
    return-void
.end method
