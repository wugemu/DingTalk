.class public Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "DentryTransferItem.java"


# instance fields
.field private autoRename:Z

.field private cut:Z

.field private overwrite:Z

.field private srcPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private srcSpaceId:Ljava/lang/String;

.field private targetFolderPath:Ljava/lang/String;

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
.method public getSrcPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->srcPaths:Ljava/util/List;

    return-object v0
.end method

.method public getSrcSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->srcSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetFolderPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->targetFolderPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSpaceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->targetSpaceId:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoRename()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->autoRename:Z

    return v0
.end method

.method public isCut()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->cut:Z

    return v0
.end method

.method public isOverwrite()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->overwrite:Z

    return v0
.end method

.method public setAutoRename(Z)V
    .locals 0
    .param p1, "autoRename"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->autoRename:Z

    .line 82
    return-void
.end method

.method public setCut(Z)V
    .locals 0
    .param p1, "cut"    # Z

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->cut:Z

    .line 74
    return-void
.end method

.method public setOverwrite(Z)V
    .locals 0
    .param p1, "overwrite"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->overwrite:Z

    .line 90
    return-void
.end method

.method public setSrcPaths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 97
    .local p1, "srcPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->srcPaths:Ljava/util/List;

    .line 98
    return-void
.end method

.method public setSrcSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "srcSpaceId"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->srcSpaceId:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setTargetFolderPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetFolderPath"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->targetFolderPath:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setTargetSpaceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetSpaceId"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/request/dentry/DentryTransferItem;->targetSpaceId:Ljava/lang/String;

    .line 58
    return-void
.end method
