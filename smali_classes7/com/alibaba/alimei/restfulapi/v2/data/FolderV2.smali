.class public Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;
.super Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;
.source "FolderV2.java"


# instance fields
.field private createTime:J

.field private id:Ljava/lang/String;

.field private isSystem:Z

.field private itemsTotal:I

.field private modifiedTime:J

.field private name:Ljava/lang/String;

.field private parentId:Ljava/lang/String;

.field private storageUsed:J

.field private unreadItemsTotal:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/v2/data/ItemV2;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public getCreateTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->createTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getItemsTotal()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->itemsTotal:I

    return v0
.end method

.method public getModifiedTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->modifiedTime:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->parentId:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageUsed()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->storageUsed:J

    return-wide v0
.end method

.method public getUnreadItemsTotal()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->unreadItemsTotal:I

    return v0
.end method

.method public isSystem()Z
    .locals 1

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->isSystem:Z

    return v0
.end method

.method public setCreateTime(J)V
    .locals 1
    .param p1, "createTime"    # J

    .prologue
    .line 94
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->createTime:J

    .line 95
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->id:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setItemsTotal(I)V
    .locals 0
    .param p1, "itemsTotal"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->itemsTotal:I

    .line 111
    return-void
.end method

.method public setModifiedTime(J)V
    .locals 1
    .param p1, "modifiedTime"    # J

    .prologue
    .line 102
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->modifiedTime:J

    .line 103
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setParentId(Ljava/lang/String;)V
    .locals 0
    .param p1, "parentId"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->parentId:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setStorageUsed(J)V
    .locals 1
    .param p1, "storageUsed"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->storageUsed:J

    .line 87
    return-void
.end method

.method public setSystem(Z)V
    .locals 0
    .param p1, "isSystem"    # Z

    .prologue
    .line 70
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->isSystem:Z

    .line 71
    return-void
.end method

.method public setUnreadItemsTotal(I)V
    .locals 0
    .param p1, "unreadItemsTotal"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/v2/data/FolderV2;->unreadItemsTotal:I

    .line 79
    return-void
.end method
