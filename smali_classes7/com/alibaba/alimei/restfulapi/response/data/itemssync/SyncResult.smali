.class public Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private folderId:Ljava/lang/String;

.field private folderType:I

.field private forceFullSync:Z

.field private more:Z

.field private oldestItemId:Ljava/lang/String;

.field private syncKey:Ljava/lang/String;

.field private unreadCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->folderType:I

    return v0
.end method

.method public getOldestItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->oldestItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->syncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .prologue
    .line 129
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->unreadCount:I

    return v0
.end method

.method public isForceFullSync()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->forceFullSync:Z

    return v0
.end method

.method public isMore()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->more:Z

    return v0
.end method

.method public setErrorCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->errorCode:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->folderId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setFolderType(I)V
    .locals 0
    .param p1, "folderType"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->folderType:I

    .line 81
    return-void
.end method

.method public setForceFullSync(Z)V
    .locals 0
    .param p1, "forceFullSync"    # Z

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->forceFullSync:Z

    .line 118
    return-void
.end method

.method public setMore(Z)V
    .locals 0
    .param p1, "more"    # Z

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->more:Z

    .line 93
    return-void
.end method

.method public setOldestItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldestItemId"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->oldestItemId:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->syncKey:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setUnreadCount(I)V
    .locals 0
    .param p1, "unreadCount"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncResult;->unreadCount:I

    .line 134
    return-void
.end method
