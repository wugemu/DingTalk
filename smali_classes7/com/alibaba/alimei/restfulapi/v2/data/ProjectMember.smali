.class public Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "ProjectMember.java"


# instance fields
.field private aliasEmail:Ljava/lang/String;

.field private displayName:Ljava/lang/String;

.field private valid:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;->valid:Z

    .line 16
    return-void
.end method


# virtual methods
.method public getAliasEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;->aliasEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;->valid:Z

    return v0
.end method

.method public setAliasEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "aliasEmail"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;->aliasEmail:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;->displayName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/ProjectMember;->valid:Z

    .line 35
    return-void
.end method
