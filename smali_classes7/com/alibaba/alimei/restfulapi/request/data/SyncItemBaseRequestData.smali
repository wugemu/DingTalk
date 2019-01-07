.class public Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "SyncItemBaseRequestData.java"


# static fields
.field public static final DEFAULT_SYNCKEY:Ljava/lang/String; = "0"


# instance fields
.field public filterAccount:Ljava/lang/String;

.field public filterType:I

.field public folderAcl:Ljava/lang/String;

.field public folderId:Ljava/lang/String;

.field public folderType:I

.field public getSentStatus:Ljava/lang/Boolean;

.field public getUnreadCount:Z

.field public initTotal:Ljava/lang/Integer;

.field public oldestItemId:Ljava/lang/String;

.field public summarySize:I

.field public support:I

.field public syncKey:Ljava/lang/String;

.field public windowSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "0"

    invoke-direct {p0, v0}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;-><init>(Ljava/lang/String;)V

    .line 13
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->syncKey:Ljava/lang/String;

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->getUnreadCount:Z

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->setSyncKey(Ljava/lang/String;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->getUnreadCount:Z

    .line 21
    return-void
.end method


# virtual methods
.method public getFilterAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->filterAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->filterType:I

    return v0
.end method

.method public getFolderAcl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->folderAcl:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method public getFolderType()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->folderType:I

    return v0
.end method

.method public getGetSentStatus()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->getSentStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInitTotal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->initTotal:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOldestItemId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->oldestItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getSummarySize()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->summarySize:I

    return v0
.end method

.method public getSupport()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->support:I

    return v0
.end method

.method public getSyncKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->syncKey:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowSize()I
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->windowSize:I

    return v0
.end method

.method public isGetUnreadCount()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->getUnreadCount:Z

    return v0
.end method

.method public setFilterAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "filterAccount"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->filterAccount:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setFilterType(I)V
    .locals 0
    .param p1, "filterType"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->filterType:I

    .line 144
    return-void
.end method

.method public setFolderAcl(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderAcl"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->folderAcl:Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setFolderId(Ljava/lang/String;)V
    .locals 0
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->folderId:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setFolderType(I)V
    .locals 0
    .param p1, "folderType"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->folderType:I

    .line 136
    return-void
.end method

.method public setGetSentStatus(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "getSentStatus"    # Ljava/lang/Boolean;

    .prologue
    .line 207
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->getSentStatus:Ljava/lang/Boolean;

    .line 208
    return-void
.end method

.method public setGetUnreadCount(Z)V
    .locals 0
    .param p1, "getUnreadCount"    # Z

    .prologue
    .line 215
    iput-boolean p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->getUnreadCount:Z

    .line 216
    return-void
.end method

.method public setInitTotal(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "initTotal"    # Ljava/lang/Integer;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->initTotal:Ljava/lang/Integer;

    .line 200
    return-void
.end method

.method public setOldestItemId(Ljava/lang/String;)V
    .locals 0
    .param p1, "oldestItemId"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->oldestItemId:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setSummarySize(I)V
    .locals 0
    .param p1, "summarySize"    # I

    .prologue
    .line 183
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->summarySize:I

    .line 184
    return-void
.end method

.method public setSupport(I)V
    .locals 0
    .param p1, "support"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->support:I

    .line 176
    return-void
.end method

.method public setSyncKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->syncKey:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->syncKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->syncKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->syncKey:Ljava/lang/String;

    .line 116
    :cond_1
    return-void
.end method

.method public setSyncKeyWithoutDefaultValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "syncKey"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->syncKey:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setWindowSize(I)V
    .locals 0
    .param p1, "windowSize"    # I

    .prologue
    .line 167
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/SyncItemBaseRequestData;->windowSize:I

    .line 168
    return-void
.end method
