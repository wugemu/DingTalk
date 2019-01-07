.class public Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "DentryCopyItem.java"


# instance fields
.field private authFixPath:Z

.field private autoRename:Z

.field private srcPath:Ljava/lang/String;

.field private targetPath:Ljava/lang/String;

.field private targetSpaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    return-void
.end method


# virtual methods
.method public getSrcPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->srcPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->targetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->targetSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public isAuthFixPath()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->authFixPath:Z

    return v0
.end method

.method public isAutoRename()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->autoRename:Z

    return v0
.end method

.method public setAuthFixPath(Z)V
    .locals 0
    .param p1, "authFixPath"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->authFixPath:Z

    .line 74
    return-void
.end method

.method public setAutoRename(Z)V
    .locals 0
    .param p1, "autoRename"    # Z

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->autoRename:Z

    .line 66
    return-void
.end method

.method public setSrcPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "srcPath"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->srcPath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetPath"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->targetPath:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTargetSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetSpaceId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryCopyItem;->targetSpaceId:Ljava/lang/String;

    .line 58
    return-void
.end method
